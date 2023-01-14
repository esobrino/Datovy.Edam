using System;
using System.Text;
using System.Collections.Generic;

// -----------------------------------------------------------------------------
using Edam.InOut;
using Edam.Application;
using Edam.Data.Asset;
using Edam.Data.AssetManagement;
using Edam.DataObjects.DataCodes;
using Edam.Diagnostics;
using Edam.Text;
using Edam.Data.AssetUseCases;

namespace Edam.Data.AssetSchema
{

    public class AssetReportOptions
   {
      public bool OnlyUseCaseEntries { get; set; }
      public AssetReportOptions()
      {
         OnlyUseCaseEntries = false;
      }
   }

   public class AssetReportBuilder
   {

      #region -- 1.00 - Properties and Fields

      private const string CLASS_NAME = "AssetReportBuilder";
      private const string TYPE_OBJECT = "object";
      private const string TYPE_TYPE = "type";
      private const string TYPE_ROOT = "root";
      private const string ENUM = "enumerator";
      private const string DATETIME_FORMAT = "yyyy-mm-dd HH:mm:ss";
      private const string ACTIVE = "Active";

      public AssetReportOptions Options = new AssetReportOptions();

      #endregion
      #region -- 1.20 - Constructor / Destructure

      public AssetReportBuilder()
      {
      }

      #endregion
      #region -- 4.00 - Report Builder Support

      public static string GetDateTimeText(DateTime time)
      {
         return time.ToString(DATETIME_FORMAT);
      }

      /// <summary>
      /// Prepare default row header...
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="count"></param>
      /// <param name="statusCode"></param>
      /// <param name="timestamp"></param>
      private static void AddRowHeader(
         ITableBuilder builder, int count, 
         string statusCode = null, DateTime? timestamp = null)
      {
         statusCode = statusCode ?? ACTIVE;
         timestamp = timestamp == null ? DateTime.Now : timestamp.Value;

         // write row cells
         builder.AppendRowCell(count.ToString());
         builder.AppendRowCell(statusCode);
         builder.AppendRowCell(GetDateTimeText(timestamp.Value));
      }

      /// <summary>
      /// Get builder base on file extention.
      /// </summary>
      /// <param name="file">file information</param>
      /// <returns>return instance of ITableBuilder</returns>
      public static ITableBuilder GetBuilder(InOut.FileInfo file)
      {
         string func = "AssetData:GetBuilder::";
         ITableBuilder builder = null;
         if (String.IsNullOrEmpty(file.Extension))
         {
            throw new Exception(func + " file extention not provided!");
         }
         if (InOut.FileExtension.IsCsv(file.Extension))
         {
            builder = new TableBuilder
            {
               Type = TableBuilderType.CSV
            };
         }
         else if (InOut.FileExtension.IsOpenXml(file.Extension))
         {
            builder = AppAssembly.FetchInstance<ITableBuilder>(
               AssetResourceHelper.ASSET_ROW_BUILDER_NAME);
            builder.Type = TableBuilderType.OpenXml;

            // open the file to start writing the report...
            builder.Open(file.Full);
         }
         if (builder == null)
         {
            throw new Exception(func + " Could't instantiate builder (" +
               file.Extension + ")");
         }
         return builder;
      }

      #endregion
      #region -- 4.00 - Support Methods

      /// <summary>
      /// 
      /// </summary>
      /// <param name="builder"></param>
      public void AddDefaultColumns(ITableBuilder builder, bool hidden = true)
      {
         // create hidden columns: IndexNo; Status; LastUpdateDate;
         builder.AppendColumn(1, hidden, true);
         builder.AppendColumn(2, hidden, true);
         builder.AppendColumn(3, hidden, true);
      }

      /// <summary>
      /// Append Row Cell
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="value"></param>
      private static void AppendRowCell(ITableBuilder builder, string value)
      {
         if (String.IsNullOrEmpty(value))
            builder.AppendRowCell(String.Empty);
         else
            builder.AppendRowCell(value);
      }

      /// <summary>
      /// Append end of row to move to next row...
      /// </summary>
      /// <param name="builder"></param>
      private static void AppendEndOfRow(ITableBuilder builder)
      {
         // needed to move to next row
         builder.AppendRowCellLast();
      }

      #endregion
      #region -- 4.00 - Main Workbook Support

      /// <summary>
      /// Append table cells.
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="asset"></param>
      private static void AppendTableCells(ITableBuilder builder, IAssetElement asset)
      {
         string etype = asset.ElementType.ToString();
         string value = String.IsNullOrWhiteSpace(asset.DefaultValue) ?
            String.Empty : asset.DefaultValue;
         string typeName = asset.DataType ?? asset.TypeName;
         string occurs = asset.Occurs.Replace(" ", "");

         string entity = asset.EntityQualifiedName == null ? String.Empty :
            asset.EntityQualifiedName.Name;
         string element = (asset.ElementType == ElementType.attribute ?
            "@" : String.Empty) + asset.ElementQualifiedName.Name;

         // get annotation
         string annotation = AssetDataElement.GetAnnotattion(asset);

         // set row style...
         UInt32 styleNo;
         if (etype.ToLower() == TYPE_TYPE || etype.ToLower() == TYPE_ROOT)
         {
            styleNo = (UInt32)TableRowStyle.Fill4Border1Font12;
         }
         else if (etype.ToLower() == ENUM)
         {
            styleNo = (UInt32)TableRowStyle.Fill1Border1Font12;
         }
         else
            styleNo = (UInt32)TableRowStyle.Fill1Font12;

         builder.SetStyleNo(styleNo);

         // write hidden cells
         // (asset: 0 is eq to a null asset; status: 0 eq active)

         if (!asset.AssetStatus.HasValue)
            asset.AssetStatus = 1;
         if (!asset.LastUpdateDate.HasValue)
            asset.LastUpdateDate = DateTime.UtcNow;

         builder.AppendRowCell(asset.ElementNo.ToString());
         builder.AppendRowCell(asset.AssetStatus?.ToString());
         builder.AppendRowCell(asset.LastUpdateDate?.ToString());

         // write row cells
         builder.AppendRowCell(entity);                       // Entity
         builder.AppendRowCell(element);                      // Element
         builder.AppendRowCell(value);                        // Value (default)
         builder.AppendRowCell(typeName);                     // Type
         builder.AppendRowCell(asset.ElementType.ToString()); // ElementType
         builder.AppendRowCell((asset.Length.HasValue ?
            asset.Length.Value.ToString() : String.Empty));   // Length
         builder.AppendRowCell(occurs);                       // 1:1
         builder.AppendRowCell(asset.CommentText);            // Data Owner
         builder.AppendRowCell(annotation);
         builder.AppendRowCell(asset.SampleValue);            // Liu, Jin
         builder.AppendRowCell(asset.Namespace);              // (some URI)
         builder.AppendRowCell(asset.GetFullPath());
      }

      #endregion
      #region -- 4.00 - Use Case Workbook Support

      /// <summary>
      /// Append Use Cases...
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="items"></param>
      /// <param name="columns"></param>
      private static void AppendUseCases(ITableBuilder builder,
         List<AssetUseCaseElement> items, AssetColumnsInfo columns)
      {
         // add use cases info targeting specific columns already assigned...
         if (items != null)
         {
            for (var i = 0; i < columns.Headers.Count; i++)
            {
               var f = items.Find((x) => x.Name == columns.Headers[i].Name);
               if (f == null)
               {
                  // the row data-element is not in this use-case (column)...
                  builder.AppendRowCell(String.Empty);
               }
               else
               {
                  builder.AppendRowCell(
                     String.IsNullOrWhiteSpace(f.SampleValue) ?
                        "Y" : f.SampleValue);
               }
            }
         }
      }

      /// <summary>
      /// Append Use Case Asset Mappings and Processing instructions if any...
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="useCaseElement"></param>
      public static void AppendUseCaseProcessingInstructions(
         ITableBuilder builder, AssetDataElement element,
         AssetColumnsInfo columns)
      {
         if (element.ProcessInstructionsBag == null)
         {
            for(var i=0; i<columns.Headers.Count; i++)
            {
               AppendRowCell(builder, null);
            }
            return;
         }

         // write columns in the order specified by the columns 
         foreach (var col in columns.Headers)
         {
            foreach(var c in element.ProcessInstructionsBag.Items)
            {
               if (c.Column.Name == col.Name)
               {
                  AppendRowCell(builder, c.Value);
                  break;
               }
            }
         }
      }

      /// <summary>
      /// Append Use Cases into the related TAB
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="useCasesItems"></param>
      private void AppendUseCases(ITableBuilder builder, AssetReportInfo report)
      {
         AddDefaultColumns(builder);
         builder.AddWorksheet("Use Cases");

         string header = GetMainHeader() + ",UseCase";
         AppendMainHeader(builder, report.UseCaseColumns, header);

         // write data
         foreach (var c in report.UseCases)
         {
            foreach (var i in c.Items)
            {
               AppendTableCells(builder, i);
               AppendRowCell(builder, i.UseCaseName);
               AppendUseCaseProcessingInstructions(
                  builder, i, report.UseCaseColumns);
               AppendEndOfRow(builder);
            }
         }
      }

      #endregion
      #region -- 4.00 - Prepare Namespaces Tab

      /// <summary>
      /// Get Header...
      /// </summary>
      /// <returns></returns>
      private static string GetNamespacesHeader()
      {
         // prepare headers...
         return "NamespaceNo,NamespaceStatus,LastUpdateDate,Prefix,Namespace";
      }

      /// <summary>
      /// Append table cells.
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="asset"></param>
      private static void AppendTableCells(
         ITableBuilder builder, NamespaceInfo item, 
         int count, DateTime timestamp)
      {
         // set row style...
         UInt32 styleNo = (UInt32)TableRowStyle.Fill1Font12;

         builder.SetStyleNo(styleNo);

         // write row cells
         AddRowHeader(builder, count, null, timestamp);

         builder.AppendRowCell(item.Prefix);
         builder.AppendRowCell(item.Uri.OriginalString);
      }

      /// <summary>
      /// Prepare Namespaces TAB
      /// </summary>
      /// <param name="items"></param>
      /// <param name="builder"></param>
      /// <returns></returns>
      public IResultsLog AppendNamespaces(
         ITableBuilder builder, List<NamespaceInfo> items)
      {
         IResultsLog results = new ResultLog();

         //AddDefaultColumns(builder);
         //builder.AppendColumn(4, true, true);
         //builder.AppendColumn(5, true, true);

         builder.AddWorksheet("Namespaces");
         AppendHeader(builder, GetNamespacesHeader());

         // write data
         DateTime time = DateTime.UtcNow;
         int count = 0;
         foreach (var i in items)
         {
            AppendTableCells(builder, i, count, time);
            AppendEndOfRow(builder);
            count++;
         }

         return results;
      }

      #endregion
      #region -- 4.00 - Prepare Code Set Tabs

      /// <summary>
      /// Get Header...
      /// </summary>
      /// <returns></returns>
      private static string GetCodeSetHeader()
      {
         // prepare headers...
         return "CodeNo,CodeStatus,LastUpdateDate,CodeID,Description";
      }

      /// <summary>
      /// Append table cells.
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="asset"></param>
      private static void AppendTableCells(
         ITableBuilder builder, DataCodeInfo item, 
         int count, DateTime timestamp)
      {
         // set row style...
         UInt32 styleNo = (UInt32)TableRowStyle.Fill1Font12;

         builder.SetStyleNo(styleNo);

         // write row cells
         AddRowHeader(builder, count, null, timestamp);

         builder.AppendRowCell(item.CodeId);
         builder.AppendRowCell(item.Description);
      }

      private IResultsLog PrepareCodeSet(ITableBuilder builder, 
         AssetDataElement element)
      {
         IResultsLog results = new ResultLog();
         List<DataCodeInfo> items = element.EnumItems;
         if (items == null)
         {
            return results;
         }

         //AddDefaultColumns(builder);
         //builder.AppendColumn(4, false, true);
         //builder.AppendColumn(5, false, true);

         builder.AddWorksheet(element.ElementQualifiedName.OriginalName);
         AppendHeader(builder, GetCodeSetHeader());

         // write data
         DateTime timestamp = DateTime.Now;
         int count = 0;
         foreach (var i in items)
         {
            AppendTableCells(builder, i, count, timestamp);
            AppendEndOfRow(builder);
            count++;
         }

         return results;
      }

      /// <summary>
      /// 
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="report"></param>
      private void AppendCodeSetItems(
         ITableBuilder builder, List<AssetDataElement> items)
      {
         // write data
         foreach (var i in items)
         {
            PrepareCodeSet(builder, i);
         }
      }

      #endregion
      #region -- 4.00 - Prepare Code Set Summary Tab

      /// <summary>
      /// Get Header...
      /// </summary>
      /// <returns></returns>
      private static string GetCodeSetSummaryHeader()
      {
         // prepare headers...
         return "CodeSetNo,CodeSetStatus,LastUpdateDate,CodeSetUri,CodeSetName,RowCount";
      }

      /// <summary>
      /// Append table cells.
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="asset"></param>
      private static void AppendTableCodeSetSummaryCells(
         ITableBuilder builder, AssetDataElement element, 
         int count, DateTime timestamp)
      {
         // set row style...
         UInt32 styleNo = (UInt32)TableRowStyle.Fill1Font12;

         builder.SetStyleNo(styleNo);

         // write row cells
         AddRowHeader(builder, count, null, timestamp);

         builder.AppendRowCell(element.Namespace);
         builder.AppendRowCell(element.ElementQualifiedName.OriginalName);
         builder.AppendRowCell(element.EnumCount.ToString());
      }

      private IResultsLog AppendCodeSetSummary(ITableBuilder builder,
         List<AssetDataElement> items)
      {
         IResultsLog results = new ResultLog();

         //AddDefaultColumns(builder);
         //builder.AppendColumn(4, false, true);
         //builder.AppendColumn(5, false, true);

         builder.AddWorksheet("Code Sets");
         AppendHeader(builder, GetCodeSetSummaryHeader());

         // write data
         int count = 0;
         DateTime timestamp = DateTime.Now;
         foreach (var i in items)
         {
            AppendTableCodeSetSummaryCells(builder, i, count, timestamp);
            AppendEndOfRow(builder);
            count++;
         }

         return results;
      }

      #endregion
      #region -- 4.00 - Report Header Support

      /// <summary>
      /// Get Header...
      /// </summary>
      /// <returns></returns>
      private static string GetMainHeader()
      {
         // prepare headers...
         return "AssetNo,AssetStatus,LastUpdateDate," +
            "Entity,Element,Value,Type,ElementType,Length,Occurs,Comment," +
            "Annotation,Sample,Namespace,FullPath";
      }

      /// <summary>
      /// Append Header
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="items">comma separated header titles</param>
      private static void AppendHeader(ITableBuilder builder, string items)
      {
         //System.Text.StringBuilder sb = new StringBuilder();
         // write header - light blue
         builder.AppendRow(items,
            styleNo: (UInt32)TableRowStyle.Fill3Border1Font14);
      }

      /// <summary>
      /// Append Header
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="columns"></param>
      private static void AppendMainHeader(ITableBuilder builder,
         AssetColumnsInfo columns, string headerText = null)
      {
         string header = String.IsNullOrWhiteSpace(headerText) ?
            GetMainHeader() : headerText;

         // add additional columns to append in each row
         StringBuilder sb = new StringBuilder();
         foreach (var c in columns.Headers)
         {
            sb.Append("," + c.Name);
         }
         header += sb.ToString();

         AppendHeader(builder, header);
      }

      #endregion
      #region -- 4.00 - Workbook / Worksheet Support

      /// <summary>
      /// Append Asset Items under the "Dictionary" Tab.
      /// </summary>
      /// <param name="builder">instance of table builder</param>
      /// <param name="report">report information</param>
      private void AppendAssetItems(
         ITableBuilder builder, AssetReportInfo report)
      {
         AddDefaultColumns(builder);
         builder.AddWorksheet("Dictionary");
         AppendMainHeader(builder, report.AssetCustomColumns);

         // prepare Code Items
         if (report.CodeSetItems == null)
         {
            report.CodeSetItems = new List<AssetDataElement>();
         }
         report.CodeSetItems.Clear();

         // write data
         foreach (var i in report.Items)
         {
            AppendTableCells(builder, i.Item);
            AppendUseCases(builder, i.Elements, report.AssetCustomColumns);
            AppendEndOfRow(builder);

            if (i.Item.ElementType == ElementType.enumerator)
            {
               report.CodeSetItems.Add(i.Item);
            }
         }
      }

      /// <summary>
      /// Given file details write 
      /// </summary>
      /// <param name="file"></param>
      /// <returns></returns>
      public String ToWorkbookFile(InOut.FileInfo file, AssetReportInfo report)
         //List<NamespaceInfo> namespaces, List<AssetItemUseCase<IAsset>> items,
         //AssetColumnInfo columns, List<AssetUseCaseElement> useCasesItems)
      {
         String func = "ToWorkbookFile";
         if (String.IsNullOrWhiteSpace(file.Path))
         {
            throw new Exception(
               CLASS_NAME + "." + func + ": File Path Expected");
         }

         ITableBuilder builder = GetBuilder(file);
         builder.Name = "Dictionary";

         // add Use Cases
         AppendUseCases(builder, report);

         // add Dictionary
         AppendAssetItems(builder, report);

         // add Namespaces (TAB) as needed
         //if (report.PrepareNamespacesTab)
         {
            AppendNamespaces(builder, report.Namespaces);
         }

         // add Enum Summary (TAB) as needed
         //if (report.PrepareEnumSummaryTab)
         {
            AppendCodeSetSummary(builder, report.CodeSetItems);
         }

         // add Code Sets (TAB[s]) as needed
         //if (report.PrepareEnumTabs)
         {
            AppendCodeSetItems(builder, report.CodeSetItems);
         }

         String data = null;
         if (builder.Type == TableBuilderType.CSV)
         {
            data = builder.ToString();
            System.IO.File.WriteAllText(file.Path, data);
         }
         else if (builder.Type == TableBuilderType.OpenXml)
         {
            data = builder.ToString();
            builder.Close();
         }

         return data;
      }

      #endregion

   }

}

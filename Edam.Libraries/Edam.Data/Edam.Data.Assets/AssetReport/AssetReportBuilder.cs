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
using Edam.Data.AssetSchema;

namespace Edam.Data.AssetReport
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
      public static ITableBuilder GetBuilder(FileInfo file)
      {
         string func = "AssetData:GetBuilder::";
         ITableBuilder builder = null;
         if (string.IsNullOrEmpty(file.Extension))
         {
            throw new Exception(func + " file extention not provided!");
         }
         if (FileExtension.IsCsv(file.Extension))
         {
            builder = new TableBuilder
            {
               Type = TableBuilderType.CSV
            };
         }
         else if (FileExtension.IsOpenXml(file.Extension))
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
         builder.AddColumns(hidden: hidden, count: 3);
      }

      #endregion
      #region -- 4.00 - Main Workbook Support

      /// <summary>
      /// Append table cells.
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="asset"></param>
      public static void AppendTableCells(
         ITableBuilder builder, IAssetElement asset)
      {
         string etype = asset.ElementType.ToString();
         string value = string.IsNullOrWhiteSpace(asset.DefaultValue) ?
            string.Empty : asset.DefaultValue;
         string typeName = asset.DataType ?? asset.TypeName;
         string occurs = asset.Occurs.Replace(" ", "");

         string entity = asset.EntityQualifiedName == null ? string.Empty :
            asset.EntityQualifiedName.Name;
         string element = (asset.ElementType == ElementType.attribute ?
            "@" : string.Empty) + asset.ElementQualifiedName.Name;

         // get annotation
         string annotation = AssetDataElement.GetAnnotattion(asset);

         // set row style...
         uint styleNo;
         if (etype.ToLower() == TYPE_TYPE || etype.ToLower() == TYPE_ROOT)
         {
            styleNo = (uint)TableRowStyle.Fill4Border1Font12;
         }
         else if (etype.ToLower() == ENUM)
         {
            styleNo = (uint)TableRowStyle.Fill1Border1Font12;
         }
         else
            styleNo = (uint)TableRowStyle.Fill1Font12;

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
         builder.AppendRowCell(asset.Length.HasValue ?
            asset.Length.Value.ToString() : string.Empty);    // Length
         builder.AppendRowCell(occurs);                       // 1:1
         builder.AppendRowCell(asset.CommentText);            // Data Owner
         builder.AppendRowCell(annotation);
         builder.AppendRowCell(asset.SampleValue);            // Liu, Jin
         builder.AppendRowCell(asset.Namespace);              // (some URI)
         builder.AppendRowCell(asset.GetFullPath());
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
         uint styleNo = (uint)TableRowStyle.Fill1Font12;

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
         builder.AppendHeader(GetNamespacesHeader());

         // write data
         DateTime time = DateTime.UtcNow;
         int count = 0;
         foreach (var i in items)
         {
            AppendTableCells(builder, i, count, time);
            builder.AppendRowCellLast(null);
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
         uint styleNo = (uint)TableRowStyle.Fill1Font12;

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
         builder.AppendHeader(GetCodeSetHeader());

         // write data
         DateTime timestamp = DateTime.Now;
         int count = 0;
         foreach (var i in items)
         {
            AppendTableCells(builder, i, count, timestamp);
            builder.AppendRowCellLast(null);
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
         uint styleNo = (uint)TableRowStyle.Fill1Font12;

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
         builder.AppendHeader(GetCodeSetSummaryHeader());

         // write data
         int count = 0;
         DateTime timestamp = DateTime.Now;
         foreach (var i in items)
         {
            AppendTableCodeSetSummaryCells(builder, i, count, timestamp);
            builder.AppendRowCellLast(null);
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
      /// <param name="columns"></param>
      public void AppendMainHeader(ITableBuilder builder,
         TableColumnsInfo columns, string headerText = null, 
         uint rowStyle = (uint)TableRowStyle.Fill3Border1Font14)
      {
         string header = string.IsNullOrWhiteSpace(headerText) ?
            GetMainHeader() : headerText;

         // add additional columns to append in each row
         List<string> items = new List<string>();
         foreach (var c in columns.Headers)
         {
            items.Add(c.Name);
         }

         builder.AppendMainHeader(items, headerText, rowStyle);
         builder.AppendHeader(header, rowStyle);
      }

      #endregion
      #region -- 4.00 - Workbook / Worksheet Support

      /// <summary>
      /// Append Asset Items under the "Dictionary" Tab.
      /// </summary>
      /// <param name="builder">instance of table builder</param>
      /// <param name="report">report information</param>
      private static void AppendAssetItems(
         ITableBuilder builder, AssetReportInfo report)
      {
         // AddDefaultColumns(builder);
         builder.AddColumns(hidden: true, count: 3);
         builder.AddWorksheet("Dictionary");
         builder.AppendMainHeader(report.AssetCustomColumns.ToList(), 
            report.ReportHeader);

         // prepare Code Items
         if (report.CodeSetItems == null)
         {
            report.CodeSetItems = new List<AssetDataElement>();
         }
         report.CodeSetItems.Clear();

         // write data
         foreach (var i in report.Items)
         {
            AppendTableCells(builder, i);
            string header = GetMainHeader();
            builder.AppendRowCellLast(null);

            if (i.ElementType == ElementType.enumerator)
            {
               report.CodeSetItems.Add(i);
            }
         }
      }

      /// <summary>
      /// Given file details write 
      /// </summary>
      /// <param name="file">Output File Information</param>
      /// <param name="report">report information</param>
      /// <returns>report data as a string is returned.</returns>
      public string ToWorkbookFile(FileInfo file, AssetReportInfo report)
      {
         report.ReportHeader = GetMainHeader();

         string func = "ToWorkbookFile";
         if (string.IsNullOrWhiteSpace(file.Path))
         {
            throw new Exception(
               CLASS_NAME + "." + func + ": File Path Expected");
         }

         ITableBuilder builder = GetBuilder(file);
         builder.Name = "Dictionary";

         // add Use Cases
         if (report.UseCases.HasItems)
         {
            AssetUseCaseReport.AppendUseCases(builder, report);
         }
         else if (report.UseCases.HasMapItems)
         {
            AssetUseCaseReport.AppendUseCaseMapItems(builder, report);
         }

         // add Dictionary
         AppendAssetItems(builder, report);

         // add Namespaces (TAB) as needed
         //if (report.PrepareNamespacesTab)
         {
            AppendNamespaces(builder, report.Namespaces);
         }

         // add Enum Summary (TAB) as needed
         //if (report.PrepareEnumSummaryTab)
         //{
         //   AppendCodeSetSummary(builder, report.CodeSetItems);
         //}

         // add Code Sets (TAB[s]) as needed
         //if (report.PrepareEnumTabs)
         //{
         //   AppendCodeSetItems(builder, report.CodeSetItems);
         //}

         string data = null;
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

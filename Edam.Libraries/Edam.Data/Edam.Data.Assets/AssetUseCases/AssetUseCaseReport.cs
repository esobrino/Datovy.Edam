using Edam.Data.Asset;
using Edam.Data.AssetReport;
using Edam.Data.AssetSchema;
using Edam.Text;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Data.AssetUseCases
{

   public class AssetUseCaseReport
   {

      #region -- 4.00 - Use Case Workbook Support

      /// <summary>
      /// Append Asset Items under the "Dictionary" Tab.
      /// </summary>
      /// <param name="builder">instance of table builder</param>
      /// <param name="report">report information</param>
      public static void AppendAssetItems(
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
            AssetReportBuilder.AppendTableCells(builder, i.Item);
            AppendUseCases(builder, i.Elements, report);
            builder.AppendRowCellLast(null);

            if (i.Item.ElementType == ElementType.enumerator)
            {
               report.CodeSetItems.Add(i.Item);
            }
         }
      }

      /// <summary>
      /// Append Use Cases...
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="items"></param>
      /// <param name="report">report details dependent on its implementation
      /// </param>
      public static void AppendUseCases(ITableBuilder builder,
         List<AssetUseCaseElement> items, AssetReportInfo report)
      {
         var columns = report.AssetCustomColumns;

         // add use cases info targeting specific columns already assigned...
         if (items != null)
         {
            for (var i = 0; i < columns.Headers.Count; i++)
            {
               var f = items.Find((x) => x.Name == columns.Headers[i].Name);
               if (f == null)
               {
                  // the row data-element is not in this use-case (column)...
                  builder.AppendRowCell(string.Empty);
               }
               else
               {
                  builder.AppendRowCell(
                     string.IsNullOrWhiteSpace(f.SampleValue) ?
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
      private static void AppendUseCaseProcessingInstructions(
         ITableBuilder builder, AssetDataElement element,
         AssetColumnsInfo columns)
      {
         if (element.ProcessInstructionsBag == null)
         {
            for (var i = 0; i < columns.Headers.Count; i++)
            {
               builder.AppendRowCell(null);
            }
            return;
         }

         // write columns in the order specified by the columns 
         foreach (var col in columns.Headers)
         {
            foreach (var c in element.ProcessInstructionsBag.Items)
            {
               if (c.Column.Name == col.Name)
               {
                  builder.AppendRowCell(c.Value);
                  break;
               }
            }
         }
      }

      /// <summary>
      /// Append Use Cases into the related TAB
      /// </summary>
      /// <param name="builder"></param>
      /// <param name="report">report details dependent on its implementation
      /// </param>
      public static void AppendUseCases(
         ITableBuilder builder, AssetReportInfo report)
      {
         // TODO: remove hardcoded (3) value...
         builder.AddColumns(hidden: true, count: 3);
         builder.AddWorksheet("Use Cases");

         string ucHeader = report.ReportHeader + ",UseCase";
         builder.AppendMainHeader(
            report.UseCaseColumns.ToList(), ucHeader);

         // write data
         foreach (var c in report.UseCases)
         {
            foreach (var i in c.Items)
            {
               AssetReportBuilder.AppendTableCells(builder, i);
               builder.AppendRowCell(i.UseCaseName);
               AppendUseCaseProcessingInstructions(
                  builder, i, report.UseCaseColumns);
               builder.AppendRowCellLast(null);
            }
         }
      }

      #endregion

   }

}

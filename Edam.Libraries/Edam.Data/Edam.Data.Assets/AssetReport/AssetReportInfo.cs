using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.AssetSchema;
using Edam.Data.AssetUseCases;
using Edam.DataObjects.DataCodes;

namespace Edam.Data.AssetReport
{

   /// <summary>
   /// Asset Report Information
   /// </summary>
   public class AssetReportInfo
   {

      public List<NamespaceInfo> Namespaces { get; set; }

      // data element to report about
      public List<AssetDataElement> Items { get; set; }

      // to report on the code sets...
      public List<AssetDataElement> CodeSetItems { get; set; }

      // custom columns to support
      public AssetColumnsInfo AssetCustomColumns { get; set; }

      public bool PrepareNamespacesTab { get; set; }
      public bool PrepareEnumSummaryTab { get; set; }
      public bool PrepareEnumTabs { get; set; }

      /// <summary>
      /// header (title) items separated by commas
      /// </summary>
      public string ReportHeader { get; set; }

      /// <summary>
      /// List of all Use Cases
      /// </summary>
      public AssetUseCaseList UseCases { get; set; }

      /// <summary>
      /// List of Reporting Elements / Column - Headers
      /// </summary>
      public AssetColumnsInfo UseCaseColumns { get; set; }

      /// <summary>
      /// This are the Use Case merged items...
      /// </summary>
      public List<AssetUseCaseElement> UseCasesMergedItems { get; set; }

      public AssetReportInfo()
      {
         PrepareNamespacesTab = false;
         PrepareEnumSummaryTab = false;
         PrepareEnumTabs = false;
         CodeSetItems = new List<AssetDataElement>();
      }

   }

}

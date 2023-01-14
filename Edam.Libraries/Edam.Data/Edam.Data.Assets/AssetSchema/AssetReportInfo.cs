using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.AssetUseCases;
using Edam.DataObjects.DataCodes;

namespace Edam.Data.AssetSchema
{

   /// <summary>
   /// Asset Report Information
   /// </summary>
   public class AssetReportInfo
   {

      public List<NamespaceInfo> Namespaces { get; set; }
      public List<AssetUseCaseItem<AssetDataElement>> Items { get; set; }
      public List<AssetDataElement> CodeSetItems { get; set; }
      public AssetColumnsInfo AssetCustomColumns { get; set; }

      public bool PrepareNamespacesTab { get; set; }
      public bool PrepareEnumSummaryTab { get; set; }
      public bool PrepareEnumTabs { get; set; }

      /// <summary>
      /// List of all Use Cases
      /// </summary>
      public List<AssetUseCase> UseCases { get; set; }

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

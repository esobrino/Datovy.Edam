using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.AssetSchema;
using Edam.DataObjects.DataCodes;

namespace Edam.Data.AssetSchema
{

   public class AssetReportInfo
   {
      public List<NamespaceInfo> Namespaces { get; set; }
      public List<AssetItemUseCase<AssetDataElement>> Assets { get; set; }
      public List<AssetDataElement> CodeSetItems { get; set; }
      public AssetColumnInfo AssetCustomColumns { get; set; }

      public List<AssetUseCase> UseCases { get; set; }
      public AssetColumnInfo UseCaseColumns { get; set; }
      public List<AssetUseCaseElement> UseCasesMergedItems { get; set; }

      public bool PrepareNamespacesTab { get; set; }
      public bool PrepareEnumSummaryTab { get; set; }
      public bool PrepareEnumTabs { get; set; }

      public AssetReportInfo()
      {
         PrepareNamespacesTab = false;
         PrepareEnumSummaryTab = false;
         PrepareEnumTabs = false;
         CodeSetItems = new List<AssetDataElement>();
      }

   }

}

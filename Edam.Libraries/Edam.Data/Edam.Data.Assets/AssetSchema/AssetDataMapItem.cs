using Edam.Data.Asset;
using Edam.Data.Assets.AssetConsole;
using Edam.Data.Booklets;
using System.Text.Json;
using System.Text.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using util = Edam.Serialization;

namespace Edam.Data.AssetSchema
{

   public class MapAnnotationInfo
   {
      public string Description { get; set; }
      public string Instructions { get; set; }
   }

   public class MapExpressionInfo
   {
      public string Language { get; set; }
      public string ExpressionText { get; set; }
   }

   public class MapNamespaceInfo
   {
      public string Prefix { get; set; }
      public string UriText { get; set; }
   }

   public class MapElementItemInfo
   {
      public string MapItemId { get; set; }
      public string ItemId { get; set; } = Guid.NewGuid().ToString();
      public MapNamespaceInfo Namespace { get; set; } = new MapNamespaceInfo();

      [JsonIgnore]
      public object TreeItem { get; set; }

      [JsonIgnore]
      public AssetDataElement DataElement { get; set; }

      public string Name { get; set; }
      public string Path { get; set; }
      public string QualifiedName { get; set; }

      public MapAnnotationInfo Annotation { get; set; }
   }

   public class AssetDataMapItem
   {
      public string MapItemId { get; set; } = Guid.NewGuid().ToString();

      public string ItemPath { get; set; }

      public List<MapElementItemInfo> SourceElement { get; set; }
      public List<MapElementItemInfo> TargetElement { get; set; }

      public string Description { get; set; }
      public string Instructions { get; set; }

      public List<MapExpressionInfo> Expresions { get; set; }

      public AssetDataMapItem()
      {
         SourceElement = new List<MapElementItemInfo>();
         TargetElement = new List<MapElementItemInfo>();
         Expresions = new List<MapExpressionInfo>();
         Description = String.Empty;
         Instructions = String.Empty;
      }

   }

}

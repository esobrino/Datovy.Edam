
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

// -----------------------------------------------------------------------------
using util = Edam.Serialization;
using Edam.Data.Asset;
using Edam.Data.Assets.AssetConsole;
using Edam.Data.Books;

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

   public class MapItemInfo
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
      public string DisplayPath { get; set; }
      public string DisplayFullPath { get; set; }
      public string QualifiedName { get; set; }

      public MapAnnotationInfo Annotation { get; set; }
   }

   /// <summary>
   /// Define a collection of source and target items that are used to define
   /// a particular Use Case mapping requirement.
   /// </summary>
   public class AssetDataMapItem
   {
      public string MapItemId { get; set; } = Guid.NewGuid().ToString();

      public string ItemPath { get; set; }

      public List<MapItemInfo> SourceElement { get; set; }
      public List<MapItemInfo> TargetElement { get; set; }

      public string Description { get; set; }
      public string Instructions { get; set; }

      public List<MapExpressionInfo> Expresions { get; set; }

      public AssetDataMapItem()
      {
         SourceElement = new List<MapItemInfo>();
         TargetElement = new List<MapItemInfo>();
         Expresions = new List<MapExpressionInfo>();
         Description = String.Empty;
         Instructions = String.Empty;
      }

   }

}

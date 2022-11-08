using Edam.Data.Assets.AssetConsole;
using Edam.Data.Booklets;
using Newtonsoft.Json;
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
      public MapNamespaceInfo Namespace { get; set; }

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

   /// <summary>
   /// 
   /// </summary>
   public class AssetMapUseCase
   {
      public string UseCaseId { get; set; } = Guid.NewGuid().ToString();
      public string Name { get; set; }

      public List<AssetDataMapItem> Items { get; set; } = 
         new List<AssetDataMapItem>();

      public BookInfo Book { get; set; } = new BookInfo();

      [JsonIgnore]
      public AssetDataMapItem SelectedMapItem { get; set; } = null;

      public AssetDataMapItem Find(string itemId)
      {
         return Items.Find((x) => x.MapItemId == itemId);
      }

      public AssetDataMapItem Add(AssetDataElement element)
      {
         var i = Find(element.ElementPath);
         if (i == null)
         {
            AssetDataMapItem item = new AssetDataMapItem();
            item.ItemPath = element.ElementPath;
            Items.Add(item);
            i = item;
         }
         return i;
      }

      /// <summary>
      /// Given an element path return all matching map-items.
      /// </summary>
      /// <param name="type">list type (source or target)</param>
      /// <param name="elementPath">element path to search</param>
      /// <returns>list of found map-items is returned if any was found
      /// </returns>
      public List<AssetDataMapItem> Find(
         DataMapItemType type, string elementPath)
      {
         List<AssetDataMapItem> items = new List<AssetDataMapItem>();

         foreach (var i in Items)
         {
            var l = type == DataMapItemType.Source ?
               i.SourceElement : i.TargetElement;
            var t = l.Find((x)=> x.Path == elementPath);
            if (t != null)
            {
               items.Add(i);
            }
         }

         return items;
      }

      /// <summary>
      /// Select an Item for a given type (source or target).  If any item was
      /// found the first on the list will be set as the selected map-item.
      /// </summary>
      /// <param name="type">list type (source or target)</param>
      /// <param name="elementPath">element path to search</param>
      /// <returns>list of found map-items is returned if any was found
      /// </returns>
      public List<AssetDataMapItem> SelectItem(
         DataMapItemType type, string elementPath)
      {
         var i = Find(type, elementPath);
         if (i.Count > 0)
         {
            SelectedMapItem = i[0];
         }
         return i;
      }

      public void Add(DataMapItemType type, MapElementItemInfo item)
      {
         var l = type == DataMapItemType.Source ?
            SelectedMapItem.SourceElement : SelectedMapItem.TargetElement;
         var i = l.Find((x) => x.Path == item.Path);
         if (i == null)
         {
            l.Add(item);
         }
      }

      public void Delete(DataMapItemType type, MapElementItemInfo item)
      {
         var l = type == DataMapItemType.Source ?
            SelectedMapItem.SourceElement : SelectedMapItem.TargetElement;
         var i = l.Find((x)=> x.Path == item.Path);
         if (i != null)
         {
            l.Remove(i);
         }
      }

      /// <summary>
      /// Read Use Case from file...
      /// </summary>
      /// <param name="filePath">file path</param>
      /// <returns>instance of AssetMapUseCase is returned</returns>
      public static AssetMapUseCase FromFile(string filePath)
      {
         if (!System.IO.File.Exists(filePath))
         {
            return null;
         }
         string jsonText = System.IO.File.ReadAllText(filePath);
         return util.JsonSerializer.Deserialize<AssetMapUseCase>(jsonText);
      }

      /// <summary>
      /// Write Use Case to file...
      /// </summary>
      /// <param name="useCase">use case to write</param>
      /// <param name="filePath">file path</param>
      public static void ToFile(AssetMapUseCase useCase, string filePath)
      {
         string jsonText = 
            util.JsonSerializer.Serialize<AssetMapUseCase>(useCase);
         System.IO.File.WriteAllText(jsonText, filePath);
      }

   }

}

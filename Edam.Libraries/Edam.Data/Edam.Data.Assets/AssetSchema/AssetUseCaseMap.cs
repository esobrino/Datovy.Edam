using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Newtonsoft.Json;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.Assets.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.Booklets;

using util = Edam.Serialization;

namespace Edam.Data.AssetSchema
{

   /// <summary>
   /// Asset Use Case Map
   /// </summary>
   public class AssetUseCaseMap
   {

      #region -- 1.00 - Fields and properties definitions

      public string UseCaseId { get; set; } = Guid.NewGuid().ToString();
      public string Name { get; set; }
      public string VersionId { get; set; }

      public string ProjectName { get; set; }
      public string ProjectVersionId { get; set; }

      public string SourceUriText { get; set; }
      public string TargetUriText { get; set; }

      public List<AssetDataMapItem> Items { get; set; } =
         new List<AssetDataMapItem>();

      private BookInfo m_Book;
      public BookInfo Book
      {
         get { return m_Book; }
      }

      public NamespaceInfo Namespace
      {
         get { return m_Book != null ? m_Book.Namespace : null; }
         set
         {
            if (m_Book != null)
            {
               m_Book.Namespace = value;
            }
         }
      }

      [JsonIgnore]
      public AssetDataMapItem SelectedMapItem { get; set; } = null;

      #endregion
      #region -- 1.50 - Constructure

      public AssetUseCaseMap(NamespaceInfo ns)
      {
         m_Book = new BookInfo(ns);
      }

      #endregion
      #region -- 4.00 - Search and Find support

      public AssetDataMapItem Find(string itemId)
      {
         return Items.Find((x) => x.MapItemId == itemId);
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
            var t = l.Find((x) => x.Path == elementPath);
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

      #endregion
      #region -- 4.00 - Add Map Item management

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

      #endregion
      #region -- 4.00 - Delete map item management

      public void Delete(DataMapItemType type, MapElementItemInfo item)
      {
         var l = type == DataMapItemType.Source ?
            SelectedMapItem.SourceElement : SelectedMapItem.TargetElement;
         var i = l.Find((x) => x.Path == item.Path);
         if (i != null)
         {
            l.Remove(i);
         }
      }

      #endregion
      #region -- 4.00 - File and serialization support

      /// <summary>
      /// Read Use Case from file...
      /// </summary>
      /// <param name="filePath">file path</param>
      /// <returns>instance of AssetMapUseCase is returned</returns>
      public static AssetUseCaseMap FromFile(string filePath)
      {
         if (!System.IO.File.Exists(filePath))
         {
            return null;
         }
         string jsonText = System.IO.File.ReadAllText(filePath);
         return util.JsonSerializer.Deserialize<AssetUseCaseMap>(jsonText);
      }

      /// <summary>
      /// Write Use Case to file...
      /// </summary>
      /// <param name="useCase">use case to write</param>
      /// <param name="filePath">file path</param>
      public static void ToFile(AssetUseCaseMap useCase, string filePath)
      {
         string jsonText =
            util.JsonSerializer.Serialize<AssetUseCaseMap>(useCase);
         System.IO.File.WriteAllText(jsonText, filePath);
      }

      #endregion

   }

}

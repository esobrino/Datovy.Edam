using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;
using System.Text.Json.Serialization;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.Assets.AssetConsole;
using Edam.Data.AssetProject;
using Edam.Data.AssetSchema;
using Edam.Data.Booklets;

using util = Edam.Serialization;
using System.Xml.Linq;

namespace Edam.Data.AssetSchema
{

   /// <summary>
   /// Asset Use Case Map
   /// </summary>
   public class AssetUseCaseMap
   {

      #region -- 1.00 - Fields and properties definitions

      public string UseCaseId { get; set; } = Guid.NewGuid().ToString();
      public string NameId { get; set; }
      public string Name { get; set; }
      public string VersionId { get; set; }

      public ProjectInfo Project { get; set; } = new ProjectInfo();

      public string SourceUriText { get; set; }
      public string TargetUriText { get; set; }

      public string TenantId { get; set; }
      public DateTimeOffset CreatedDate { get; set; } = DateTimeOffset.UtcNow;
      public DateTimeOffset UpdatedDate { get; set; } = DateTimeOffset.UtcNow;


      public List<AssetDataMapItem> Items { get; set; } =
         new List<AssetDataMapItem>();

      private BookInfo m_Book;
      public BookInfo Book
      {
         get { return m_Book; }
      }

      private NamespaceInfo m_Namespace { get; set; }
      public NamespaceInfo Namespace
      {
         get { return m_Namespace; }
         set
         {
            m_Namespace = value;
            m_Book.Namespace = value;
         }
      }

      [JsonIgnore]
      public AssetDataMapItem SelectedMapItem { get; set; } = null;

      #endregion
      #region -- 1.50 - Constructure

      public AssetUseCaseMap()
      {
         m_Book = new BookInfo();
      }

      #endregion
      #region -- 4.00 - Support Methods

      public void SetNamespace(NamespaceInfo ns)
      {
         Namespace = ns;
         m_Book.Namespace = ns;
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
      /// Get file name based on given URI and version id.
      /// </summary>
      /// <param name="uriText">URI text</param>
      /// <param name="name">use case name</param>
      /// <param name="versionId">version ID</param>
      /// <returns>file name is returned</returns>
      public static string GetFileName(
         string uriText, string name, string versionId)
      {
         string fname = name;
         if (String.IsNullOrWhiteSpace(name))
         {
            fname = uriText.Replace("http://", String.Empty).Replace(".", "_").
               Replace('/', '_');
         }
         return fname + (String.IsNullOrWhiteSpace(versionId) ?
            String.Empty : "_" + versionId) + ".json";
      }

      /// <summary>
      /// Read Use Case from file...
      /// </summary>
      /// <param name="filePath">partial file path</param>
      /// <returns>instance of AssetMapUseCase is returned</returns>
      public static AssetUseCaseMap FromFile(string filePath)
      {
         if (!System.IO.File.Exists(filePath))
         {
            return null;
         }

         JsonSerializerOptions? options = new()
         {
            ReferenceHandler = ReferenceHandler.Preserve,
            WriteIndented = true
         };

         string jsonText = System.IO.File.ReadAllText(filePath);
         return JsonSerializer.Deserialize<AssetUseCaseMap>(jsonText);
      }

      /// <summary>
      /// Fetch the use case matching with given URI and version Id.
      /// </summary>
      /// <param name="uriText"></param>
      /// <param name="versionId"></param>
      /// <returns></returns>
      public static AssetUseCaseMap FromUriVersion(
         string uriText, string name, string versionId)
      {
         return FromFile(GetFileName(uriText, name, versionId));
      }

      /// <summary>
      /// Write Use Case to file...
      /// </summary>
      /// <param name="useCase">use case to write</param>
      /// <param name="filePath">file path</param>
      public static void ToFile(AssetUseCaseMap useCase, string folderPath,
         string filePath)
      {
         AssetUseCaseLog.OpenFolder(folderPath);

         JsonSerializerOptions? options = new()
         {            
            ReferenceHandler = ReferenceHandler.Preserve,
            WriteIndented = true
         };

         string jsonText =
            JsonSerializer.Serialize<AssetUseCaseMap>(useCase);
         System.IO.File.WriteAllText(folderPath + filePath, jsonText);
      }

      public static void ToFile(AssetUseCaseMap useCase, string folderPath,
         string uriText, string versionId)
      {
         ToFile(useCase, folderPath, GetFileName(
            uriText, useCase.Name, versionId));
      }

      #endregion

   }

}

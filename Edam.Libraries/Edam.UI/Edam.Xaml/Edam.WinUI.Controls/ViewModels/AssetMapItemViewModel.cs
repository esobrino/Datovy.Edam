using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetProject;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;
using Edam.Helpers;
using Edam.WinUI.Controls.DataModels;
using System.Collections.ObjectModel;
using Edam.Data.Assets.AssetConsole;

namespace Edam.WinUI.Controls.ViewModels
{

   public class AssetMapItemViewModel : ObservableObject
   {

      #region -- 1.00 - Properties and Fields

      public DataMapContext Context { get; set; }

      public AssetMapUseCase UseCase
      {
         get { return Context.UseCase; }
      }

      /// <summary>
      /// List of map-items containing source/target mappings and details
      /// </summary>
      private ObservableCollection<AssetDataMapItem> m_MapItemList;
      public ObservableCollection<AssetDataMapItem> MapItemList
      {
         get { return m_MapItemList; }
         set
         {
            if (m_MapItemList != value)
            {
               m_MapItemList = value;
               OnPropertyChanged(nameof(MapItemList));
            }
         }
      }

      private AssetDataMapItem m_SelectedMapItem;
      public AssetDataMapItem SelectedMapItem
      {
         get { return m_SelectedMapItem; }
         set
         { 
            if (m_SelectedMapItem != value)
            {
               m_SelectedMapItem = value;
               OnPropertyChanged(nameof(SelectedMapItem));

               if (!Context.IsControlKeyPressed)
               {
                  CurrentMapItem = value;
               }
            }
         }
      }

      public AssetDataMapItem CurrentMapItem
      {
         get { return UseCase.SelectedMapItem; }
         set
         {
            if (UseCase.SelectedMapItem != value)
            {
               UseCase.SelectedMapItem = value;
               OnPropertyChanged(nameof(CurrentMapItem));
            }
         }
      }

      private MapElementItemInfo m_SourceSelectedItem;
      public MapElementItemInfo SourceSelectedItem
      {
         get { return m_SourceSelectedItem; }
         set
         {
            if ( m_SourceSelectedItem != value)
            {
               m_SourceSelectedItem = value;
               OnPropertyChanged(nameof(SourceSelectedItem));
            }
         }
      }

      private MapElementItemInfo m_TargetSelectedItem;
      public MapElementItemInfo TargetSelectedItem
      {
         get { return m_TargetSelectedItem; }
         set
         {
            if (m_TargetSelectedItem != value)
            {
               m_TargetSelectedItem = value;
               OnPropertyChanged(nameof(TargetSelectedItem));
            }
         }
      }

      #endregion
      #region -- 1.50 - Constructor and Initialization

      public AssetMapItemViewModel()
      {
         MapItemList = new ObservableCollection<AssetDataMapItem>();
      }

      public void SetContext(DataMapContext context)
      {
         Context = context;
         Context.Source.ManageNotification = ManageSourceEvent;
         Context.Target.ManageNotification = ManageTargetEvent;
      }

      #endregion
      #region -- 4.00 - Get/Setup Map Items

      private MapElementItemInfo GetElementItem(string name, string path)
      {
         MapElementItemInfo e = new MapElementItemInfo();
         e.Name = name;
         e.Path = path;
         return e;
      }

      /// <summary>
      /// Set item as current item and add it to the groups as needed...
      /// </summary>
      /// <param name="item">map item</param>
      private void Setup(AssetDataMapItem item)
      {
         CurrentMapItem = item;

         if (item == null)
         {
            return;
         }

         foreach(var i in MapItemList)
         {
            if (i.ItemPath == item.ItemPath)
            {
               return;
            }
         }

         MapItemList.Add(item);
      }

      /// <summary>
      /// Setup found map-item list that matched a given element path.
      /// </summary>
      /// <param name="items">map-item list</param>
      private void Setup(List<AssetDataMapItem> items)
      {
         MapItemList.Clear();
         foreach (var item in items)
         {
            MapItemList.Add(item);
         }

         if (items.Count > 0)
         {
            Setup(items[0]);
         }
         else
         {
            Setup((AssetDataMapItem)null);
         }
      }

      /// <summary>
      /// Setup found map-item list that matched a given element path.
      /// </summary>
      /// <param name="items">map-item list</param>
      private void Setup(ObservableCollection<AssetDataMapItem> items)
      {
         ObservableCollection<AssetDataMapItem> list = 
            new ObservableCollection<AssetDataMapItem>();
         foreach (var item in items)
         {
            if (item.SourceElement.Count > 0 &&
               item.TargetElement.Count > 0)
            {
               list.Add(item);
            }
         }
         MapItemList = list;

         if (items.Count > 0)
         {
            Setup(items[0]);
         }
         else
         {
            Setup((AssetDataMapItem)null);
         }
      }

      #endregion
      #region -- 4.00 - Find Map Items

      private static MapElementItemInfo Find(
         List<MapElementItemInfo> list,
         DataTreeModel item)
      {
         foreach (var i in list)
         {
            if (i.Path == item.Item.Element.ElementPath)
            {
               return i;
            }
         }
         return null;
      }

      private static MapElementItemInfo Find(
         List<MapElementItemInfo> list,
         MapElementItemInfo item)
      {
         foreach (var i in list)
         {
            if (i.Path == item.Path)
            {
               return i;
            }
         }
         return null;
      }

      #endregion
      #region -- 4.00 - Select/Add Map Item

      /// <summary>
      /// Add item to map-item list as needed...
      /// </summary>
      /// <param name="type">type identify to be source or target</param>
      /// <param name="args">Data Tree event arguments</param>
      private void Add(DataMapItemType type, DataTreeEventArgs args)
      {
         // get tree item
         var item = args.DataItem as DataTreeModel;
         if (item == null)
         {
            return;
         }

         // determine if need to add to current element list or find it...
         if (!args.KeyEventData.IsControlKeyPressed || CurrentMapItem == null)
         {
            Setup(UseCase.Add(item.Item.Element));
         }

         // identify the list
         List<MapElementItemInfo> list = type == DataMapItemType.Source ?
               CurrentMapItem.SourceElement :
               CurrentMapItem.TargetElement;

         // find/add selected tree element
         var i = Find(list, item);
         if (i != null)
         {
            return;
         }
         item.IsVisited = true;
         var e = GetElementItem(
            item.Item.Element.ElementName,
            item.Item.Element.ElementPath);
         e.TreeItem = item;
         list.Add(e);

         UseCase.Add(type, e);
         Setup(MapItemList);
      }

      /// <summary>
      /// Item has been selected... identify and setup map-item list as needed
      /// </summary>
      /// <param name="type">type identify to be source or target</param>
      /// <param name="args">Data Tree event arguments</param>
      private void ItemSelected(DataMapItemType type, DataTreeEventArgs args)
      {
         if (args.KeyEventData.IsControlKeyPressed)
         {
            Add(type, args);
            return;
         }

         // get tree item
         var item = args.DataItem as DataTreeModel;
         if (item == null)
         {
            return;
         }
         var flist = UseCase.SelectItem(type, item.ElementFullPath);
         Setup(flist);
      }

      #endregion
      #region -- 4.00 - Manage Source/Target Events

      public void ManageSourceEvent(object sender, DataTreeEventArgs args)
      {
         if (args.Type == DataTreeEventType.DoubleTapped)
         {
            Add(DataMapItemType.Source, args);
         }
         else
         {
            ItemSelected(DataMapItemType.Source, args);
         }
      }

      public void ManageTargetEvent(object sender, DataTreeEventArgs args)
      {
         if (args.Type == DataTreeEventType.DoubleTapped)
         {
            Add(DataMapItemType.Target, args);
         }
         else
         {
            ItemSelected(DataMapItemType.Target, args);
         }
      }

      #endregion
      #region -- 4.00 - Map Item Delete Support

      private void Delete(
         DataMapItemType type,
         List<MapElementItemInfo> list,
         MapElementItemInfo item)
      {
         if (item == null)
         {
            return;
         }

         var i = Find(list, item);
         if (i != null)
         {
            DataTreeModel m = i.TreeItem as DataTreeModel;
            if (m != null)
            {
               m.IsVisited = false;
            }
            list.Remove(i);

            UseCase.Delete(type, i);
            Setup(MapItemList);
         }
      }

      public void DeleteItem(DataMapItemType type)
      {
         if (type == DataMapItemType.Source)
         {
            Delete(type, CurrentMapItem.SourceElement, SourceSelectedItem);
         }
         else
         {
            Delete(type, CurrentMapItem.TargetElement, TargetSelectedItem);
         }
      }

      #endregion

   }

}

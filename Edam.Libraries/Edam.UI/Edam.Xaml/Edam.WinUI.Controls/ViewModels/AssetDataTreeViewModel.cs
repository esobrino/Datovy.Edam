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
using Edam.Json.JsonDataTree;
using Edam.WinUI.Controls.Common;

namespace Edam.WinUI.Controls.ViewModels
{

   public class AssetDataTreeViewModel : ObservableObject
   {

      /// <summary>
      /// The TreeItem refers to the root of the visual tree...
      /// </summary>
      private DataTreeModel m_TreeView;
      public DataTreeModel TreeView
      {
         get { return m_TreeView; }
         set
         {
            if (m_TreeView != value)
            {
               m_TreeView = value;
               OnPropertyChanged(nameof(TreeView));
            }
         }
      }

      private DataTreeModel m_SelectedItem;
      public DataTreeModel SelectedItem
      {
         get { return m_SelectedItem; }
         set
         {
            if (m_SelectedItem != value)
            {
               m_SelectedItem = value;
               OnPropertyChanged(nameof(SelectedItem));
               
               CurrentItem = m_SelectedItem;
               SetCurrentItem(value, DataTreeEventType.ItemSelected);
            }
         }
      }

      private DataTreeModel m_CurrentItem = null;
      public DataTreeModel CurrentItem
      {
         get { return m_CurrentItem; }
         set
         {
            if (m_CurrentItem != value)
            {
               m_CurrentItem = value;
               OnPropertyChanged(nameof(CurrentItem));
            }
         }
      }

      private DataMapItemType m_MapType = DataMapItemType.Unknown;
      public DataMapItemType MapType
      {
         get { return m_MapType; }
      }

      public DataUseCaseMapContext m_MapContext = null;
      public DataUseCaseMapContext MapContext
      {
         get { return m_MapContext; }
         set 
         { 
            if (m_MapContext != value)
            {
               m_MapContext = value;
               OnPropertyChanged(nameof(MapContext));
            }
         }
      }

      public KeyEventData KeyEventData
      {
         get { return m_MapContext.KeyEventData; }
         set { m_MapContext.SetKeyEventData(value); }
      }

      public string GetSampleInstance()
      {
         if (TreeView == null)
         {
            return String.Empty;
         }
         var inst = JsonDataTreeInstance.PrepareInstance(TreeView.Item);
         return inst.JsonText;
      }

      public void SetMapContext(DataUseCaseMapContext context, DataMapItemType type)
      {
         m_MapType = type;
         m_MapContext = context;

         switch(type)
         {
            case DataMapItemType.Source:
               context.Source.TreeModel = TreeView;
               if (String.IsNullOrWhiteSpace(context.Source.JsonInstanceSample))
               {
                  context.Source.JsonInstanceSample = GetSampleInstance();
               }
               break;
            case DataMapItemType.Target:
               context.Target.TreeModel = TreeView;
               break;
            default:
               break;
         }

      }

      public void SetCurrentItem(DataTreeModel item = null,
         DataTreeEventType type = DataTreeEventType.ItemSelected)
      {
         if (item == null)
         {
            item = SelectedItem;
         }
         CurrentItem = item;

         DataTreeEventArgs args = new DataTreeEventArgs();
         args.DataItem = item;
         args.Type = type;
         args.Context = m_MapContext;
         args.MapType = MapType;
         args.KeyEventData = KeyEventData == null ? 
            new KeyEventData() : KeyEventData;

         DataTreeEvent treeEvent = (MapType == DataMapItemType.Source) ?
            m_MapContext.Source.ManageNotification :
            m_MapContext.Target.ManageNotification;

         if (treeEvent != null)
         {
            treeEvent(this, args);
         }
      }

   }

}

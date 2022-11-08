using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
using Edam.WinUI.Controls.ViewModels;
using Edam.Data.AssetSchema;
using Edam.WinUI.Controls.DataModels;
using Edam.WinUI.Controls.Common;
using Edam.Data.Assets.AssetConsole;

namespace Edam.WinUI.Controls.Assets
{

   public sealed partial class AssetSidePanelControl : UserControl
   {
      private AssetSidePanelViewModel m_ViewModel;
      public AssetSidePanelViewModel ViewModel
      {
         get { return m_ViewModel; }
      }
      public AssetSidePanelControl()
      {
         this.InitializeComponent();
         m_ViewModel = new AssetSidePanelViewModel();
         DataContext = m_ViewModel;
         m_ViewModel.DataTreeControl = TreeView;
      }

      public void ManageNotification(object sender, NotificationArgs args)
      {
         if (args.MessageText != AssetViewOption.DataMapView.ToString())
         {
            return;
         }

         DataMapContext context = args.EventData as DataMapContext;
         if (context == null)
         {
            return;
         }

         context.Source.Instance = TreeView;
         TreeView.ViewModel.SetMapContext(context, DataMapItemType.Source);
      }

      private void AssetRefresh_Click(object sender, RoutedEventArgs e)
      {
        
      }

      public void AssetDataChanged(object dataItem)
      {
         AssetData assetData = dataItem as AssetData;
         if (assetData != null)
         {
            var tree = AssetDataTree.GetDataTree(ProjectContext.Arguments, 6);
            if (tree != null)
            {
               TreeView.SetDataTree(tree);
            }
            ViewModel.AssetDataChanged(dataItem);
         }
      }

      private void SaveOption_SelectionChanged(
         object sender, SelectionChangedEventArgs e)
      {
         if (e.AddedItems.Count == 0)
         {
            return;
         }
         ViewModel.SaveOptionChanged(e.AddedItems[0].ToString());

         // allow for a new selection...
         SaveOption.SelectedItem = null;
      }

      private void DataAssetView_Click(object sender, RoutedEventArgs e)
      {
         ViewModel.DataViewChanged(AssetViewOption.DataAssetView);
      }

      private void DataTreeView_Click(object sender, RoutedEventArgs e)
      {
         ViewModel.DataViewChanged(AssetViewOption.DataTreeView);
      }

      private void DataMapView_Click(object sender, RoutedEventArgs e)
      {
         ViewModel.DataViewChanged(AssetViewOption.DataMapView);
      }
   }

}

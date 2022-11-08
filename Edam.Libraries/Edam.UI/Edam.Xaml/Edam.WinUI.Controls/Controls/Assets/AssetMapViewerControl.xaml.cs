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
using Edam.WinUI.Controls.DataModels;
using Edam.WinUI.Controls.Common;

namespace Edam.WinUI.Controls.Assets
{

   public sealed partial class AssetMapViewerControl : UserControl
   {

      private AssetMapViewerModel m_ViewModel = new AssetMapViewerModel();
      public AssetMapViewerModel ViewModel
      {
         get { return m_ViewModel; }
      }

      public AssetMapViewerControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
      }

      public void ManageNotification(
         object sender, NotificationArgs args)
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

         m_ViewModel.SetUpMapping(context);
         AssetDataTreeViewer.ManageNotification(this, args);
         MapPlayControl.SetMapContext(context);
         MapPanelControl.SetContext(context);
      }

      private void TabViewer_SelectionChanged(
         object sender, SelectionChangedEventArgs e)
      {
         if (e.AddedItems.Count == 0)
         {
            return;
         }
         var tabItem = e.AddedItems[0] as TabViewItem;
         //ViewModel.NotifyTabChanged(tabItem.Name, tabItem);
      }

   }

}

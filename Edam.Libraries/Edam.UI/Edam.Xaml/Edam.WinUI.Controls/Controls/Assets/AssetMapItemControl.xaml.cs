﻿using Microsoft.UI.Xaml;
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
using Edam.Data.Assets.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.WinUI.Controls.DataModels;
using Edam.WinUI.Controls.Common;
using System.Runtime.CompilerServices;
using Edam.WinUI.Controls.Booklets;
using Edam.Data.Booklets;

namespace Edam.WinUI.Controls.Assets
{

   public sealed partial class AssetMapItemControl : UserControl
   {
      private AssetMapItemViewModel m_ViewModel = new AssetMapItemViewModel();
      public AssetMapItemViewModel ViewModel
      {
         get { return m_ViewModel; }
      }

      public AssetMapItemControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
         ViewModel.ParentControl = this;
      }

      public void BookletChanged(object sender, DataTreeEventArgs args)
      {
         BookletPanel.ManageNotification(sender, args);
      }

      public void SetContext(DataMapContext context)
      {
         if (context != null || 
            context.ContextId != m_ViewModel.Context.ContextId)
         {
            m_ViewModel.SetContext(context);
            FolderViewer.ViewModel.GetFolderFiles(
               ProjectContext.ProjectFolderPath + "/" +
               AssetUseCaseLog.GetUseCasesFolderName());
            BookletPanel.SetContext(context);
         }
      }

      public ListView GetListView()
      {
         return BookletPanel.GetListView();
      }

      private void SourceDeleteItem_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.DeleteItem(DataMapItemType.Source);
      }

      private void TargetDeleteItem_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.DeleteItem(DataMapItemType.Target);
      }

      private void ScrollViewer_KeyDown(object sender, KeyRoutedEventArgs e)
      {
         ViewModel.Context.SetKeyEventData(e);
         e.Handled = true;
      }

      private void ScrollViewer_KeyUp(object sender, KeyRoutedEventArgs e)
      {
         ViewModel.Context.SetKeyEventData((KeyRoutedEventArgs)null);
         e.Handled = true;
      }

      private void SourceControl_SelectionChanged(
         object sender, SelectionChangedEventArgs e)
      {
         if (e.AddedItems.Count > 0)
         {
            ViewModel.SourceSelectedItem = 
               e.AddedItems[0] as MapItemInfo;
         }
      }

      private void TargetControl_SelectionChanged(
         object sender, SelectionChangedEventArgs e)
      {
         if (e.AddedItems.Count > 0)
         {
            ViewModel.TargetSelectedItem =
               e.AddedItems[0] as MapItemInfo;
         }
      }

      public void SetSelectionChangedEvent(NotificationEvent notificationEvent)
      {
         if (FolderViewer.SelectionChangedEvent == null)
         {
            FolderViewer.SelectionChangedEvent = notificationEvent;
         }
      }

      public void NotifyUseCaseSaved()
      {
         FolderViewer.ViewModel.RefreshFolderFiles();
      }

   }

}

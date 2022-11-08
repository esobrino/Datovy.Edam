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
      }

      public void SetContext(DataMapContext context)
      {
         m_ViewModel.SetContext(context);
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
               e.AddedItems[0] as MapElementItemInfo;
         }
      }

      private void TargetControl_SelectionChanged(
         object sender, SelectionChangedEventArgs e)
      {
         if (e.AddedItems.Count > 0)
         {
            ViewModel.TargetSelectedItem =
               e.AddedItems[0] as MapElementItemInfo;
         }
      }
   }

}
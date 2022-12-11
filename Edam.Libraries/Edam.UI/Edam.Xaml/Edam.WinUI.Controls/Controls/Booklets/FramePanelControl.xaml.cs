﻿using Edam.Data.Booklets;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Markup;
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
using DocumentFormat.OpenXml.Wordprocessing;

namespace Edam.WinUI.Controls.Booklets
{

   [ContentProperty(Name="FrameContent")]
   public sealed partial class FramePanelControl : UserControl
   {
      private BookViewModel m_ViewModel;
      public BookViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            m_ViewModel = value;
            DataContext = value;
         }
      }

      public static DependencyProperty FrameContentProperty =
          DependencyProperty.Register("FrameContent", typeof(object),
             typeof(FramePanelControl), null);

      public object FrameContent
      {
         get => GetValue(FrameContentProperty);
         set => SetValue(FrameContentProperty, value);
      }

      public event EventHandler<BookEventArgs> BookChanged;

      public FramePanelControl()
      {
         this.InitializeComponent();
      }

      public void HidePlayButton()
      {
         PlayButton.Visibility = Visibility.Collapsed;
      }

      private void PlayClicked(object sender, PointerRoutedEventArgs e)
      {
         BookletCellInfo cell = Tag as BookletCellInfo;
         ViewModel.ProcessCell(cell);
         ViewModel.NotifyEvent(
            Common.NotificationType.ExecuteItem, String.Empty, cell);
      }

      private void RemoveItemClicked(object sender, PointerRoutedEventArgs e)
      {
         BookletCellInfo cell = Tag as BookletCellInfo;
         ViewModel.NotifyEvent(
            Common.NotificationType.RemoveItem, String.Empty, cell);
      }

      private void AddItemClicked(object sender, PointerRoutedEventArgs e)
      {
         BookletCellInfo cell = Tag as BookletCellInfo;
         ViewModel.NotifyEvent(
            Common.NotificationType.AddItem, "TEXT", cell);
      }

   }

}

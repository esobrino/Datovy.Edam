﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Microsoft.UI.Xaml.Controls;

// -----------------------------------------------------------------------------
using Edam.Uwp.ViewModels;
using Edam.DataObjects.References;
using Edam.DataObjects.ViewModels;
using Edam.WinUI.Controls.ViewModels;

namespace Edam.WinUI.Controls.ReferenceLists
{
   public sealed partial class ReferenceListViewControl : 
      UserControl, IMenuView
   {
      private readonly ReferenceListViewModel m_ViewModel = 
         new ReferenceListViewModel();
      public ReferenceListViewModel ViewModel
      {
         get { return m_ViewModel; }
      }
      public ReferenceListViewControl()
      {
         this.InitializeComponent();
         this.DataContext = m_ViewModel;
         m_ViewModel.Dispatcher = DispatcherQueue;
      }

      public IMenuItemParent ParentMenu { get; set; }

      public void SetState(object state)
      {
      }

      private void UserControl_Loaded(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
      {
         //BackgroundControlShadow.Receivers.Add(BackgroundGrid);
      }
   }
}

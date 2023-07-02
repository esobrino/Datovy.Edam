// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

using Edam.Data.AssetSchema;
using Edam.WinUI.Controls.ViewModels;
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

namespace Edam.WinUI.Controls.Assets
{

   public sealed partial class AssetMapSidePanelControl : UserControl
   {
      private DataMapSidePanelViewModel m_ViewModel =
         new DataMapSidePanelViewModel();

      public DataMapSidePanelViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            m_ViewModel = value;
            DataContext = value;
         }
      }

      public AssetMapSidePanelControl()
      {
         this.InitializeComponent();
         DataContext = ViewModel;
      }

      /// <summary>
      /// Toogle panel visibility...
      /// </summary>
      /// <param name="sender"></param>
      /// <param name="e"></param>
      private void SidePanelToggle_Click(object sender, RoutedEventArgs e)
      {
         ViewModel.Expander.TogglePanelVisibility();
      }

   }

}


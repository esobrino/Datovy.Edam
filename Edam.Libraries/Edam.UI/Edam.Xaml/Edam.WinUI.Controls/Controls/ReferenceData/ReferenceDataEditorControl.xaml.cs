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
// -----------------------------------------------------------------------------
using Edam.DataObjects.ViewModels;
using Edam.DataObjects.ReferenceData;
using Edam.DataObjects.Models;
using Edam.Uwp.ViewModels;
using Edam.WinUI.Controls.ViewModels;

namespace Edam.WinUI.Controls.ReferenceData
{

   public sealed partial class ReferenceDataEditorControl : UserControl
   {
      private ReferenceDataEditorViewModel m_ViewModel = 
         new ReferenceDataEditorViewModel();
      public ReferenceDataEditorViewModel ViewModel
      {
         get { return m_ViewModel; }
      }

      public ReferenceDataEditorControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
         m_ViewModel.Dispatcher = DispatcherQueue;

         if (ViewModel.ElementGroupItem != null && 
            ViewModel.ElementGroupItem.Items != null && 
            ViewModel.ElementGroupItem.Items.Count > 0)
         {
            TreeView.SelectedItem = ViewModel.ElementGroupItem.Items[0];
         }

         // provide to notify that a grid row has been selected...
         DataGridControl.ViewModel.RowSelectedHandler +=
            new ReferenceDataGridRowSelected(m_ViewModel.RowSelected);

         // setup view model needed references...
         m_ViewModel.DataEditorViewControl = DataEditorViewControl;
         m_ViewModel.DataGridViewModel = DataGridControl.ViewModel;
         m_ViewModel.FormStackViewModel = FormStackControl.ViewModel;
         m_ViewModel.FormViewModel = FormControl.ViewModel;

         // make sure that the form control is collapsed...
         FormControl.ViewModel.Collapse();
      }

      private void TopMenuNavigation_ItemInvoked(
         NavigationView sender, NavigationViewItemInvokedEventArgs args)
      {

      }

      private void NavigationViewItem_PointerPressed(
         object sender, PointerRoutedEventArgs e)
      {
         m_ViewModel.OnViewTreeDataRefresh();
      }

      private void FormView_PointerPressed(object sender, PointerRoutedEventArgs e)
      {
         m_ViewModel.ToggleDataEditorView();
      }

      private void TreeView_ItemInvoked(TreeView sender, TreeViewItemInvokedEventArgs args)
      {
         args.Handled = true;
         if (args.InvokedItem is ElementGroupItem item)
         {
            m_ViewModel.SelectedItem = item;
         }
      }
   }
}

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

namespace Edam.WinUI.Controls.Controls.ReferenceData
{

   public sealed partial class ReferenceDataFormStackControl : UserControl
   {
      private ReferenceDataFormStackViewModel m_ViewModel = 
         new ReferenceDataFormStackViewModel();
      public ReferenceDataFormStackViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            if (value == null)
            {
               return;
            }
            m_ViewModel = value;
            DataContext = m_ViewModel;
         }
      }
      public ReferenceDataFormStackControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
         m_ViewModel.DataEditorControl = DataEditorControl;
         m_ViewModel.RecordStatus.ComboBoxControl = RecordStatusCodeControl;
      }

      private void Save_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.OnSave(sender, e);
      }

      private void Cancel_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.OnCancel(sender, e);
      }

      private void New_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.OnNew(sender, e);
      }


      private void Button_TabKeyDown(object sender, KeyRoutedEventArgs e)
      {
         m_ViewModel.TabKeyDownHandler(sender, e);
      }
   }

}

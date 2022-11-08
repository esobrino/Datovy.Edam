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
   public sealed partial class ReferenceDataGridControl : UserControl
   {

      private ReferenceDataGridViewModel m_ViewModel = 
         new ReferenceDataGridViewModel();
      public ReferenceDataGridViewModel ViewModel
      {
         get { return m_ViewModel; }
      }
      public ReferenceDataGridControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
         m_ViewModel.DataGridControl = DataGridControl;
      }

   }
}

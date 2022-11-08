using Edam.WinUI.Controls.Application;
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

namespace Edam.WinUI.Controls.ReferenceData
{
   public sealed partial class ReferenceDataValidationContentDialog : 
      ContentDialog
   {
      private ReferenceDataValidationViewModel m_ViewModel = 
         new ReferenceDataValidationViewModel();
      public ReferenceDataValidationViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            m_ViewModel = value;
         }
      }
      public ReferenceDataValidationContentDialog()
      {
         this.InitializeComponent();
         XamlRoot = ApplicationHelper.MainWindow.Content.XamlRoot;
         DataContext = m_ViewModel;
      }
   }
}

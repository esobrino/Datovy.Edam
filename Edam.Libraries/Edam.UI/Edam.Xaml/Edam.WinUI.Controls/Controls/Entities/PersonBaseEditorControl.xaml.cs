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
using Edam.UI.DataModel.Entities;
using Microsoft.UI.Dispatching;

namespace Edam.WinUI.Controls.Entities
{
   public sealed partial class PersonBaseEditorControl : UserControl
   {
      private PersonViewModel m_ViewModel = new PersonViewModel();
      public PersonViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            m_ViewModel = value;
            DataContext = m_ViewModel;
         }
      }
      public PersonBaseEditorControl()
      {
         this.InitializeComponent();
         m_ViewModel.Dispatcher = DispatcherQueue;
         //DataContext = m_ViewModel;
      }
   }
}

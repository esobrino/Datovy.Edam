using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using System.Windows;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// -----------------------------------------------------------------------------
using Edam.Uwp.ViewModels;

namespace Edam.WinUI.Controls.Entities
{
   public sealed partial class EntityFollowUpGridControl : UserControl
   {
      private EntityFollowUpViewModel m_ViewModel = 
         new EntityFollowUpViewModel();
      public EntityFollowUpViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            m_ViewModel = value;
            DataContext = m_ViewModel;
         }
      }
      public EntityFollowUpGridControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel.Persons;
      }

   }
}

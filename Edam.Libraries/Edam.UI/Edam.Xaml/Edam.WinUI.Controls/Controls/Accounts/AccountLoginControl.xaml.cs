using System;
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
using Edam.WinUI.Controls.ViewModels;
using Edam.WinUI.Controls.DataModels;

namespace Edam.WinUI.Controls.Accounts
{

   public sealed partial class AccountLoginControl : UserControl
   {
      private LoginViewModel m_ViewModel = new LoginViewModel();
      public LoginViewModel ViewModel
      {
         get { return m_ViewModel; }
      }
      public AccountLoginControl()
      {
         this.InitializeComponent();
         this.DataContext = m_ViewModel;
         m_ViewModel.Dispatcher = DispatcherQueue;
      }

      private void TextBox_LostFocus(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
      {
         ViewModel.CheckInput();
         SubmitButton.IsEnabled = m_ViewModel.AcceptAll;
      }

      private void UserControl_Loaded(object sender, Microsoft.UI.Xaml.RoutedEventArgs e)
      {
         BackgroundControlShadow.Receivers.Add(BackgroundGrid);
      }
   }

}

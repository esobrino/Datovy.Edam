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
using Windows.ApplicationModel.DataTransfer;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
using Edam.Application;
using Edam.WinUI.Controls.ViewModels;
using Edam.Data.AssetSchema;
using Edam.WinUI.Controls.DataModels;
using Edam.WinUI.Controls.Dialogs;
using DocumentFormat.OpenXml.Wordprocessing;
using Edam.WinUI.Controls.Common;
using Edam.InOut;

namespace Edam.WinUI.Controls.Assets
{

   public sealed partial class AssetMapPanelControl : UserControl
   {
      private AssetMapPanelViewModel m_ViewModel = new AssetMapPanelViewModel();
      public AssetMapPanelViewModel ViewModel
      {
         get { return m_ViewModel; }
      }

      public AssetMapPanelControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;

         MapItemControl.SetSelectionChangedEvent(ManageNotification);
      }

      /// <summary>
      /// Manage Use Case Items selected notification...
      /// </summary>
      /// <param name="sender"></param>
      /// <param name="args"></param>
      public void ManageNotification(object sender, NotificationArgs args)
      {
         if (args.Type == NotificationType.ItemSelected)
         {
            UseCaseNameBox.Text = args.MessageText;
            ViewModel.SaveVisibility =
               String.IsNullOrWhiteSpace(UseCaseNameBox.Text) ? 
                  Visibility.Collapsed : Visibility.Visible;

            // prepare Book View Model...
            ViewModel.PrepareBook(args.EventData as FileDetailInfo);
         }
      }

      /// <summary>
      /// Set / Update mapping context specifying its Target...
      /// </summary>
      /// <param name="context"></param>
      public void SetContext(DataMapContext context)
      {
         m_ViewModel.Context = context;
         MapItemControl.SetContext(context);
      }

      /// <summary>
      /// Use Case Save...
      /// </summary>
      /// <param name="sender"></param>
      /// <param name="e"></param>
      private void UseCaseSave_Click(object sender, RoutedEventArgs e)
      {
         if (String.IsNullOrWhiteSpace(UseCaseNameBox.Text))
         {
            Session.ShowMessageBox("Use Case Name Needed",
               "Please provide a Use Case Name, then retry", null, 
               Edam.Application.MessageBoxType.Done);
            return;
         }
         ViewModel.Context.UseCase.Name = UseCaseNameBox.Text;
         ViewModel.Context = 
            DataMapContext.SaveUseCase(ViewModel.Context);
         MapItemControl.NotifyUseCaseSaved();
      }

   }

}

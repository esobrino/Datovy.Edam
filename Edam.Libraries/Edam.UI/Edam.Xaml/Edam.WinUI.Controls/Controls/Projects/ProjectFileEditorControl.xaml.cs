using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using Windows.UI.Core;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
using Edam.WinUI.Controls.ViewModels;
using Edam.WinUI.Controls.DataModels;
using Edam.WinUI.Controls.Common;
using Edam.InOut;

namespace Edam.WinUI.Controls.Projects
{

   public sealed partial class ProjectFileEditorControl : UserControl
   {

      private ProjectViewerViewModel m_ViewModel;
      public ProjectViewerViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            m_ViewModel = value;
            DataContext = m_ViewModel;
         }
      }

      public TextBlock FileNameTextBlock
      {
         get { return LoadedFileName; }
      }

      public NotificationEvent AssetViewerCommandEvent
         { get; set; }

      public ProjectFileEditorControl()
      {
         this.InitializeComponent();
         AssetViewerCommandEvent = null;
         ViewModel = new ProjectViewerViewModel();
         EditorControl.ViewModel.NotifyCodeEditorEvent =
            ManageNotification;
      }

      public void ManageNotification(object sender, NotificationArgs args)
      {
         if (args.Type == NotificationType.AssetSaveTextRequested)
         {
            TextDocumentModel text = args.EventData as TextDocumentModel;
            if (text != null)
            {
               m_ViewModel.ItemSave(LoadedFileName.Text, text.Text);
            }
            return;
         }
         else if (args.Type != NotificationType.AssetDataSetAvailable)
         {
            return;
         }

         m_ViewModel.NotifiedMessageText = "Loaded " + args.MessageText;
      }

      public void SetEditorText(ProjectItem item, string text)
      {
         if (!ViewModel.NewItemSelected(item))
         {
            return;
         }
         PlayButton.Visibility = item.CanExecute ? 
            Visibility.Visible : Visibility.Collapsed;
         EditorControl.TextDocument.SetText(
            Microsoft.UI.Text.TextSetOptions.None, text, 
            item.Item.ExtensionName);
      }

      #region -- 4.00 - Save Editor Text in File or Storage...

      public async void SaveText()
      {
         var text = await EditorControl.ViewModel.GetEditorText();
         //if (text != null)
         //{
         //   m_ViewModel.ItemSave(LoadedFileName.Text, text);
         //}
      }

      private void ProjectSave_Click(object sender, RoutedEventArgs e)
      {
         SaveText();
      }

      private void EditorControl_KeyDown(object sender, KeyRoutedEventArgs e)
      {
         //if (e.Key == Windows.System.VirtualKey.S)
         //{
         //   Windows.UI.Core.CoreVirtualKeyStates ctrlKey =
         //      Microsoft.UI.Input.InputKeyboardSource.
         //         GetKeyStateForCurrentThread(
         //            Windows.System.VirtualKey.Control);
         //   if (ctrlKey == CoreVirtualKeyStates.Down)
         //   {
         //      SaveText();
         //   }
         //}
      }

      #endregion

      private void ProjectPlay_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.NotifiedMessageText = String.Empty;
         if (AssetViewerCommandEvent != null && ViewModel.SelectedItem != null)
         {
            NotificationArgs a = new NotificationArgs();
            a.Type = NotificationType.RunProjectItem;
            a.EventData = ViewModel.SelectedItem;
            AssetViewerCommandEvent(this, a);
         }
      }

      private void ProjectClean_Click(object sender, RoutedEventArgs e)
      {

      }

   }

}

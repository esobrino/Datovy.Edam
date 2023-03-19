﻿using Microsoft.UI.Xaml;
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
using Windows.UI.Core;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
using Edam.WinUI.Controls.ViewModels;
using Edam.WinUI.Controls.DataModels;
using Edam.WinUI.Controls.Dialogs;

namespace Edam.WinUI.Controls.Assets
{

   public sealed partial class AssetMapPlayControl : UserControl
   {
      private AssetMapPlayViewModel m_ViewModel = new AssetMapPlayViewModel();
      public AssetMapPlayViewModel ViewModel
      {
         get { return m_ViewModel; }
      }

      public AssetMapPlayControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
         m_ViewModel.SetText = SetText;
      }

      private async void ExecuteRequest_Click(object sender, RoutedEventArgs e)
      {
         var jsonData = await EditorControl.ViewModel.GetEditorText();
         var request = await RequestEditorControl.ViewModel.GetEditorText();

         if (String.IsNullOrWhiteSpace(jsonData) ||
            String.IsNullOrWhiteSpace(request))
         {
            return;
         }

         var results = m_ViewModel.ExecuteRequest(jsonData, request);
         if (results.Success)
         {
            ResponseEditorControl.ViewModel.SetEditorText(
               results.DataObject.ToString(), "json");
         }
      }

      private void SampleRefresh_Click(object sender, RoutedEventArgs e)
      {
         SetText();
      }

      private void RequestRefresh_Click(object sender, RoutedEventArgs e)
      {

      }

      private void ResponseRefresh_Click(object sender, RoutedEventArgs e)
      {

      }

      public void SetMapContext(DataMapContext context)
      {
         m_ViewModel.SetDataMapContext(context);
         SetText();
      }

      #region -- 4.00 - Save Editor Text in File or Storage...

      public void SetText()
      {
         string text = m_ViewModel.Context == null ? String.Empty :
            m_ViewModel.Context.Source.JsonInstanceSample;
         if (String.IsNullOrWhiteSpace(text))
         {
            text = String.Empty;
         }
         SetText(text);
      }

      public void SetText(string text)
      {
         EditorControl.TextDocument.SetText(
            Microsoft.UI.Text.TextSetOptions.None,
            text, "json");
      }

      public void SetText(IDialogObjectInfo info)
      {
         if (info.CommandText == "editor")
         {
            SetText(info.DataObject.ToString());
         }
         else if (info.CommandText == "script")
         {
            RequestEditorControl.TextDocument.
               SetText(
                  Microsoft.UI.Text.TextSetOptions.None,
                  info.DataObject.ToString(),"json");
         }
      }

      public void SafeText()
      { 
         //EditorControl.TextDocument.GetText(
         //   Microsoft.UI.Text.TextGetOptions.None, out string text);
         //if (text != null)
         //{
         //   m_ViewModel.ItemSave(LoadedFileName.Text, text);
         //}
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

      private async void EditorSave_Click(object sender, RoutedEventArgs e)
      {
         var text = await EditorControl.TextDocument.GetText();
         ViewModel.ItemSave(text);
      }

      private void EditorOpen_Click(object sender, RoutedEventArgs e)
      {
         ViewModel.ItemOpen("editor");
      }

      private async void ScriptSave_Click(object sender, RoutedEventArgs e)
      {
         var text = await RequestEditorControl.TextDocument.GetText();
         ViewModel.ItemSave(text);
      }

      private void ScriptOpen_Click(object sender, RoutedEventArgs e)
      {
         ViewModel.ItemOpen("script");
      }

      private async void OutputSave_Click(object sender, RoutedEventArgs e)
      {
         var text = await ResponseEditorControl.TextDocument.GetText();
         ViewModel.ItemSave(text);
      }

      #endregion

   }

}

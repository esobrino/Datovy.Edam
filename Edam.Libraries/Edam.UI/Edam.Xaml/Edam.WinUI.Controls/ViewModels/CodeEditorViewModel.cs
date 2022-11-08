﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml.Controls;

// -----------------------------------------------------------------------------
using Edam.Application;
using Edam.Helpers;
using Edam.Diagnostics;
using Edam.Data.AssetManagement.Helpers;
using Edam.Data.AssetManagement;
using Edam.WinUI.Controls.DataModels;
using Edam.WinUI.Controls.Common;
using Edam.Data.AssetProject;

namespace Edam.WinUI.Controls.ViewModels
{

   public class CodeEditorViewModel : ObservableObject
   {
      private const string DEFAULT_CODE_EDITOR_KEY = "DefaultCodeEditorKey";
      private const string CODE_EDITOR_URL_KEY = "CodeEditorUrl";

      private TextDocumentModel m_TextDocument;
      private ResultLog m_ResultsLog = new ResultLog();
      private Uri m_UrlSource;

      public DataTextMap DataTextMap { get; set; }
      public WebView2 CodeEditor = null;

      public Uri UrlSource
      {
         get { return m_UrlSource; }
         set
         {
            if (m_UrlSource != value)
            {
               m_UrlSource = value;
               OnPropertyChanged("UrlSource");
            }
         }
      }

      public TextDocumentModel TextDocument
      {
         get { return m_TextDocument; }
      }
      public string LanguageText
      {
         get { return m_TextDocument.LanguageText; }
         set { m_TextDocument.LanguageText = value; OnPropertyChanged(); }
      }

      public NotificationEvent NotifyCodeEditorEvent { get; set; }

      public CodeEditorViewModel()
      {
         Navigate(GetDefaultCodeEditorUrl());
         m_TextDocument = new TextDocumentModel(this);
         DataTextMap = Project.GetDataTextMapByKey();
      }

      public static string GetDefaultCodeEditorUrl()
      {
         string key = AppSettings.GetSectionString(DEFAULT_CODE_EDITOR_KEY);
         if (string.IsNullOrEmpty(key))
         {
            key = CODE_EDITOR_URL_KEY;
         }
         string url = AppSettings.GetSectionString(key);
         if (string.IsNullOrEmpty(url))
         {
            return null;
         }
         return ConfigurationHelper.GetAbsoluteFileUri(url);
      }

      public async Task<ResultLog> SetEditorText(String text, String language)
      {
         ResultLog res = new ResultLog();

         string etext = (text.ReplaceLineEndings()).
            Replace("\r", "\\r").Replace("\n","\\n").Replace("\t","\\t").
            Replace("'","\\u0027");

         string lang = DataTextMap.MapText(language, DataTextMapDirection.From);
         try
         {
            var results = await CodeEditor.ExecuteScriptAsync(
               $"setEditorText('{etext}','{lang}');");
            res.Succeeded();
         }
         catch (Exception ex)
         {
            res.Failed(ex);
         }
         return res;
      }

      public async Task<string> GetEditorText()
      {
         var text = await CodeEditor.ExecuteScriptAsync("getEditorText();");
         text = text == null ? String.Empty :
            text.
               Replace("\\r","\r").Replace("\\n","\n").Replace("\\\"", "\"").
               Replace("\\u003C","<").Replace("\\t","   ").Trim().Trim('"');

         TextDocument.Text = text;
         return text;
      }

      public void NotifyEditorTextAvailable(TextDocumentModel textDocument)
      {
         if (NotifyCodeEditorEvent != null)
         {
            NotificationArgs args = new NotificationArgs();
            args.Type = NotificationType.AssetSaveTextRequested;
            args.EventData = textDocument;
            NotifyCodeEditorEvent(this, args);
         }
      }

      public void Navigate(string url)
      {
         try
         {
            m_ResultsLog.Clear();
            UrlSource = new Uri(url);
         }
         catch (Exception ex)
         {
            m_ResultsLog.Failed(ex);
         }
      }

   }

}


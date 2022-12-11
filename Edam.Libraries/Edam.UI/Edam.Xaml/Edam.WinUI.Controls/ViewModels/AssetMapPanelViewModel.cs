using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetProject;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;
using Edam.Helpers;
using Edam.WinUI.Controls.DataModels;
using System.Collections.ObjectModel;
using Microsoft.UI.Xaml;
using Edam.WinUI.Controls.Common;
using DocumentFormat.OpenXml.Spreadsheet;

namespace Edam.WinUI.Controls.ViewModels
{

   public class AssetMapPanelViewModel : ObservableObject
   {

      private bool m_DataContextRegistered = false;
      private DataUseCaseMapContext m_Context;
      public DataUseCaseMapContext Context
      {
         get { return m_Context; }
         set
         {
            m_Context = DataUseCaseMapContext.CreateContext(
               value, null, ProjectContext.Arguments);
            if (value == null)
            {
               m_DataContextRegistered = false;
            }
            else if (!m_DataContextRegistered)
            {
               m_DataContextRegistered = true;
               if (m_Context.ManageNotification == null)
               {
                  m_Context.ManageNotification += ManageNotification;
               }
            }
         }
      }

      private Visibility m_SaveVisibility;
      public Visibility SaveVisibility
      {
         get { return m_SaveVisibility; }
         set
         {
            if (m_SaveVisibility != value)
            {
               m_SaveVisibility = value;
               OnPropertyChanged(nameof(SaveVisibility));
            }
         }
      }

      private Visibility m_AddToVisibility;
      public Visibility AddToVisibility
      {
         get { return m_AddToVisibility; }
         set
         {
            if (m_AddToVisibility != value)
            {
               m_AddToVisibility = value;
               OnPropertyChanged(nameof(AddToVisibility));
            }
         }
      }

      private string m_UseCaseName;
      public string UseCaseName
      {
         get
         { 
            return String.IsNullOrWhiteSpace(m_UseCaseName) ?
               String.Empty : m_UseCaseName; 
         }
         set
         {
            if (m_UseCaseName != value)
            {
               m_UseCaseName = value;
               OnPropertyChanged(nameof(UseCaseName));

               if (Context != null && Context.UseCase != null)
               {
                  Context.UseCase.Name = value;
               }
            }
            SaveVisibility = !String.IsNullOrEmpty(UseCaseName) ?
               Visibility.Visible : Visibility.Collapsed;
         }
      }

      public AssetMapPanelViewModel()
      {
         UseCaseName = String.Empty;
         SaveVisibility = Visibility.Collapsed;
         AddToVisibility = Visibility.Collapsed;
      }

      public void ManageNotification(object sender, DataTreeEventArgs args)
      {
         if (args.Type == DataTreeEventType.KeyPressed)
         {
            AddToVisibility = m_Context.IsControlKeyPressed ?
               Visibility.Visible : Visibility.Collapsed;
         }
      }

   }

}

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

namespace Edam.WinUI.Controls.ViewModels
{

   public class AssetMapPanelViewModel : ObservableObject
   {

      private bool m_DataContextRegistered = false;
      private DataMapContext m_Context;
      public DataMapContext Context
      {
         get { return m_Context; }
         set
         {
            m_Context = value;
            if (value == null)
            {
               m_DataContextRegistered = false;
            }
            else if (!m_DataContextRegistered)
            {
               m_DataContextRegistered = true;
               m_Context.ManageNotification += ManageNotification;
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

      public string UseCaseName
      {
         get { return m_Context.UseCase.Name; }
         set
         {
            if (m_Context != null && 
               m_Context.UseCase.Name != value)
            {
               m_Context.UseCase.Name = value;
               OnPropertyChanged(nameof(UseCaseName));
            }
         }
      }

      public AssetMapPanelViewModel()
      {
         UseCaseName = String.Empty;
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

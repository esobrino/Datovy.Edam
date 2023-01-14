using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Helpers;
using Edam.Data.AssetSchema;
using Microsoft.UI.Xaml;
using Edam.WinUI.Controls.DataModels;
using Edam.Data.Books;
using Edam.Data.Assets.AssetConsole;
using Edam.Data.AssetUseCases;

namespace Edam.WinUI.Controls.ViewModels
{

    public class DataMapSidePanelViewModel : ObservableObject
   {
      private const string ChevronClose = "\xE96F";
      private const string ChevronOpen = "\xE970";

      public DataMapContext Context { get; set; }
      public AssetUseCaseMap UseCase
      {
         get { return Context.UseCase; } 
         set
         {
            if (Context.UseCase != value)
            {
               Context.UseCase = value;
               OnPropertyChanged(nameof(UseCase));
            }
         }
      }

      public string UseCaseName
      {
         get { return UseCase == null ? String.Empty : UseCase.Name; }
         set
         {
            if (UseCase.Name != value)
            {
               UseCase.Name = value;
               OnPropertyChanged(UseCaseName);
            }
         }
      }

      public string UseCaseDescription
      {
         get { return UseCase == null ? String.Empty : UseCase.Description; }
         set
         {
            if (UseCase.Description != value)
            {
               UseCase.Description = value;
               OnPropertyChanged(UseCaseDescription);
            }
         }
      }

      private AssetDataMapItem m_SelectedMapItem;
      public AssetDataMapItem SelectedMapItem
      {
         get
         {
            return m_SelectedMapItem; 
         }
         set
         {
            if (m_SelectedMapItem != value)
            {
               m_SelectedMapItem = value;
               OnPropertyChanged(nameof(SelectedMapItem));
            }
         }
      }

      private BookletInfo m_SelectedBooklet;
      public BookletInfo SelectedBooklet
      {
         get { return m_SelectedBooklet; }
         set
         {
            if (m_SelectedBooklet != value)
            {
               m_SelectedBooklet = value;
               OnPropertyChanged(nameof(SelectedBooklet));
            }
         }
      }

      private string m_SelectedChevron;
      public string SelectedChevron
      {
         get { return m_SelectedChevron; }
         set
         {
            if (m_SelectedChevron != value)
            {
               m_SelectedChevron = value;
               OnPropertyChanged(nameof(SelectedChevron));
            }
         }
      }

      private Visibility m_PanelVisibility;
      public Visibility PanelVisibility
      {
         get { return m_PanelVisibility; }
         set
         {
            if (m_PanelVisibility != value)
            {
               m_PanelVisibility = value;
               OnPropertyChanged(nameof(PanelVisibility));
            }
         }
      }

      public DataMapSidePanelViewModel()
      {
         SelectedChevron = ChevronClose;
         PanelVisibility = Visibility.Collapsed;
      }

      public void TogglePanelVisibility()
      {
         SelectedChevron = PanelVisibility == Visibility.Visible ?
            ChevronClose : ChevronOpen;
         PanelVisibility = PanelVisibility == Visibility.Visible ? 
            Visibility.Collapsed : Visibility.Visible;
      }

      /// <summary>
      /// Manage Source Event - Tree Item has been selected
      /// </summary>
      /// <param name="sender"></param>
      /// <param name="args"></param>
      public void ManageNotification(object sender, DataTreeEventArgs args)
      {
         if (args != null && args.Type == DataTreeEventType.DoubleTapped)
         {
            //item = Add(DataMapItemType.Source, args);
         }
         else
         {
            SelectedBooklet = Context.BookModel.Model.SelectedBooklet;
            SelectedMapItem = UseCase.SelectedMapItem;
            //item = ItemSelected(DataMapItemType.Source, args);
         }
      }

   }

}

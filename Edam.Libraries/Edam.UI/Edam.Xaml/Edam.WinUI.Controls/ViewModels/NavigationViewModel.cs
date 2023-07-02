using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml.Input;
using System.ComponentModel;
using System.Collections.ObjectModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;

using Microsoft.UI.Xaml.Controls;

// -----------------------------------------------------------------------------
using Edam.DataObjects;
using Edam.DataObjects.ViewModels;
using Edam.WinUI.Controls;
using Edam.Helpers;
using Edam.UI;
using Windows.UI.ApplicationSettings;
using Edam.WinUI.Controls.Accounts;
using Edam.WinUI.Controls.Home;
using Edam.WinUI.Controls.Entities;
using Edam.WinUI.Controls.Web;
using Edam.WinUI.Controls.ReferenceData;
using Edam.WinUI.Controls.Projects;
using Edam.UI.DataModel.ViewModels;
using Edam.WinUI.Controls.Controls.Navigation;
using Edam.WinUI.Controls.Utilities;

namespace Edam.Uwp.ViewModels
{

   public class NavigationViewModel : ObservableObject, IMenuView
   {

      #region -- 1.00 - Properties and definitions...

      public ExpanderModel Expander { get; } = new ExpanderModel();

      public IMenuItemParent ParentMenu { get; set; }

      public static ObservableCollection<MenuItem> m_Items;
      public ObservableCollection<MenuItem> Items
      {
         get { return m_Items; }
      }

      public IEnumerable<MenuItem> VisibleItems
      {
         get
         {
            var items = from i in m_Items
                        where i.Visible
                        select i;
            return items;
         }
      }

      private MenuItem m_SelectedItem = null;
      public MenuItem SelectedItem
      {
         get { return m_SelectedItem; }
         set
         {
            if (m_SelectedItem != value)
            {
               m_SelectedItem = value;
               OnPropertyChanged(DataElementName.SelectedItem);
            }
         }
      }

      NavigationViewPaneDisplayMode m_DisplayMode;
      public NavigationViewPaneDisplayMode DisplayMode 
      {
         get { return m_DisplayMode; }
         set
         {
            if (m_DisplayMode != value)
            {
               m_DisplayMode = value;
               OnPropertyChanged(DataElementName.DisplayMode);
            }
         }
      }

      public MenuItem Dashboard
      {
         get { return m_Items[0]; }
      }

      #endregion
      #region -- 1.00 - Commands

      public ICommand ItemSelectedCommand { protected set; get; }
      public ICommand GoBackCommand { protected set; get; }

      #endregion
      #region -- 1.50 - Initialize Resources

      public NavigationViewModel() : base()
      {
         InitializeCommands();
         if (m_Items == null)
         {
            m_Items = MenuController.GetMainMenu();
         }
         DisplayMode = NavigationViewPaneDisplayMode.LeftCompact;
      }

      #endregion
      #region -- 2.00 - MVVM Commands

      private void InitializeCommands()
      {
         ItemSelectedCommand = new Command(OnItemSelectedCommand);
         GoBackCommand = new Command(DoGoBack);
      }

      #endregion
      #region -- 4.00 - Services (GET, POST and DELETE) Methods

      #endregion
      #region -- 4.00 - Command Methods

      public void DoGoBack()
      {
         if (ParentMenu != null)
         {
            GotoEventArgs e = new GotoEventArgs();
            e.State = null; // Persons.SelectedItem;
            e.MenuOption = MenuOption.Dashboard;
            e.ShowMainMenu = true;
            ParentMenu.Goto(this, e);
         }
      }

      public void OnItemSelectedCommand()
      {

      }

      public void SetState(Object state)
      {

      }

      #endregion

   }

}

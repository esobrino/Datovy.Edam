using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;

using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Controls;

// -----------------------------------------------------------------------------
using model = Edam.UI.DataModel.Entities;
using Edam.DataObjects.Entities;
using Edam.DataObjects.ViewModels;
using Edam.DataObjects.Dashboards;
using Edam.DataObjects.Notes;
using Edam.UI;
using Edam.DataObjects.References;

namespace Edam.Uwp.ViewModels
{

   public enum BindingTarget
   {
      Unknown = 0,
      NotesControl = 1
   }

   /// <summary>
   /// Extend EntityFollowUpViewModel with stuff only avaibable in the
   /// XAML View/Controls assembly.
   /// </summary>
   public class EntityFollowUpViewModel : model.EntityFollowUpViewModel
   {

      #region -- 1.00 - Properties and definitions...

      private RequestAlertInfo m_CurrentAlert = null;
      //public EntityContactModel Contact { get; set; }

      private Visibility m_EvaluateVisibility;
      public Visibility EvaluateVisibility
      {
         get { return m_EvaluateVisibility; }
         set
         {
            if (m_EvaluateVisibility != value)
            {
               m_EvaluateVisibility = value;
               OnPropertyChanged(nameof(EvaluateVisibility));
               FollowUpVisibility = value == Visibility.Visible ?
                  Visibility.Collapsed : Visibility.Visible;
            }
         }
      }

      private Visibility m_FollowUpVisibility;
      public Visibility FollowUpVisibility
      {
         get { return m_FollowUpVisibility; }
         set
         {
            if (m_FollowUpVisibility != value)
            {
               m_FollowUpVisibility = value;
               OnPropertyChanged(nameof(FollowUpVisibility));
            }
         }
      }

      public Action<BindingTarget> UpdateBindingContext;

      private Visibility m_NotesVisibility;
      public Visibility NotesVisibility
      {
         get { return m_NotesVisibility; }
         set
         {
            if (m_NotesVisibility != value)
            {
               m_NotesVisibility = value;
               OnPropertyChanged("NotesVisibility");
            }
         }
      }

      private Visibility m_PersonVisibility;
      public Visibility PersonVisibility
      {
         get { return m_PersonVisibility; }
         set
         {
            if (m_PersonVisibility != value)
            {
               m_PersonVisibility = value;
               OnPropertyChanged("PersonVisibility");
            }
         }
      }

      private Visibility m_ProgressVisibility;
      public Visibility ProgressVisibility
      {
         get { return m_ProgressVisibility; }
         set
         {
            if (m_ProgressVisibility != value)
            {
               m_ProgressVisibility = value;
               OnPropertyChanged("ProgressVisibility");
            }
         }
      }

      private NavigationViewItem m_PersonItem = null;
      private NavigationViewItem m_SelectedItem;
      public NavigationViewItem SelectedItem
      {
         get { return m_SelectedItem; }
         set
         {
            if (m_SelectedItem != value)
            {
               m_SelectedItem = value;
               OnPropertyChanged("SelectedItem");
               SetMenuItem(value);
            }
         }
      }

      #endregion
      #region -- 1.50 - Initialize Resources

      public EntityFollowUpViewModel() : base()
      {
         Persons.SelectedItem = null;
         InitializeCommands();
         SetGroup();
         SetMenuItem(null);
         EvaluateVisibility = Visibility.Collapsed;
         //Contact = new EntityContactModel();
         //Contact.PropertyChanged +=
         //   new System.ComponentModel.PropertyChangedEventHandler(
         //      OnContactChange);
      }

      #endregion
      #region -- 2.00 - MVVM Commands

      private void InitializeCommands()
      {
         OnPersonDoubleClickCommand = new Command(OnPersonDoubleClick);
         GoBackCommand = new Command(DoGoBack);
      }

      #endregion
      #region -- 4.00 - Services (GET, POST and DELETE) Methods

      #endregion
      #region -- 4.00 - Support Methods

      public void SetMenuItem(object item)
      {
         string i = "Notes";
         var nitem = item as NavigationViewItem;
         if (nitem != null)
         {
            i = nitem.Content.ToString();
            if (i == "Person")
            {
               m_PersonItem = nitem;
            }
         }
         NotesVisibility = i == "Notes" ?
            Visibility.Visible : Visibility.Collapsed;
         PersonVisibility = i == "Person" ?
            Visibility.Visible : Visibility.Collapsed;
         ProgressVisibility = i == "Progress" ?
            Visibility.Visible : Visibility.Collapsed;
      }

      public void ToggleEvaluate()
      {
         EvaluateVisibility = m_EvaluateVisibility == Visibility.Visible ?
            Visibility.Collapsed : Visibility.Visible;
      }

      #endregion
      #region -- 4.00 - Command Methods

      public void DoGoBack()
      {
         if (ParentMenu != null)
         {
            GotoEventArgs e = new GotoEventArgs();
            e.State = Persons.SelectedItem;
            e.MenuOption = MenuOption.Dashboard;
            e.ShowMainMenu = true;
            ParentMenu.Goto(this, e);
         }
      }

      //protected void OnContactChange(Object sender, PropertyChangedEventArgs e)
      //{
      //   Boolean ok = false;
      //   PersonViewModel p = new PersonViewModel();
      //if (e.PropertyName == DataElementName.PhoneNumber)
      //{
      //   p.PhoneNumber = Contact.PhoneNumber;
      //   ok = true;
      //}
      //else if (e.PropertyName == DataElementName.FatherLastName)
      //{
      //   p.FatherLastName = Contact.FatherLastName;
      //   ok = true;
      //}
      //else if (e.PropertyName == DataElementName.MotherLastName)
      //{
      //   p.MotherLastName = Contact.MotherLastName;
      //   ok = true;
      //}
      //var i = Find(Items, p.Record);
      //if (i.HasValue)
      //{
      //   var person = Items[i.Value];
      //   Contact.FromPerson(person.Record);
      //}
      //   if (ok)
      //      Persons.GetItems(p, true);
      //}

      public void OnPersonDoubleClick()
      {
         SelectedItem = m_PersonItem;
      }

      public void SetGroup(Object state = null)
      {
         Persons.ResetControls();

         if (state == null)
         {
            PersonInfo p = new PersonInfo();
            Persons.SetItem(p, m_CurrentAlert);
            return;
         }

         if (state is GotoEventArgs)
         {
            var e = state as GotoEventArgs;
            if (e.State is RequestAlertInfo)
            {
               m_CurrentAlert = e.State as RequestAlertInfo;
               PersonInfo p = new PersonInfo();
               Persons.GetItems(p, false, m_CurrentAlert);
            }
         }
      }

      #endregion

   }

}

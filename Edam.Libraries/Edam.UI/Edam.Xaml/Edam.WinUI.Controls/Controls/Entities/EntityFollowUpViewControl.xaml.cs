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

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

// -----------------------------------------------------------------------------
using Edam.DataObjects.Entities;
using local = Edam.Uwp.ViewModels;
using Edam.DataObjects.ViewModels;
using Edam.UI.DataModel.Entities;
using Edam.WinUI.Controls.Application;
using Edam.WinUI.Controls.Common;

namespace Edam.WinUI.Controls.Entities
{
   public sealed partial class EntityFollowUpViewControl : 
      UserControl, IMenuView
   {
      private DataModels.ActivityPeriodRatingModel m_RatingModel = 
         new DataModels.ActivityPeriodRatingModel();

      public DataModels.ActivityPeriodRatingModel RatingModel
      {
         get { return m_RatingModel; }
      }
      public IMenuItemParent ParentMenu
      {
         get { return m_ViewModel.ParentMenu; }
         set { m_ViewModel.ParentMenu = value; }
      }

      private local.EntityFollowUpViewModel m_ViewModel = 
         new local.EntityFollowUpViewModel();

      public local.EntityFollowUpViewModel ViewModel
      {
         get { return m_ViewModel; }
      }
      
      public EntityFollowUpViewControl()
      {
         this.InitializeComponent();
         this.DataContext = m_ViewModel;
         m_ViewModel.Dispatcher = 
            (Microsoft.UI.Dispatching.DispatcherQueue) DispatcherQueue;

         PersonEditorControl.ViewModel = ViewModel.Persons;
         PersonEditorControl.ViewModel.Dispatcher =
            PersonEditorControl.DispatcherQueue;

         ViewModel.Persons.Notes = NotesEditorControl.ViewModel;
         ViewModel.Persons.ReferenceListGroup = ReferenceListGroupControl.ViewModel;

         Persons.ViewModel = ViewModel;
         Persons.ViewModel.Dispatcher = Persons.DispatcherQueue;

         m_RatingModel.Program = ProgramOptionsControl.ViewModel;
         m_RatingModel.DatePeriod = PeriodOptionsControl.ViewModel;
         m_RatingModel.Persons = Persons.ViewModel.Persons;
         m_RatingModel.Ratings = RatingGridControl.ViewModel;

         PeriodOptionsControl.ViewModel.ManageNotification =
            m_RatingModel.Ratings.ManageNotification;

         ParticipantListViewControl.ViewModel.Items =
            ViewModel.Persons.Items;
         ParticipantListViewControl.ParticipantNotification =
            ManageNotification;

         RatingGridControl.ViewModel.ReferenceCodesAvailableEvent =
            ParticipantListViewControl.CodeSetsAvailableNotification;
      }

      public void SetState(Object state)
      {
         m_ViewModel.SetGroup(state);
      }

      public void ClearStatusMessage()
      {
         ViewModel.Persons.StatusMessageText = String.Empty;
         ViewModel.StatusMessageText = String.Empty;
      }

      public void ManageNotification(object sender, NotificationArgs args)
      {
         if (args.Type == NotificationType.ParticipantSelected)
         {
            PersonModel participant = args.EventData as PersonModel;
            if (participant != null)
            {
               RatingGridControl.ViewModel.AddRecord(
                  m_RatingModel, participant);
            }
         }
      }

      //private void TopViewNavitation_ItemInvoked(
      //   NavigationView sender, 
      //   NavigationViewItemInvokedEventArgs args)
      //{
      //   if (args.InvokedItemContainer.Name.ToString() == "ListsItem")
      //   {
      //      ApplicationHelper.SetMenuOption(MenuOption.Home);
      //   }
      //}

      private void ListOptionButton_Click(object sender, RoutedEventArgs e)
      {
         if (ViewModel.EvaluateVisibility == Visibility.Visible)
         {
            ViewModel.ToggleEvaluate();
         }
         RatingGridControl.ViewModel.UpdateAll();
         ApplicationHelper.SetMenuOption(MenuOption.Home);
      }

      private void EvaluateButton_Click(object sender, RoutedEventArgs e)
      {
         ClearStatusMessage();
         ViewModel.ToggleEvaluate();
         if (ViewModel.EvaluateVisibility == Visibility.Visible)
         {
            m_RatingModel.Ratings.SetState(m_RatingModel);
            ParticipantListViewControl.ViewModel.SetCodes();
         }
         else
         {
            RatingGridControl.ViewModel.UpdateAll();
         }
      }

      private void SaveEventsButton_Click(object sender, RoutedEventArgs e)
      {
         RatingGridControl.ViewModel.UpdateAll();
      }
   }
}

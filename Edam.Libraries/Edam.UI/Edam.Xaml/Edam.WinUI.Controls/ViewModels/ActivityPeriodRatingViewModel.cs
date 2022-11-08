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
using Edam.Helpers;
using Edam.DataObjects.Activities;
using services = Edam.DataObjects.Services;
using Edam.UI.DataModel.Entities;
using Edam.WinUI.Controls.Common;
using Edam.DataObjects.References;
using Edam.WinUI.Controls.Application;

namespace Edam.WinUI.Controls.ViewModels
{

   public class ActivityPeriodRatingViewModel : ObservableObject
   {

      private ObservableCollection<ActivityPeriodRatingInfo> m_Items;
      public ObservableCollection<ActivityPeriodRatingInfo> Items
      {
         get { return m_Items; }
         set
         {
            if (m_Items != value)
            {
               m_Items = value;
               OnPropertyChanged(nameof(Items));
            }
         }
      }

      private ActivityPeriodRatingInfo m_SelectedItem;
      public ActivityPeriodRatingInfo SelectedItem
      {
         get { return m_SelectedItem; }
         set
         {
            if (m_SelectedItem != value)
            {
               m_SelectedItem = value;
               OnPropertyChanged(nameof(SelectedItem));
               if (value != null)
               {
                  value.RecordStatusCode = 
                     ActivityPeriodRatingInfo.RECORD_TOUCHED;
               }
            }
         }
      }

      public CodeValueListViewModel StatusCodes { get; set; }
      public CodeValueListViewModel RatingTypeCodes { get; set; }
      public CodeValueListViewModel ResultTypeCodes { get; set; }
      public CodeValueListViewModel ParticipantRoleCodes { get; set; }

      private string m_PeriodId;
      public string PeriodId
      {
         get { return m_PeriodId; }
         set
         {
            if (m_PeriodId != value)
            {
               m_PeriodId = value;
               OnPropertyChanged(nameof(PeriodId));
            }
         }
      }
      private string m_ProgramId;
      public string ProgramId
      {
         get { return m_ProgramId; }
         set
         {
            if (m_ProgramId != value)
            {
               m_ProgramId = value;
               OnPropertyChanged(nameof(ProgramId));
            }
         }
      }
      private string m_EntityId;
      public string EntityId
      {
         get { return m_EntityId; }
         set
         {
            if (m_EntityId != value)
            {
               m_EntityId = value;
               OnPropertyChanged(nameof(EntityId));
            }
         }
      }

      private DataModels.ActivityPeriodRatingModel m_State = null;
      public DataModels.ActivityPeriodRatingModel RatingModel
      {
         get { return m_State; }
      }

      public NotificationEvent ReferenceCodesAvailableEvent { get; set; }

      public ActivityPeriodRatingViewModel()
      {
         Items = new ObservableCollection<ActivityPeriodRatingInfo>();
         StatusCodes = new CodeValueListViewModel();
         ResultTypeCodes = new CodeValueListViewModel();
         RatingTypeCodes = new CodeValueListViewModel();
         ParticipantRoleCodes = new CodeValueListViewModel();

         StatusCodes.CodeSetKey = ApplicationCode.KEY_STATUS;
         ResultTypeCodes.CodeSetKey = ApplicationCode.KEY_RATING_RESULT_TYPE;
         RatingTypeCodes.CodeSetKey = ApplicationCode.KEY_RATING_TYPE;
         ParticipantRoleCodes.CodeSetKey = ApplicationCode.KEY_PARTICIPANT_ROLE;
      }

      public void SetState(DataModels.ActivityPeriodRatingModel model)
      {
         m_State = model;
         if (model != null)
         {
            Find(model.ProgramId, model.PeriodId, null);
         }
      }

      public void AddRecord(
         DataModels.ActivityPeriodRatingModel model, PersonModel person)
      {
         ActivityPeriodRatingInfo rating = new ActivityPeriodRatingInfo
         {
            EntityId = person.EntityId,
            ContentIdentifierId = model.ContentIdentifierId,
            ParticipantRoleNo = person.RoleCode.CodeNo.HasValue ?
               person.RoleCode.CodeNo.Value : 
               (short)ReferenceBaseType.Participant,
            ParticipantName = person.NameText,
            ReferenceDate = model.ReferenceDate,
            ProgramId = model.ProgramId,
            PeriodId = model.PeriodId,
            ContentThreadId = model.ContentThreadId,
            ContentTemplateId = model.ContentTemplateId,
            ContentVersionNo = model.ContentVersionNo
         };

         Items.Add(rating);
      }

      public async void Find(string programId, string periodId, string entityId)
      {
         UpdateAll();

         // TODO: fix cardcoded option numbers; 9 = all, 1 = ratings only
         short option = (short)(StatusCodes.Items.Count == 0 ? 9 : 1);
         short referenceGroupTypeNo = 
            (short)ReferenceGroupType.EducationalInstitutions;

         var results = await services.ActivityRatingService.
            GetPeriodRatingRecord(null, null, null, periodId, programId, 
            referenceGroupTypeNo, entityId, option);

         if (results != null)
         {
            if (results.ResponseData != null)
            {
               Items.Clear();
               // TODO: deal with 2 and 9 constants
               if (option == 2 || option == 9)
               {
                  StatusCodes.Items.Clear();
                  ResultTypeCodes.Items.Clear();
                  RatingTypeCodes.Items.Clear();
                  ParticipantRoleCodes.Items.Clear();

                  StatusCodes.SetItems(results.ResponseData.ObjectStatus);
                  ResultTypeCodes.SetItems(
                     results.ResponseData.ActivityParticipationResultsType);
                  RatingTypeCodes.SetItems(
                     results.ResponseData.ActivityRatingType);
                  ParticipantRoleCodes.SetItems(
                     results.ResponseData.ParticipantRoleType);

                  if (ReferenceCodesAvailableEvent != null)
                  {
                     NotificationArgs args = new NotificationArgs();
                     args.EventData = null;
                     args.MessageText = String.Empty;
                     args.Type = NotificationType.CodeSetAvailable;
                     ReferenceCodesAvailableEvent(this, args);
                  }
               }

               if (results.ResponseData.ActivityRatings != null)
               {
                  foreach(var rating in results.ResponseData.ActivityRatings)
                  {
                     rating.RecordStatusCode = 
                        ActivityPeriodRatingInfo.RECORD_LOADED;
                     Items.Add(rating);
                  }
               }
            }
         }
      }

      public void ManageNotification(object sener, NotificationArgs args)
      {
         if (args.Type == NotificationType.DatePeriodChanged && m_State != null)
         {
            Find(m_State.ProgramId, m_State.PeriodId, null);
         }
      }

      public void FindByProgramPeriod()
      {
         if (!String.IsNullOrWhiteSpace(ProgramId) &&
             !String.IsNullOrWhiteSpace(PeriodId))
         {
            Find(ProgramId, PeriodId, String.Empty);
         }
      }

      public async void Update(ActivityPeriodRatingInfo item)
      {
         short optionNo = 1;  // update/insert retings
         var results = await services.ActivityRatingService.PostRating(
            null, optionNo, item);
         if (results != null && results.Success)
         {
            if (long.TryParse(results.ResponseData, out long ratingNo))
            {
               item.RatingNo = ratingNo;
               item.RecordStatusCode = ActivityPeriodRatingInfo.RECORD_LOADED;
            }
         }
         else
         {

         }
      }

      public async void UpdateAll()
      {
         SelectedItem = null;
         await Task.Run(() =>
         {
            foreach(var i in Items)
            {
               if (i.ChangedIndicator)
               {
                  Update(i);
               }
            }
         });
      }

   }

}

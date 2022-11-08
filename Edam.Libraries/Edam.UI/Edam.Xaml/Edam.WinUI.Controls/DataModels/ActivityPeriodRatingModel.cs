using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml;

// -----------------------------------------------------------------------------
using Edam.UI.DataModel.Activities;
using Edam.UI.DataModel.Entities;
using Edam.WinUI.Controls.ViewModels;
using local = Edam.Uwp.ViewModels;

namespace Edam.WinUI.Controls.DataModels
{

   public class ActivityPeriodRatingModel
   {

      public ActivityProgramModel Program { get; set; }
      public DatePeriodModel DatePeriod { get; set; }
      public PersonViewModel Persons { get; set; }
      public ActivityPeriodRatingViewModel Ratings { get; set; }

      public string ProgramId
      {
         get { return Program.SelectedProgram.ProgramId; }
      }

      public DateTimeOffset ReferenceDate
      {
         get { return DatePeriod.ReferenceDate; }
      }

      public string PeriodId
      {
         get { return DatePeriod.SelectedPeriodId; }
      }

      public string ContentThreadId
      {
         get { return Program.SelectedContent == null ? String.Empty :
               Program.SelectedContent.ThreadId; }
      }

      public string ContentTemplateId
      {
         get { return Program.SelectedProgram.TemplateId; }
      }

      public string ContentIdentifierId
      {
         get { return Program.SelectedContent.IdentifierId; }
      }

      public int ContentVersionNo
      {
         get { return Program.SelectedProgram.ActivitiesVersionNo; }
      }

   }

}

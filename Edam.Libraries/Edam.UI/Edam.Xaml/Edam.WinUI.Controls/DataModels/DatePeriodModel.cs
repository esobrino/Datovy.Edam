using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.DataObjects.References;
using Edam.Helpers;
using Edam.DataObjects.ViewModels;
using Edam.WinUI.Controls.Common;

namespace Edam.WinUI.Controls.DataModels
{

   public class DatePeriodModel : ObservableObject
   {

      private ReferencePeriodDate m_PeriodDate = new ReferencePeriodDate();

      private string m_SelectedPeriodIdText;
      private ReferencePeriodInfo m_SelectedPeriod = new ReferencePeriodInfo();
      public NotificationEvent ManageNotification { get; set; }

      public string SelectedPeriodId
      {
         get { return m_SelectedPeriodIdText; }
         set
         {
            if (m_SelectedPeriodIdText != value)
            {
               m_SelectedPeriodIdText = value;
               OnPropertyChanged(nameof(SelectedPeriodId));
               if (ManageNotification != null)
               {
                  NotificationArgs args = new NotificationArgs();
                  args.EventData = m_SelectedPeriodIdText;
                  args.Type = NotificationType.DatePeriodChanged;
                  ManageNotification(this, args);
               }
            }
         }
      }

      public DateTimeOffset ReferenceDate
      {
         get { return m_PeriodDate.ReferenceDate; }
         set
         {
            if (m_PeriodDate.ReferenceDate != value)
            {
               m_PeriodDate.ReferenceDate = value.Date;
               OnPropertyChanged(nameof(ReferenceDate));
               SelectedPeriodId = m_PeriodDate.PeriodId;
            }
         }
      }

      public DatePeriodModel()
      {
         ReferenceDate = DateTime.Now;
      }

   }

}

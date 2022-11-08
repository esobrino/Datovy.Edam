using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Helpers;
using Edam.Diagnostics;
using System.Collections.ObjectModel;

namespace Edam.WinUI.Controls.ViewModels
{

   public class ReferenceDataValidationViewModel : ObservableObject
   {

      #region -- 1.00 - Fields and Properties

      private ResultsLog<MessageLogEntry> m_IssuesLog;
      public ResultsLog<MessageLogEntry> IssuesLog
      {
         get { return m_IssuesLog; }
      }

      private string m_IssuesSummaryText;
      public string IssuesSummaryText
      {
         get { return m_IssuesSummaryText; }
         set
         {
            if (m_IssuesSummaryText != value)
            {
               m_IssuesSummaryText = value;
               OnPropertyChanged("IssuesSummaryText");
            }
         }
      }

      private ObservableCollection<IMessageLogEntry> m_IssuesDetails =
         new ObservableCollection<IMessageLogEntry>();
      public ObservableCollection<IMessageLogEntry> IssuesDetails
      {
         get { return m_IssuesDetails; }
         set
         {
            if (m_IssuesDetails != value)
            {
               m_IssuesDetails = value;
               OnPropertyChanged("IssuesDetails");
            }
         }
      }

      #endregion
      #region -- 1.20 - Initialization...

      public void SetupIssues(ResultsLog<MessageLogEntry> issues)
      {
         IssuesSummaryText = issues.Messages.Count.ToString() 
            + " Issues Found.";
         foreach(var m in issues.Messages)
         {
            IssuesDetails.Add(m);
         }
      }

      #endregion

   }

}

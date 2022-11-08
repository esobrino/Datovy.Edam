using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections.ObjectModel;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Input;

// -----------------------------------------------------------------------------
using Edam.DataObjects.ReferenceData;
using Edam.Helpers;
using Edam.DataObjects.ViewModels;
using Edam.DataObjects.Models;
using Edam.DataObjects.Documents;
using Edam.Diagnostics;
using Edam.DataObjects.Data;
using Edam.UI;
using Edam.DataObjects.Dynamic;

// -----------------------------------------------------------------------------

namespace Edam.WinUI.Controls.ReferenceData
{
   public class ReferenceDataValidationControl
   {

      public static async Task ShowValidationDialog(
         ResultsLog<MessageLogEntry> issues)
      {
         ReferenceDataValidationContentDialog dlg = new();
         dlg.ViewModel.SetupIssues(issues);
         ContentDialogResult result = await dlg.ShowAsync();
         if (result == ContentDialogResult.Primary)
         {
            // Terms of use were accepted.
         }
         else
         {
            // User pressed Cancel, ESC, or the back arrow.
            // Terms of use were not accepted.
         }
      }

   }
}

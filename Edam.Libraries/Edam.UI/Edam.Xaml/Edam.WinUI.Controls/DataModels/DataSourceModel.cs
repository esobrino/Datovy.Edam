using Edam.Application;
using Edam.Data.Asset;
using Edam.Data.AssetManagement;
using Edam.DataObjects.Dynamic;
using Edam.DataObjects.Models;
using Edam.WinUI.Controls.Dialogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Helpers;
using Edam.Data;
using app = Edam.UI.App;

namespace Edam.WinUI.Controls.DataModels
{

   public class DataSourceModel : ObservableObject
   {

      #region -- 1.00 - Properties

      private const string DIALOG_RECORD_FORM = "DataSource.Dialog";
      private const string DIALOG = "DataSource";
      private const string DIALOG_DETAILS = "Default Data Source";

      private DataSourceInfo m_DataSource = new DataSourceInfo();

      #endregion
      #region -- 4.00 - Data Source Add/New Dialog Support Methods

      /// <summary>
      /// Process domain dialog results...
      /// </summary>
      /// <param name="result">results</param>
      private void ProcessDialogResult(IDialogObjectInfo result)
      {
         var rslt = result as Dialogs.IDialogObjectInfo;
         if (rslt == null || String.IsNullOrWhiteSpace(rslt.CommandText))
         {
            return;
         }

         ElementNodeInfo node = result.DataObject as ElementNodeInfo;
         if (rslt.CommandText == Dialogs.DialogBox.SUBMIT && node != null &&
            node.Description == DIALOG_DETAILS)
         {
            // fetch Domain info from editor results
            ModelExpandoObject.GetData<DataSourceInfo>(
               result.Result, m_DataSource);

            try
            {
               app.AppSettings.SetDataSource(m_DataSource);
            }
            catch (Exception ex)
            {
               Session.ShowMessageBox("Fail Request", ex.Message);
            }
         }
      }

      /// <summary>
      /// Add a new Project...
      /// </summary>
      public void ShowDomainEditor(DataSourceInfo dataSource = null)
      {
         ElementNodeInfo node = ApplicationElementInfo.GetElementNode(
            DIALOG_RECORD_FORM, DIALOG, DIALOG_DETAILS);

         node.SetItemValue(nameof(DataSourceInfo.ConnectionString), 
            dataSource == null ? String.Empty : dataSource.ConnectionString);

         DialogBox.ShowDialog(node, DIALOG_DETAILS,
            ProcessDialogResult, DialogBox.SUBMIT);
      }

      #endregion
      #region -- 4.00 - Initialize Data Source

      /// <summary>
      /// Make sure a data source exists.
      /// </summary>
      public static void VerifyDefaultDataSource()
      {
         string cstring = DataSources.GetDefaultConnectionString();
         if (String.IsNullOrWhiteSpace(cstring))
         {
            DataSourceModel model = new DataSourceModel();
            model.ShowDomainEditor(null);
         }
      }

      #endregion

   }

}

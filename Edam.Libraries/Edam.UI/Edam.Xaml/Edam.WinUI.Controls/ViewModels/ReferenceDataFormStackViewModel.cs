using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;

// -----------------------------------------------------------------------------
using Edam.WinUI.Controls.Helpers;
using Edam.DataObjects.ReferenceData;
using Edam.DataObjects.Models;
using Edam.WinUI.Controls.ReferenceData;
using Edam.UI.DataModel.Models;
using Edam.Diagnostics;

namespace Edam.WinUI.Controls.ViewModels
{

   public class ReferenceDataFormStackViewModel : ElementComponentViewModel
   {

      #region -- 1.00 - Fields and Properties

      public ScrollViewer DataEditorControl { get; set; }
      private StackPanel m_EditorPanel = null;

      private int m_EditorWidth;
      public int EditorWidth
      {
         get { return m_EditorWidth; }
         set
         {
            if (m_EditorWidth != value)
            {
               m_EditorWidth = value;
               OnPropertyChanged("EditorWidth");
            }
         }
      }

      private RecordStatusControl m_RecordStatus = new RecordStatusControl();
      public RecordStatusControl RecordStatus
      {
         get { return m_RecordStatus; }
      }

      #endregion
      #region -- 1.50 - Initialize Resources

      public ReferenceDataFormStackViewModel()
      {
         ModelName = "ReferenceDataFormStack";
         m_RecordStatus.Items = RecordStatusControl.GetRecordStatusItems();
         RecordStatus.Title = RecordStatusControl.RECORD_STATUS_TITLE;
         EditorWidth = ControlHelper.EDITOR_WIDTH;
         PrepareButtons();
      }

      #endregion
      #region -- 4.00 - Setup Controls Data

      protected override void ShowValidationDialog(
         ResultsLog<MessageLogEntry> issues)
      {
         ReferenceDataValidationControl.ShowValidationDialog(issues);
      }

      protected override void SetEditorControlsData(
         dynamic row, List<ModelColumnInfo> columns)
      {
         ControlHelper.SetControlsData(row, m_Table.Columns);
      }

      /// <summary>
      /// Setup Editor Control based on given (dynamic) row usually be the same
      /// as the last "SelectedItem"...
      /// </summary>
      /// <param name="row"></param>
      protected override void SetEditorControlsData(dynamic row)
      {
         if (!m_Table.HasModel)
         {
            return;
         }

         SetEditorControlsData(row, m_Table.Columns);

         m_Table.SelectedRow = row;
         SetMessageStatus("New Item Selected!");
         SetActiveControlFocus();
      }

      #endregion
      #region -- 4.00 - Setup Editor Control

      protected override dynamic GetControlData(
         dynamic currentRow, List<ModelColumnInfo> items, out int changedCount)
      {
         return ControlHelper.GetControlsData(
            currentRow, items, out changedCount);
      }

      private void PrepareButtons()
      {
         SaveButtonText = "Save";
         CancelButtonText = "Cancel";
         NewButtonText = "New";
      }

      /// <summary>
      /// Get Control base on the column characteristics...
      /// </summary>
      /// <param name="column">Column to base control from</param>
      /// <returns>returns the control needed for the column</returns>
      private FrameworkElement GetControl(ModelColumnInfo column, MapInfo map)
      {
         if (column.ColumnName == RecordStatusControl.RECORD_STATUS_CODE)
         {
            return m_RecordStatus.GetControl(column);
         }

         return ControlHelper.GetControl(column, map);
      }

      /// <summary>
      /// Prepare Data Editor area based on provided ModelData.
      /// </summary>
      /// <param name="data">instance of ModelData</param>
      private async Task SetupDataEditor(ModelData data)
      {
         var node = m_ElementNodeGroup.GetNode(SelectedItem.Name);

         m_Table.Model = data;

         if (m_EditorPanel == null)
         {
            m_EditorPanel = new StackPanel
            {
               Orientation = Orientation.Vertical,
               Padding = ControlHelper.PrepareThickness(5, 5)
            };
         }

         m_EditorPanel.Children.Clear();

         FrameworkElement ctrl;
         foreach (var c in data.Columns)
         {
            // try to find a column map link related item
            MapInfo map = await m_ElementNodeGroup.GetMap(node, c.ColumnName);

            // add control
            ctrl = GetControl(c, map);
            if (c.ColumnName != RecordStatusControl.RECORD_STATUS_CODE)
            {
               m_EditorPanel.Children.Add(ctrl);
            }
            c.EditControl = ctrl;
         }

         DataEditorControl.Content = m_EditorPanel;
      }

      private void ModelDataClearAll()
      {
         if (m_Table.Model == null)
            return;
         m_Table.Model.Dispose();
      }

      /// <summary>
      /// Setup Data Editor area...
      /// </summary>
      /// <param name="data">instance of ModelData</param>
      protected override void SetupData(ModelData data)
      {
         if (m_EditorPanel != null)
         {
            m_EditorPanel.Children.Clear();
            m_EditorPanel = null;
         }

         // clean-up all disposable items (if any)...
         ModelDataClearAll();

         // setup data controls...
         base.SetupData(data);
         if (data == null)
         {
            return;
         }

         // setup UI components
         SetupDataEditor(data);
      }

      #endregion
      #region -- 4.00 - Form Setup and preparation...

      public void FormSetup(dynamic row)
      {
         ControlHelper.SetControlsData(row, m_Table.Columns);
         m_Table.SelectedRow = row;
         SetMessageStatus(row == null ? NO_RECORD_SELECTED : NEW_ITEM_SELECTED);
      }

      public void FormViewPrepare(ElementGroup elementGroup,
         ElementGroupItem item, ModelData data = null)
      {
         ModelData model = data ?? ModelData.GetModelData(elementGroup);

         m_ElementNodeGroup = new ElementNodeGroup(elementGroup);
         m_SelectedItem = item;
         SetupData(model);
      }

      #endregion

   }

}

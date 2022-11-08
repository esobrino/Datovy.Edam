using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;

// -----------------------------------------------------------------------------
using Edam.WinUI.Controls.Helpers;
using Edam.UI.DataModel.Models;
using Edam.DataObjects.Models;
using Edam.Diagnostics;

namespace Edam.WinUI.Controls.ViewModels
{

   public class ReferenceDataFormViewModel : ElementComponentViewModel
   {

      #region -- 1.00 - Fields and Properties

      public Frame FormFrame { get; set; }
      public ScrollViewer FormScrollViewerControl { get; set; }
      private FormControl m_FormInstance = null;

      private string m_FormTitle;
      public string FormTitle
      {
         get { return m_FormTitle; }
         set
         {
            if (m_FormTitle != value)
            {
               m_FormTitle = value;
               OnPropertyChanged("FormTitle");
            }
         }
      }

      private Visibility m_FormAvailable;
      public Visibility FormAvailable
      {
         get { return m_FormAvailable; }
         set
         {
            if (m_FormAvailable != value)
            {
               m_FormAvailable = value;
               OnPropertyChanged("FormAvailable");
            }
         }
      }

      private Visibility m_FormVisibility;
      public Visibility FormVisibility
      {
         get { return m_FormVisibility; }
         set
         {
            if (m_FormVisibility != value)
            {
               m_FormVisibility = value;
               OnPropertyChanged("FormVisibility");
            }
         }
      }

      public bool IsVisible
      {
         get { return m_FormVisibility == Visibility.Visible; }
         set
         {
            FormVisibility = value ? Visibility.Visible : Visibility.Collapsed;
         }
      }

      private RecordStatusControl m_RecordStatus = new RecordStatusControl();
      public RecordStatusControl RecordStatus
      {
         get { return m_RecordStatus; }
      }

      #endregion
      #region -- 1.50 - Initialize Resources

      private void InitializeControl()
      {
         ModelName = "ReferenceDataForm";
         RecordStatus.Title = RecordStatusControl.RECORD_STATUS_TITLE;
      }

      public ReferenceDataFormViewModel()
      {
         InitializeControl();
      }

      public ReferenceDataFormViewModel(
         Frame formFrame, ScrollViewer scrollViewer)
      {
         FormFrame = formFrame;
         FormScrollViewerControl = scrollViewer;
         InitializeControl();
      }

      #endregion
      #region -- 4.00 - Setup Controls Data

      protected override void ShowValidationDialog(
         ResultsLog<MessageLogEntry> issues)
      {
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
         FormSetup(row);
      }

      #endregion
      #region -- 4.00 - Manage Controls

      protected override dynamic GetControlData(
         dynamic currentRow, List<ModelColumnInfo> items, out int changedCount)
      {
         return ControlHelper.GetControlsData(
            currentRow, items, out changedCount);
      }

      #endregion
      #region -- 4.00 - Form View Manage

      public bool IsNodeHasForms(ElementNodeInfo node = null)
      {
         ElementNodeInfo n =
            node ?? m_ElementNodeGroup.GetNode(SelectedItem.Name);
         if (n.Groups == null || n.Groups.Count == 0)
         {
            return false;
         }
         return true;
      }

      public void Collapse()
      {
         FormVisibility = Visibility.Collapsed;
      }

      public void ToggleVisibility()
      {
         FormVisibility =
            FormVisibility == Visibility.Visible ?
               Visibility.Collapsed : Visibility.Visible;
      }

      public List<ModelColumnInfo> GetColumns()
      {
         return m_FormInstance.ModelData.Columns;
      }

      /// <summary>
      /// 
      /// </summary>
      /// <returns>true is returned if the form is cleared...</returns>
      public bool FormViewClearAll()
      {
         bool done = false;
         if (m_FormInstance != null)
         {
            FormVisibility = Visibility.Collapsed;
            FormAvailable = Visibility.Collapsed;
            m_FormInstance.Dispose();
            m_FormInstance = null;
            done = true;
         }
         return done;
      }

      public void FormViewPrepare()
      {
         if (m_FormInstance != null)
         {
            FormVisibility = Visibility.Visible;
         }
         else
         {
            ElementNodeInfo node = m_ElementNodeGroup.GetNode(SelectedItem.Name);
            if (IsNodeHasForms(node))
            {
               m_FormInstance = new FormControl(node, m_ElementNodeGroup);
               FormFrame.Content = m_FormInstance.PrepareForm();
               FormAvailable = Visibility.Visible;
               FormVisibility = Visibility.Collapsed;
            }
            else
            {
               FormAvailable = Visibility.Collapsed;
            }
         }
      }

      public void FormViewPrepare(
         ElementGroup elementGroup, ElementGroupItem item)
      {
         m_ElementNodeGroup = new ElementNodeGroup(elementGroup);
         m_SelectedItem = item;
         FormViewPrepare();
      }

      public void FormSetup(dynamic row)
      {
         if (m_FormInstance == null)
         {
            return;
         }
         ControlHelper.SetControlsData(
            row, m_FormInstance.ModelData.Columns);
      }

      #endregion

   }

}

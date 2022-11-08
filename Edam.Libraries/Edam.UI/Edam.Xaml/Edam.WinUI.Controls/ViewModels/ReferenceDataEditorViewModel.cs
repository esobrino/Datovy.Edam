using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Input;
using System.Threading.Tasks;

using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Controls;

// -----------------------------------------------------------------------------
using Edam.WinUI.Controls.Helpers;
using Edam.UI;
using Edam.UI.DataModel.Models;
using Edam.DataObjects.Documents;
using Edam.DataObjects.Models;
using Edam.WinUI.Controls.ViewModels;
using Edam.DataObjects.ViewModels;
using System.Collections.ObjectModel;
using Edam.DataObjects.ReferenceData;
using Edam.WinUI.Controls.Application;
using Edam.WinUI.Controls.ReferenceData;
using Edam.Diagnostics;

namespace Edam.Uwp.ViewModels
{

   public class ReferenceDataEditorViewModel :
      ElementComponentViewModel, IMenuView
   {

      #region -- 1.00 - Fields and Properties

      public IMenuItemParent ParentMenu { get; set; }
      public const string SPANISH_DESCRIPTION = "SpanishDescription";

      public const int CHAR_SIZE = 8;

      public ReferenceDataFormViewModel FormViewModel { get; set; }
      public ReferenceDataFormStackViewModel FormStackViewModel { get; set; }
      public ReferenceDataGridViewModel DataGridViewModel { get; set; }

      public ScrollViewer DataEditorControl { get; set; }
      public SplitView DataEditorViewControl { get; set; }

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

      private ObservableCollection<ReferenceDataTemplateInfo>
         m_RefereneDataTemplateList;
      public ObservableCollection<ReferenceDataTemplateInfo>
         ReferenceDataTemplateList
      {
         get { return m_RefereneDataTemplateList; }
         set
         {
            if (m_RefereneDataTemplateList != value)
            {
               m_RefereneDataTemplateList = value;
               OnPropertyChanged("ReferenceDataTemplateList");
            }
         }
      }

      private ReferenceDataTemplateInfo m_ReferenceDataTemplateInfo;
      public ReferenceDataTemplateInfo SelectedTemplate
      {
         get { return m_ReferenceDataTemplateInfo; }
         set
         {
            if (m_ReferenceDataTemplateInfo != value)
            {
               m_ReferenceDataTemplateInfo = value;
               OnPropertyChanged("SelectedTemplate");
               SetupTemplate(value);
            }
         }
      }

      #endregion
      #region -- 1.00 - Commands

      public ICommand GoBackCommand { protected set; get; }
      public ICommand ViewTreeDataRefreshCommand { protected set; get; }

      #endregion
      #region -- 1.20 - Initialization...

      public ReferenceDataEditorViewModel() : base()
      {
         InitializeCommands();
         ModelName = "ReferenceDataEditor";
         ReferenceDataTemplateList = ApplicationHelper.ReferenceDataTemplates;
         InViewer = Visibility.Visible;
         ShowRefresh = false;
         EditorWidth = ControlHelper.EDITOR_WIDTH;
         GetItems();
      }

      #endregion
      #region -- 2.00 - MVVM Commands

      private void InitializeCommands()
      {
         ViewTreeDataRefreshCommand = new Command(OnViewTreeDataRefresh);
      }

      #endregion
      #region -- 4.00 - Command Methods

      #endregion
      #region -- 4.00 - Form Support

      protected override void ShowValidationDialog(
         ResultsLog<MessageLogEntry> issues)
      {
         ReferenceDataValidationControl.ShowValidationDialog(issues);
      }

      public void ShowDataEditorView()
      {
         if (DataEditorViewControl.Visibility == Visibility.Collapsed)
         {
            DataEditorViewControl.Visibility = Visibility.Visible;
         }
      }

      public void ToggleDataEditorView()
      {
         FormViewModel.ToggleVisibility();
         DataEditorViewControl.Visibility =
            FormViewModel.IsVisible ? Visibility.Collapsed : Visibility.Visible;
      }

      public void RowSelected(object sender, ReferenceDataGridRowEventArgs args)
      {
         SelectedRow = args.AfectedRow;
      }

      #endregion
      #region -- 4.00 - Prepare / Setup Controls

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
         SetMessageStatus(NEW_ITEM_SELECTED);
         SetActiveControlFocus();
         DataGridViewModel.SelectedRow = row;
         FormStackViewModel.FormSetup(row);
         FormViewModel.FormSetup(row);
      }

      #endregion
      #region -- 4.00 - Setup Editor - Grid and Controls

      protected override dynamic GetControlData(
         dynamic currentRow, List<ModelColumnInfo> items, out int changedCount)
      {
         return ControlHelper.GetControlsData(
            currentRow, items, out changedCount);
      }

      private void ModelDataClearAll()
      {
         m_Table.Dispose();
      }

      protected override void SetupTemplateList()
      {
         if (ReferenceDataTemplateList != null && 
            ReferenceDataTemplateList.Count > 0 &&
            ReferenceDataTemplateList[0].
               Metadata.TemplateName == ApplicationHelper.REFERENCE_DATA)
         {
            ReferenceDataTemplateList[0].ElementNodeGroup = m_ElementNodeGroup;
            ReferenceDataTemplateList[0].ElementGroupItem = ElementGroupItem;
         }
      }

      /// <summary>
      /// Clean all resources to start presenting others...
      /// </summary>
      private void CleanAll()
      {
         // clean-up and manage any existing Form
         if (FormViewModel.FormViewClearAll())
         {
            ShowDataEditorView();
         }

         // clean-up data grid
         DataGridViewModel.ClearAll();

         // clean-up all disposable items (if any)...
         ModelDataClearAll();
      }

      /// <summary>
      /// Show selected template...
      /// </summary>
      /// <param name="template">template instance</param>
      protected ElementGroupItem SetupTemplate(
         ReferenceDataTemplateInfo template)
      {
         // clean-up any previous template...
         CleanAll();

         // apply new template
         if (template == null)
            return ElementGroupItem;
         if (template.Metadata.TemplateName == ApplicationHelper.REFERENCE_DATA)
         {
            ElementGroupItem = template.ElementGroupItem;
            m_ElementNodeGroup = template.ElementNodeGroup;
            return ElementGroupItem;
         }
         else if (template.ElementGroupItem == null)
         {
            var group = ElementGroupInfo.ToElementGroup(template.Templates);
            template.ElementGroupItem = SetElementGroup(group);
            template.ElementNodeGroup = m_ElementNodeGroup;
         }
         ElementGroupItem = template.ElementGroupItem;
         m_ElementNodeGroup = template.ElementNodeGroup;

         return ElementGroupItem;
      }

      /// <summary>
      /// Setup Data Editor area...
      /// </summary>
      /// <param name="data">instance of ModelData</param>
      protected override void SetupData(ModelData data)
      {
         CleanAll();
         m_Table.Model = data;

         if (data.ParentNode != null)
         {
            SetItemTitle(null, 
               data.ParentNode.Title + " (" + m_Table.Type.ToString() + ")");
         }

         // setup data controls...
         base.SetupData(data);
         if (data == null)
         {
            return;
         }

         // calculate max-row
         if (data.Data != null)
         {
            m_Table.SetMaxRowNumber(data.Data);
         }

         // setup UI components
         DataGridViewModel.SetupDataGrid(data);
         FormStackViewModel.FormViewPrepare(
            m_ElementNodeGroup, m_SelectedItem, data);
         FormViewModel.FormViewPrepare(m_ElementNodeGroup, m_SelectedItem);
      }

      #endregion
      #region -- 4.00 - On Editor Events (Save, Cancel, Add and Delete)

      private async Task RefreshContent()
      {
         await DataDocumentItem.Delete(
            DataDocumentItemHelper.REFERENCE_DATA_TEMPLATE_LISTS);
         await GetItems();
      }

      public void OnViewTreeDataRefresh()
      {
         RefreshContent();
      }


      #endregion
      #region -- 4.00 - Menu Support

      public void SetState(Object state)
      {

      }

      public void SetGroup(Object state = null)
      {

      }

      #endregion

   }

}

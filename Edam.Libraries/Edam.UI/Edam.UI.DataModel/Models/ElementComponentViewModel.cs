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
using Edam.Diagnostics;
using Edam.DataObjects.Documents;
using Edam.DataObjects.Dynamic;
using Edam.DataObjects.Logs;
using Edam.DataObjects.Models;
using Edam.DataObjects.Services;

namespace Edam.UI.DataModel.Models
{

   public abstract class ElementComponentViewModel : ObservableObject
   {

      #region -- 1.00 - Fields and Properties definitions

      public const string NO_RECORD_SELECTED =
         "No Record has been Selected";
      public const string NEW_ITEM_SELECTED = "New Item Selected.";

      public string ModelName { get; set; }
      protected DynamicTableInfo m_Table = new DynamicTableInfo();

      protected ElementNodeGroup m_ElementNodeGroup;
      protected ElementGroupItem m_ElementGroupItem;

      public ObservableCollection<dynamic> DataItems
      {
         get { return m_Table.Items; }
         set
         {
            if (m_Table.Items != value)
            {
               m_Table.Items = value;
               OnPropertyChanged("DataItems");
            }
         }
      }

      private string m_ItemTitle;
      public string ItemTitle
      {
         get { return m_ItemTitle; }
         set
         {
            if (m_ItemTitle != value)
            {
               m_ItemTitle = value;
               OnPropertyChanged("ItemTitle");
            }
         }
      }

      public ElementGroupItem ElementGroupItem
      {
         get { return m_ElementGroupItem; }
         set
         {
            if (m_ElementGroupItem != value)
            {
               m_ElementGroupItem = value;
               OnPropertyChanged("ElementGroupItem");
            }
         }
      }

      protected ElementGroupItem m_SelectedItem;
      public ElementGroupItem SelectedItem
      {
         get { return m_SelectedItem; }
         set
         {
            if (m_SelectedItem != value)
            {
               m_SelectedItem = value;
               OnPropertyChanged("SelectedItem");
               ItemTitle = value?.Title;
               GetReferenceData(value);
            }
         }
      }

      public dynamic SelectedRow
      {
         get { return m_Table.SelectedRow; }
         set
         {
            if (m_Table.SelectedRow != value)
            {
               OnPropertyChanged("SelectedRow");
               SetEditorControlsData(value);
            }
         }
      }

      private string m_MessageStatusText;
      public string MessageStatusText
      {
         get { return m_MessageStatusText; }
         set
         {
            if (m_MessageStatusText != value)
            {
               m_MessageStatusText = value;
               OnPropertyChanged("MessageStatusText");
            }
         }
      }

      private Visibility m_ItemRefreshVisible;
      public Visibility ItemRefreshVisible
      {
         get { return m_ItemRefreshVisible; }
         set
         {
            if (m_ItemRefreshVisible != value)
            {
               m_ItemRefreshVisible = value;
               OnPropertyChanged("ItemRefreshVisible");
            }
         }
      }

      private Visibility m_ItemTitleVisible;
      public Visibility ItemTitleVisible
      {
         get { return m_ItemTitleVisible; }
         set
         {
            if (m_ItemTitleVisible != value)
            {
               m_ItemTitleVisible = value;
               OnPropertyChanged("ItemTitleVisible");
            }
         }
      }

      private bool m_ShowRefresh;
      protected bool ShowRefresh
      {
         set
         {
            m_ShowRefresh = value;
            ItemRefreshVisible = value ?
               Visibility.Visible : Visibility.Collapsed;
            ItemTitleVisible = value ?
               Visibility.Collapsed : Visibility.Visible;
         }
      }

      private string m_SaveButtonText;
      public string SaveButtonText
      {
         get { return m_SaveButtonText; }
         set
         {
            if (m_SaveButtonText != value)
            {
               m_SaveButtonText = value;
               OnPropertyChanged("SaveButtonText");
            }
         }
      }

      private string m_CancelButtonText;
      public string CancelButtonText
      {
         get { return m_CancelButtonText; }
         set
         {
            if (m_CancelButtonText != value)
            {
               m_CancelButtonText = value;
               OnPropertyChanged("CancelButtonText");
            }
         }
      }

      private string m_NewButtonText;
      public string NewButtonText
      {
         get { return m_NewButtonText; }
         set
         {
            if (m_NewButtonText != value)
            {
               m_NewButtonText = value;
               OnPropertyChanged("NewButtonText");
            }
         }
      }

      #endregion
      #region -- 1.20 - Initialization...

      public ElementComponentViewModel()
      {
         PrepareButtons();
         SetMessageStatus();
         SetItemTitle(false, null);
      }

      #endregion
      #region -- 4.00 - Support Methods

      protected virtual void SetupData(ModelData data) { }

      protected abstract dynamic GetControlData(dynamic currentRow,
         List<ModelColumnInfo> items, out int changedCount);
      protected abstract void ShowValidationDialog(
         ResultsLog<MessageLogEntry> issues);

      protected void SetItemTitle(bool? showRefresh, string title)
      {
         ItemTitle = (String.IsNullOrWhiteSpace(title)) ?
            "Select Item" : title;
         if (showRefresh.HasValue)
         {
            ShowRefresh = showRefresh.Value;
         }
      }

      protected ElementGroupItem SetElementGroup(ElementGroup group)
      {
         m_ElementNodeGroup = new ElementNodeGroup(group);
         ElementGroupItem = m_ElementNodeGroup.ElementGroupItem;
         return ElementGroupItem;
      }

      #endregion
      #region -- 4.00 - Setup Controls Data

      protected virtual void SetEditorControlsData(dynamic data) { }
      protected virtual void SetEditorControlsData(
         dynamic row, List<ModelColumnInfo> columns)
      { }

      #endregion
      #region -- 4.00 - Prepare / Setup Controls

      private void PrepareButtons()
      {
         SaveButtonText = "Save";
         CancelButtonText = "Cancel";
         NewButtonText = "New";
      }

      #endregion
      #region -- 4.00 - Services (GET, POST and DELETE) Methods

      public void GetRemoteItems()
      {
         var a = ReferenceDataEditTemplateService.GetTemplate().
            ContinueWith(task => {
               InvokeOnMainThread(() =>
               {
                  var r = task.Result;
                  if (r.Success)
                  {
                     if (r.ResponseData != null)
                     {
                        var result = ReferenceDataEditTemplateHelper.
                           ToElementGroup(r.ResponseData);
                        if (result.Success)
                        {
                           SetElementGroup(ElementGroupInfo.ToElementGroup(
                              result.Data.Items));
                           SetupTemplateList();
                           SaveToLocalItems(m_ElementNodeGroup);
                        }
                     }
                  }
               }
               );
            }, TaskContinuationOptions.OnlyOnRanToCompletion);
      }

      protected async void SaveToLocalItems(ElementGroup group)
      {
         var results =
            await DataDocumentItem.SaveItem<ElementGroup>(
               DataDocumentItemHelper.REFERENCE_DATA_TEMPLATE_LISTS, group,
               "Reference Data Template List");
         SetItemTitle(results == 0, ItemTitle);
      }

      public async Task<bool> GetLocalItems()
      {
         var group = await DataDocumentItem.GetItem<ElementGroup>(
               DataDocumentItemHelper.REFERENCE_DATA_TEMPLATE_LISTS);
         SetItemTitle(group != null, ItemTitle);
         if (group != null)
         {
            SetElementGroup(group);
            SetupTemplateList();
            return true;
         }
         return false;
      }

      public async Task GetItems()
      {
         var done = await GetLocalItems();
         if (done)
            return;
         GetRemoteItems();
      }

      public void GetItem(ElementGroupItem item)
      {
         var node = m_ElementNodeGroup.GetNode(item);
         if (node == null)
            return;

         var a = ReferenceDataEditTemplateService.GetTemplate(
            node.TemplateNo, groupNo: -1, optionNo: 0).
            ContinueWith(task => {
               InvokeOnMainThread(() =>
               {
                  var r = task.Result;
                  if (r != null && r.Success)
                  {
                     if (r.ResponseData != null)
                     {

                     }
                  }
               }
               );
            }, TaskContinuationOptions.OnlyOnRanToCompletion);
      }

      public async Task GetReferenceData(ElementGroupItem item)
      {
         var node = m_ElementNodeGroup.GetNode(item);
         if (node == null)
         {
            return;
         }

         m_Table.ClearData();
         ModelData model = null;
         if (node.TemplateType == ResourceType.Dynamic)
         {
            model = await GetTemplateData(node);
            SetupData(model);
            return;
         }

         var a = ReferenceDataEditTemplateService.GetReferenceData(
            node.TemplateNo, optionNo:
               ReferenceDataOption.TemplateAndGroupAndMapLinks).
               ContinueWith(task => {
                  InvokeOnMainThread(() =>
                  {
                     var r = task.Result;
                     if (r != null && r.Success)
                     {
                        if (r.ResponseData != null)
                        {
                           if (r.ResponseData.Count > 0)
                              model = ModelData.FromJson(
                                 r.ResponseData[0], node);
                           m_Table.Items = model.Data;
                           SetupData(model);
                           ElementNodeGroup.SaveToLocalItems(node, model);
                        }
                     }
                  }
                  );
               }, TaskContinuationOptions.OnlyOnRanToCompletion);
      }

      public void SetMessageSaveStatus(bool savedIndicator)
      {
         // TODO: manage string constants...
         SetMessageStatus(savedIndicator ? "Saved" : "Save Failed");
      }

      /// <summary>
      /// Update Reference Data if any data element has changed.
      /// </summary>
      /// <param name="item">item whose node is updated with new values</param>
      public void UpdateReferenceData(ElementGroupItem item)
      {
         var node = m_ElementNodeGroup.GetNode(item);
         if (node == null)
            return;

         if (node.TemplateType == ResourceType.Dynamic)
         {
            PostTemplateData(node);
            return;
         }

         m_Table.ClearData();
         var a = ReferenceDataEditTemplateService.UpdateElementNode(
            node).ContinueWith(task => {
               InvokeOnMainThread(() =>
               {
                  var r = task.Result;
                  DataChangeLogItem.LogChanges(m_Table, true);
                  SetMessageSaveStatus(r != null && r.Success);
               }
               );
            }, TaskContinuationOptions.OnlyOnRanToCompletion);
      }

      #endregion
      #region -- 4.00 - Setup Templates / Groups

      /// <summary>
      /// Save Data-Set updates to local storage as needed to support Table that
      /// don't exists in the remote host.
      /// </summary>
      /// <param name="node">node that contains data to be updated</param>
      public async void PostTemplateData(ElementNodeInfo node)
      {
         var results = await ReferenceDataItem.SaveDataItemsAsJson(
            node.Name, m_Table.Items.ToList<dynamic>());
         DataChangeLogItem.LogChanges(m_Table, true);
         SetMessageSaveStatus(results == 0);
      }

      protected async Task<ModelData> GetTemplateData(ElementNodeInfo node)
      {
         ModelData data = ModelData.GetModelData(node);

         var ditems = await ReferenceDataItem.GetDataItemsFromJson(node.Name); 
         if (ditems != null)
         {
            data.Data = ditems;
         }
         return data;
      }

      protected virtual void SetupTemplateList()
      {
      }

      #endregion
      #region -- 4.00 - On Editor Events (Save, Cancel, Add and Delete)

      public void OnSave(object sender, RoutedEventArgs e)
      {
         // prepare record if not exists...
         m_Table.PrepareRow();

         // if any data-element has changed then update data...
         if (GetControlData())
         {
            var results = m_Table.ValidateRow();
            if (results.Success)
            {
               UpdateReferenceData(SelectedItem);
               m_Table.SetMaxRowNumber();
               SetMessageStatus("Validation Failed.");
            }
            else
            {
               ShowValidationDialog(results);
            }
         }
         SetActiveControlFocus();
      }

      /// <summary>
      /// Restore Row to their original control values...
      /// </summary>
      public void OnCancel(object sender, RoutedEventArgs e)
      {
         SetEditorControlsData(m_Table.SelectedRow);
      }

      public void OnNew(object sender, RoutedEventArgs e)
      {
         SetEditorControlsData(m_Table.CreateNewRow());
      }

      #endregion
      #region -- 4.00 - Get Data

      /// <summary>
      /// Prepare dynamic row using controls data...
      /// </summary>
      /// <returns>true if any data element has changed</returns>
      private bool GetControlData()
      {
         dynamic dataRow = GetControlData(m_Table.SelectedRow,
            m_Table.Columns, out int changedCount);

         int modifiedRowIndex = m_Table.Add(dataRow);
         if (modifiedRowIndex < 0)
         {
            return false;
         }
         //NotifyTableRowChanged(dataRow);
         return changedCount > 0;
      }

      #endregion
      #region -- 4.00 - Message Status Support

      /// <summary>
      /// Set Message Status.
      /// </summary>
      /// <param name="messageText">(optional message text</param>
      public void SetMessageStatus(string messageText = null)
      {
         if (String.IsNullOrWhiteSpace(messageText) &&
            m_Table.SelectedRow == null)
         {
            messageText = NO_RECORD_SELECTED;
         }
         else if (String.IsNullOrWhiteSpace(messageText))
         {
            MessageStatusText = String.Empty;
            return;
         }
         MessageStatusText = messageText + " - " +
            DateTime.Now.ToString("HH:mm:ss");
      }

      #endregion
      #region -- 4.00 - Manage Other Events

      /// <summary>
      /// Set focus to the first found active Editor control...
      /// </summary>
      protected void SetActiveControlFocus()
      {
         if (!m_Table.HasModel)
            return;

         foreach (var i in m_Table.Columns)
         {
            if (!i.Visible)
            {
               continue;
            }
            var ctrl = i.EditControl as Control;
            if (ctrl == null || !ctrl.IsEnabled)
               continue;
            ctrl.Focus(FocusState.Programmatic);
            break;
         }
      }

      public void TabKeyDownHandler(object sender, KeyRoutedEventArgs e)
      {
         if (e.Key == Windows.System.VirtualKey.Tab)
            SetActiveControlFocus();
         e.Handled = true;
      }

      #endregion

   }

}

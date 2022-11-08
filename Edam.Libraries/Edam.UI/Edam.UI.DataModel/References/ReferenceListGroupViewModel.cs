using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using System.Windows.Input;

using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml;

//using Xamarin.Forms;
//using device = Xamarin.Forms.Device;

// -----------------------------------------------------------------------------
using SQLite;
using Edam.Data;

using Edam.Diagnostics;
using Edam.DataObjects.References;
using Edam.DataObjects.Dashboards;
using Edam.DataObjects.ViewModels;
using Edam.DataObjects.Notes;
using Edam.Application;
using Edam.Helpers;
using Edam.DataObjects;
using Edam.DataObjects.Services;
using resource = Edam.Application.ApplicationHelper;
using Edam.UI;

namespace Edam.UI.DataModel.References
{

   public class ReferenceListGroupViewModel : ObservableObject, IMenuView
   {

      #region -- 1.00 - Properties and definitions...
      
      private String m_ReferenceEntityId = String.Empty;
      public String ReferenceEntityId
      {
         get { return m_ReferenceEntityId; }
         set
         {
            m_ReferenceEntityId = value ?? String.Empty;
            InEditor = !String.IsNullOrWhiteSpace(value) ? 
               Visibility.Visible : Visibility.Collapsed;
         }
      }

      public ReferenceListGroupType GroupType { get; set; }

      protected ObservableCollection<ReferenceListGroupModel> m_Items;
      public ObservableCollection<ReferenceListGroupModel> Items
      {
         get { return m_Items; }
         set
         {
            if (m_Items != value)
            {
               m_Items = value;
               OnPropertyChanged(DataElementName.Items);
            }
         }
      }

      private Boolean m_HasItems = false;
      public Boolean HasItems
      {
         get { return m_Items.Count > 0; }
         set
         {
            if (m_HasItems != (m_Items.Count > 0))
            {
               m_HasItems = m_Items.Count > 0;
               OnPropertyChanged("HasItems");
            }
         }
      }

      private ReferenceListGroupModel m_SelectedItem;
      public ReferenceListGroupModel SelectedItem
      {
         get { return m_SelectedItem; }
         set
         {
            if (m_SelectedItem == value)
            {
               m_SelectedItem = value;
               OnPropertyChanged(DataElementName.SelectedItem);
            }
         }
      }

      public ReferenceListGroup SelectedListGroup { get; set; }
      public IMenuItemParent ParentMenu { get; set; }

      private String m_StatusMessageText = null;
      public String StatusMessageText
      {
         get { return m_StatusMessageText; }
         set
         {
            if (m_StatusMessageText != value)
            {
               m_StatusMessageText = value;
               OnPropertyChanged(DataElementName.StatusMessageText);
            }
         }
      }

      #endregion
      #region -- 1.00 - Commands

      public ICommand SaveCommand { protected set; get; }

      #endregion
      #region -- 1.50 - Initialize Resources

      public ReferenceListGroupViewModel(ReferenceListGroupType type = 
         ReferenceListGroupType.TrainingFollowUp)
      {
         InitializeCommands();
         GroupType = ReferenceListGroupType.TrainingFollowUp;
         Items = new ObservableCollection<ReferenceListGroupModel>();
         SelectedListGroup = ReferenceListGroup.NewProspect;
      }

      #endregion
      #region -- 2.00 - MVVM Commands

      private void InitializeCommands()
      {
         SaveCommand = new Command(OnSave);
      }

      #endregion
      #region -- 4.00 - Support Methods

      #endregion
      #region -- 4.00 - Services (GET, POST and DELETE) Methods

      public ObservableCollection<ReferenceListGroupModel>
         ToObservableCollection(List<ReferenceListGroupInfo> list)
      {
         ObservableCollection<ReferenceListGroupModel> observable = 
            new ObservableCollection<ReferenceListGroupModel>();
         ReferenceListGroupModel model;
         foreach(var i in list)
         {
            model = new ReferenceListGroupModel(i);
            model.DefaultReferenceId = ReferenceEntityId;
            observable.Add(model);
         }
         return observable;
      }

      public void GetItems(String organizationId, String referenceId)
      {
         InEditor = Visibility.Collapsed;
         String oid = null;
         ReferenceEntityId = referenceId;
         if (String.IsNullOrWhiteSpace(organizationId))
            oid = Session.OrganizationId;
         if (String.IsNullOrWhiteSpace(oid) ||
             String.IsNullOrWhiteSpace(referenceId))
         {
            return;
         }
         
         if (Items != null)
            Items.Clear();

         InEditor = Visibility.Visible;
         var a = ReferenceGroupListService.GetRecords(null, null,
            oid, ReferenceEntityId, GroupType, (Int16)0).
            ContinueWith(task => {
               InvokeOnMainThread(() => 
               {
                  var r = task.Result;
                  if (r == null)
                  {
                     StatusMessageText =
                        resource.GetLocalString("RecordsFindFailed") + " (null)";
                     return;
                  }
                  if (r.Success)
                  {
                     if (r.ResponseData != null)
                     {
                        Items = ToObservableCollection(r.ResponseData);
                        StatusMessageText = Items.Count.ToString() + " " +
                           resource.GetLocalString("RecordsFound");
                     }
                     else
                        StatusMessageText =
                           resource.GetLocalString("RecordsNotReturned");
                  }
                  else
                     StatusMessageText = 
                        resource.GetLocalString("RecordsFindFailed");
               }
               );
            }, TaskContinuationOptions.OnlyOnRanToCompletion);
      }

      public void PostItems()
      {
         List<ReferenceListGroupInfo> items = 
            new List<ReferenceListGroupInfo>();
         foreach(var i in m_Items)
         {
            items.Add(i.Record);
         }
         var a = ReferenceGroupListService.PostUpdates(
            null, null, null, ReferenceEntityId, GroupType, 0, items).
            ContinueWith(task => {
               InvokeOnMainThread(() => 
               {
                  bool allOk = false;
                  var r = task.Result;
                  if (r != null && r.Success)
                  {
                     if (r.ResponseData == EventCode.Success)
                     {
                        IsAdding = Visibility.Collapsed;
                        StatusMessageText = 
                           resource.GetString("StatusSuccessSaving");
                        allOk = true;
                     }
                  }
                  if (!allOk)
                     StatusMessageText =
                        resource.GetString("StatusFailSaving");
               }
               );
            }, TaskContinuationOptions.OnlyOnRanToCompletion);
      }

      #endregion
      #region -- 4.00 - Command Methods

      public void OnSave()
      {
         StatusMessageText = String.Empty;
         PostItems();
      }

      #endregion
      #region -- 4.00 - Support Menus

      public void SetState(object state)
      {

      }

      #endregion

   }

}

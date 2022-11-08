using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;

// -----------------------------------------------------------------------------
using Edam.DataObjects.DataCodes;
using Edam.WinUI.Controls.Application;
using Edam.UI.DataModel.Entities;
using Edam.DataObjects.ViewModels;
using Edam.DataObjects.References;
using Edam.Helpers;

namespace Edam.WinUI.Controls.ViewModels
{

   public class ParticipantListViewModel : ObservableObject, IMenuView
   {

      #region -- 1.00 - Properties for Items - Persons Collection

      protected ObservableCollection<PersonModel> m_Items;
      public ObservableCollection<PersonModel> Items
      {
         get { return m_Items; }
         set
         {
            if (m_Items != value)
            {
               m_Items = value;
               OnPropertyChanged(nameof(Items));
               SetCodes();
            }
         }
      }

      public CodeValueListViewModel RoleCodes { get; set; } = 
         new CodeValueListViewModel();

      private PersonModel m_SelectedParticipant;
      public PersonModel SelectedParticipant
      {
         get { return m_SelectedParticipant; }
         set
         {
            if (value != m_SelectedParticipant)
            {
               m_SelectedParticipant = value;
               OnPropertyChanged(nameof(SelectedParticipant));
            }
         }
      }

      public IMenuItemParent ParentMenu { get; set; }

      public LableToggleViewModel ParticipantsToggle { get; set; }

      #endregion
      #region -- 1.10 - Constructure / Destructure

      public ParticipantListViewModel()
      {
         SetCodes();
         ParticipantsToggle = new LableToggleViewModel("PARTICIPANTS");
         ParticipantsToggle.Open();
      }

      #endregion
      #region -- 4.00 - Support for Code Sets

      public void SetCodes()
      {
         // add role code to the drop-down-box options...
         if (RoleCodes.Items.Count == 0)
         {
            var codes = ApplicationCode.CacheGet<CodeValueListViewModel>(
               ApplicationCode.KEY_PARTICIPANT_ROLE);
            if (codes != null)
            {
               RoleCodes.Items.Clear();
               foreach (var code in codes.Items)
               {
                  RoleCodes.Items.Add(code);
               }
            }
         }

         // make sure that each participant has a role assigned...
         if (Items != null && Items.Count > 0)
         {
            // find "Participant" role code to use as default role
            DataCodeInfo code = RoleCodes.Find(
               ((short)ReferenceBaseType.Participant).ToString());
            if (code == null)
            {
               return;
            }

            // go through each item and assign a role as needed
            foreach(var item in Items)
            {
               if (item.RoleCode == null)
               {
                  item.RoleCode = code;
               }
            }
         }
      }

      #endregion
      #region -- 4.00 - UI support...

      public void SetState(object state)
      {

      }

      #endregion

   }

}

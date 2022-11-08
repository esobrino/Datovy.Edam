using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using Microsoft.UI.Xaml;

// -----------------------------------------------------------------------------
using Edam.Helpers;
using Edam.DataObjects.Activities;
using services = Edam.DataObjects.Services;

namespace Edam.UI.DataModel.Activities
{

   public class ActivityProgramModel : ObservableObject
   {

      private ObservableCollection<ActivityProgramInfo> m_Items = 
         new ObservableCollection<ActivityProgramInfo>();
      public ObservableCollection<ActivityProgramInfo> Items
      {
         get { return m_Items; }
         set
         {
            if (m_Items != value)
            {
               m_Items = value;
               OnPropertyChanged(nameof(Items));
            }
         }
      }

      public ActivityProgramInfo m_SelectedProgram;
      public ActivityProgramInfo SelectedProgram
      {
         get { return m_SelectedProgram; }
         set
         {
            if (m_SelectedProgram != value)
            {
               m_SelectedProgram = value;
               OnPropertyChanged(nameof(SelectedProgram));
            }
         }
      }

      private ObservableCollection<ActivityContentInfo> m_Content =
         new ObservableCollection<ActivityContentInfo>();
      public ObservableCollection<ActivityContentInfo> Content
      {
         get { return m_Content; }
         set
         {
            if (m_Content != value)
            {
               m_Content = value;
               OnPropertyChanged(nameof(Content));
            }
         }
      }

      public ActivityContentInfo m_SelectedContent;
      public ActivityContentInfo SelectedContent
      {
         get { return m_SelectedContent; }
         set
         {
            if (m_SelectedContent != value)
            {
               m_SelectedContent = value;
               OnPropertyChanged(nameof(SelectedContent));
            }
         }
      }

      public ActivityProgramModel()
      {
         GetPrograms();
      }

      #region -- 4.00 - Find

      public async void GetPrograms()
      {
         var results = await services.ActivityProgramService.GetProgramRecord();

         if (results.Success)
         {
            Items.Clear();
            foreach (var activityProgram in results.ResponseData)
            {
               Items.Add(activityProgram);
            }
            if (Items.Count > 0)
            {
               SelectedProgram = Items[0];
               GetContent();
            }
         }
      }

      public async void GetContent()
      {
         var results = await 
            services.ActivityContentService.GetContentRecord(
               SelectedProgram.ProgramId);

         if (results.Success)
         {
            Content.Clear();
            foreach (var contentItem in results.ResponseData)
            {
               Content.Add(contentItem);
            }
            if (Content.Count > 0)
            {
               SelectedContent = Content[0];
            }
         }
      }

      #endregion

   }

}

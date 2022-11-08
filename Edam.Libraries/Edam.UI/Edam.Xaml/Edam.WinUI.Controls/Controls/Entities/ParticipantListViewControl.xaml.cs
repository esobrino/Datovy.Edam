using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
using local = Edam.Uwp.ViewModels;
using Edam.UI.DataModel.Entities;
using Edam.WinUI.Controls.Common;
using Edam.WinUI.Controls.ViewModels;

namespace Edam.WinUI.Controls.Entities
{

   public sealed partial class ParticipantListViewControl : UserControl
   {
      private ParticipantListViewModel m_ViewModel = 
         new ParticipantListViewModel();

      public ParticipantListViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         { 
            m_ViewModel = value;
         }
      }

      public NotificationEvent ParticipantNotification { get; set; }

      public ParticipantListViewControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
      }

      public void CodeSetsAvailableNotification(
         object sender, NotificationArgs args)
      {
         if (args.Type == NotificationType.CodeSetAvailable &&
            ViewModel.RoleCodes.Items.Count == 0)
         {
            ViewModel.SetCodes();
         }
      }

      private void ParticipantList_DoubleTapped(
         object sender, DoubleTappedRoutedEventArgs e)
      {
         var lview = sender as ListView;
         if (lview == null)
         {
            return;
         }
         if (lview.SelectedItems == null || lview.SelectedItems.Count == 0)
         {
            return;
         }
         var participant = lview.SelectedItem as PersonModel;
         if (participant == null)
         {
            return;
         }
         if (ParticipantNotification != null)
         {
            NotificationArgs args = new NotificationArgs
            {
               EventData = participant,
               Type = NotificationType.ParticipantSelected
            };
            ParticipantNotification(this, args);
         }
      }

      private void ParticipantList_SelectionChanged(
         object sender, SelectionChangedEventArgs e)
      {
         if (e.AddedItems.Count == 0)
         {
            return;
         }
         ViewModel.SelectedParticipant = e.AddedItems[0] as PersonModel;
      }
   }
}

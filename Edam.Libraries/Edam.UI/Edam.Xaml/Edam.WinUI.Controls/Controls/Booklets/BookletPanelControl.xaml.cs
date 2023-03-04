using DocumentFormat.OpenXml.Wordprocessing;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Markup;
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
using Edam.WinUI.Controls.ViewModels;
using Edam.WinUI.Controls.DataModels;
using Edam.WinUI.Controls.Common;

namespace Edam.WinUI.Controls.Booklets
{

   [ContentProperty(Name = "FrameContent")]
   public sealed partial class BookletPanelControl : UserControl
   {

      private BookViewModel m_ViewModel = new BookViewModel();
      public BookViewModel ViewModel
      {
         get { return m_ViewModel; }
      }

      public static DependencyProperty FrameContentProperty =
          DependencyProperty.Register("FrameContent", typeof(object),
             typeof(FramePanelControl), null);

      public object FrameContent
      {
         get => GetValue(FrameContentProperty);
         set => SetValue(FrameContentProperty, value);
      }

      public BookletPanelControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
         m_ViewModel.ManageEvent = ManageNotification;
      }

      public ListView GetListView()
      {
         return BookletList;
      }

      /// <summary>
      /// Capture events comming from child controls associated with this
      /// BookViewModel...
      /// </summary>
      /// <param name="sender"></param>
      /// <param name="args">event arguments</param>
      public void ManageNotification(object sender, NotificationArgs args)
      {
         if (args.Type == NotificationType.AddItem)
         {
            if (args.MessageText == "TEXT")
            {
               m_ViewModel.AddTextCell();
            }
            else
            {
               m_ViewModel.AddCodeCell();
            }
         }
         else if (args.Type == NotificationType.RemoveItem)
         {
            m_ViewModel.DeleteCell(args.EventData);
         }
         else if (args.Type == NotificationType.ExecuteItem)
         {

         }
      }

      public void ManageNotification(object sender, DataTreeEventArgs args)
      {
         MapSidePanel.ViewModel.ManageNotification(sender, args);
      }

      public void SetContext(DataMapContext context)
      {
         context.BookletViewList = BookletList;
         ViewModel.SetContext(context);
         MapSidePanel.ViewModel.Context = context;
      }

      private void AddCodeCell_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.AddCodeCell();
      }

      private void AddTextCell_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.AddTextCell();
      }

      private void DeleteCell_Click(object sender, RoutedEventArgs e)
      {
         m_ViewModel.DeleteCell();
      }

      private void BookletList_SelectionChanged(
         object sender, SelectionChangedEventArgs e)
      {

      }

      private void ExecuteBooklet_Click(object sender, RoutedEventArgs e)
      {
         ViewModel.Context.Execute(ViewModel.Model.SelectedBooklet);
      }

   }

}

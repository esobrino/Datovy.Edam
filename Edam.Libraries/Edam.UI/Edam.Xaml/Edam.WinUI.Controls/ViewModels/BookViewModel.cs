using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetProject;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;
using Edam.Helpers;
using Edam.WinUI.Controls.DataModels;
using System.Collections.ObjectModel;
using Edam.Data.Assets.AssetConsole;
using Edam.Json.JsonDataTree;
using Edam.WinUI.Controls.Common;
using Edam.WinUI.Controls.Booklets;
using Edam.Data.Booklets;

namespace Edam.WinUI.Controls.ViewModels
{

   public class BookViewModel : ObservableObject
   {

      public BookModel Book { get; set; } = new BookModel();
      public NotificationEvent ManageEvent { get; set; }
      public string JsonInstanceSample { get; set; } = String.Empty;

      private DataMapContext m_DataMapContext;
      public DataMapContext DataMapContext
      {
         get { return m_DataMapContext; }
      }

      public void FindBooklet(string bookletId)
      {
         var blet = Book.FindBooklet(bookletId);
      }

      public void SetMapContext(DataMapContext context)
      {
         m_DataMapContext = context;
      }

      public void AddTextCell()
      {
         var cell = Book.AddControl(this, BookletCellType.Text);
      }

      public void AddCodeCell()
      {
         var cell = Book.AddControl(this, BookletCellType.Code);
      }

      public void DeleteCell()
      {

      }

      public void NotifyEvent(
         NotificationType type, string messageText, object data = null)
      {
         if (ManageEvent != null)
         {
            NotificationArgs args = new NotificationArgs();
            args.Type = type;
            args.EventData = data ?? Book;
            args.MessageText = messageText;
            ManageEvent(this, args);
         }
      }

      public void ProcessCell(BookletCellInfo cell)
      {
         IBookCellView cellView = cell.Instance as IBookCellView;
         if (cellView != null)
         {
            string cellText = cellView.GetInputText();
            JsonInstanceSample = DataMapContext == null ? 
               String.Empty : DataMapContext.Source.JsonInstanceSample;

            if (string.IsNullOrEmpty(cellText) && 
               string.IsNullOrEmpty(JsonInstanceSample))
            {
               return;
            }

            // execute script here...
         }
      }

   }

}

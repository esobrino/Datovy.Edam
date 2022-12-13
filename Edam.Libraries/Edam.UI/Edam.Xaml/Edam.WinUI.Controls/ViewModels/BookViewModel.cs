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
using Microsoft.UI.Xaml.Controls;

namespace Edam.WinUI.Controls.ViewModels
{

   public class BookViewModel : ObservableObject
   {

      public BookModel Model { get; set; }
      public NotificationEvent ManageEvent { get; set; }
      public string JsonInstanceSample { get; set; } = String.Empty;

      private UserControl m_BaseControl;
      public UserControl BaseControl
      {
         get { return m_BaseControl; }
         set
         {
            BookletCellInfo cell = value.Tag as BookletCellInfo;
            if (cell != null)
            {
               SetCell(cell);
            }
            m_BaseControl = value;
         }
      }

      private DataUseCaseMapContext m_Context;
      public DataUseCaseMapContext Context
      {
         get { return m_Context; }
      }

      public BookletCellInfo Cell { get; set; }

      public string CellText
      {
         get
         {
            return Cell != null ? Cell.Text : string.Empty;
         }
         set
         {
            Cell.Text = value;
         }
      }

      public BookletCellInfo GetCell()
      {
         return Cell;
      }

      public void SetCell(BookletCellInfo cell)
      {
         Cell = cell;
      }

      public void FindBooklet(string bookletId)
      {
         var blet = Model.FindBooklet(bookletId);
      }

      public void SetContext(DataUseCaseMapContext context)
      {
         m_Context = context;
      }

      /// <summary>
      /// Add cell of given type.
      /// </summary>
      /// <param name="type">Text or Code cell type</param>
      public void AddCell(BookletCellType type)
      {
         if (Model == null || Model.Book != Context.UseCase.Book)
         {
            Model = new BookModel(Context.UseCase.Book);
            Model.ListView = Context.BookletViewList;
            Context.BookModel = this;
         }
         var cell = Model.AddControl(
            this, type, Context.SelectedItem.ItemId);
      }

      /// <summary>
      /// If the cell has already been defined call this method instead...
      /// </summary>
      /// <param name="cell">Booklet Cell</param>
      public void AddCell(BookletCellInfo cell)
      {
         Model.AddControl(
            this, cell.CellType, cell.ReferenceId, cell);
      }

      /// <summary>
      /// Add a Text cell.
      /// </summary>
      public void AddTextCell()
      {
         AddCell(BookletCellType.Text);
      }

      /// <summary>
      /// Add a Code cell.
      /// </summary>
      public void AddCodeCell()
      {
         AddCell(BookletCellType.Code);
      }

      public void DeleteCell(object item = null)
      {

      }

      public void NotifyEvent(
         NotificationType type, string messageText, object data = null)
      {
         if (ManageEvent != null)
         {
            NotificationArgs args = new NotificationArgs();
            args.Type = type;
            args.EventData = data ?? Model;
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
            JsonInstanceSample = Context == null ? 
               String.Empty : Context.Source.JsonInstanceSample;

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

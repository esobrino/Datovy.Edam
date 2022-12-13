using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;

// -----------------------------------------------------------------------------
using Edam.Data.Booklets;
using Edam.WinUI.Controls.Booklets;
using Edam.WinUI.Controls.ViewModels;

namespace Edam.WinUI.Controls.DataModels
{

   /// <summary>
   /// This class manage the inner Book and provide helpers to manage UI 
   /// resources and controls.
   /// </summary>
   public class BookModel
   {

      #region -- 1.00 - Properties and Fields declarations

      /// <summary>
      /// ListView show all added booklets and (code and text) cells...
      /// </summary>
      public ListView ListView { get; set; }

      private BookInfo m_Book;
      public BookInfo Book
      {
         get { return m_Book; }
      }
      public BookletInfo SelectedBooklet { get; set; } = new BookletInfo();

      #endregion
      #region -- 1.50 - Constructure

      public BookModel(BookInfo book)
      {
         if (book == null)
         {
            throw new Exception(
               "Expected an instance of a BookInfo null was found");
         }
         m_Book = book;
      }

      #endregion
      #region -- 4.00 - Book Booklet and Cells support

      /// <summary>
      /// Find a booklet... by booklet ID
      /// </summary>
      /// <param name="bookletId">booklet ID to find</param>
      /// <returns>returns instance of BookletInfo if found, else null</returns>
      public BookletInfo FindBooklet(string bookletId)
      {
         return Book.Find(bookletId);
      }

      /// <summary>
      /// Clear all adquired resources including the ListView entries and Book/
      /// Booklet/Cell inner Map Items and Controls...
      /// </summary>
      public void ClearAll()
      {
         ListView.Items.Clear();
         foreach(var booklet in Book.Items)
         {
            booklet.Items.Clear();
         }
         Book.Items.Clear();
      }

      /// <summary>
      /// Add booklet cell control to currently viewed map-item.
      /// </summary>
      /// <param name="model">instance of BookViewModel</param>
      /// <param name="cellType">cell type (code or text)</param>
      /// <param name="referenceId">parent map-item reference id</param>
      /// <param name="bookletCell">(optional) booklet cell</param>
      /// <returns>booklset cell as added</returns>
      public BookletCellInfo AddControl(
         BookViewModel model, BookletCellType cellType, string referenceId,
         BookletCellInfo bookletCell = null)
      {
         BookletCellInfo cell = bookletCell ?? new BookletCellInfo
         {
            BookletId = SelectedBooklet.BookletId,
            CellType = cellType,
            ReferenceId = referenceId,
            TextType = cellType == BookletCellType.Text ?
               BookletTextType.Markdown : BookletTextType.JSONata
         };

         SelectedBooklet.SelectedCell = cell;
         SelectedBooklet.Items.Add(cell);

         IBookCellView control = null;
         switch(cellType)
         {
            case BookletCellType.Code:
               var cctrl = new BookletCodeCellControl
               {
                  ViewModel = model,
                  Tag = cell
               };
               cctrl.FramePanel.Tag = cell;
               cctrl.SetCell(cell);
               control = cctrl;
               break;
            case BookletCellType.Text:
            default:
               var tctrl = new BookletTextCellControl
               {
                  ViewModel = model,
                  Tag = cell
               };
               tctrl.FramePanel.Tag = cell;
               tctrl.SetCell(cell);
               control = tctrl;
               break;
         }

         if (control != null)
         {
            ListView.Items.Add(control);
            cell.Instance = control;
         }

         var itm = Book.Items.Find(
            (x) => x.BookletId == SelectedBooklet.BookletId);
         if (itm == null)
         {
            Book.Items.Add(SelectedBooklet);
         }

         return cell;
      }

      #endregion

   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml;

// -----------------------------------------------------------------------------
using Edam.Data.Booklets;
using Microsoft.UI.Xaml.Controls;
using DocumentFormat.OpenXml.Wordprocessing;
using Edam.WinUI.Controls.Booklets;
using Edam.WinUI.Controls.ViewModels;

namespace Edam.WinUI.Controls.DataModels
{

   public class BookModel
   {

      public ListView ListView { get; set; }
      private BookInfo m_Book;
      public BookInfo Book
      {
         get { return m_Book; }
      }
      public BookletInfo SelectedBooklet { get; set; } = new BookletInfo();

      public BookModel(BookInfo book)
      {
         if (book == null)
         {
            throw new Exception(
               "Expected an instance of a BookInfo null was found");
         }
         m_Book = book;
      }

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

      public BookletInfo FindBooklet(string bookletId)
      {
         return Book.Find(bookletId);
      }

   }

}

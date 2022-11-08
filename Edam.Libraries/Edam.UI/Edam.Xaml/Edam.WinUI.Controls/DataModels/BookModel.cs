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
      public BookInfo Book { get; set; } = new BookInfo();
      public BookletInfo CurrentBooklet { get; set; } = new BookletInfo();

      public BookletCellInfo AddControl(
         BookViewModel model, BookletCellType cellType)
      {
         BookletCellInfo cell = new BookletCellInfo
         {
            ParentBookletId = CurrentBooklet.BookletId,
            CellType = cellType,
            TextType = cellType == BookletCellType.Text ?
               BookletTextType.Markdown : BookletTextType.JSONata
         };

         CurrentBooklet.SelectedCell = cell;

         IBookCellView control;
         switch(cellType)
         {
            case BookletCellType.Code:
               var cctrl = new BookletCodeCellControl
               {
                  ViewModel = model,
                  Tag = cell
               };
               cctrl.FramePanel.Tag = cell;
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
               control = tctrl;
               break;
         }

         if (control != null)
         {
            ListView.Items.Add(control);
            cell.Instance = control;
         }
         return cell;
      }

      public BookletInfo FindBooklet(string bookletId)
      {
         return Book.Find(bookletId);
      }

   }

}

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
using Edam.Data.Books;
using Microsoft.UI.Xaml.Controls;

namespace Edam.WinUI.Controls.ViewModels
{

   public class CellViewModel : ObservableObject
   {

      public BookViewModel ViewModel { get; set; }

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

   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.WinUI.Controls.Dialogs
{

   public interface IDialogObjectInfo
   {
      string CommandText { get; set; }
      string ItemType { get; set; }
      string ItemName { get; set; }
      object DataObject { get; set; }
      object Result { get; set; }
   }

}

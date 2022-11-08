using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.DataObjects.Models;

namespace Edam.WinUI.Controls.Dialogs
{

   public class DialogInfo : IDialogContentInfo
   {
      public const string ITEM_TYPE_FILE = "File";
      public const string ITEM_TYPE_PROJECT = "Project";

      public string Title { get; set; }
      public string Message { get; set; }
      public Action<IDialogObjectInfo> CallBack { get; set; }
      public string PrimaryText { get; set; }
      public string SecondaryText { get; set; }
      public string CloseText { get; set; }

      public string CommandText { get; set; }
      public string ItemType { get; set; }
      public string ItemName { get; set; }

      public object DataObject { get; set; }

      public object Result { get; set; }

      public ModelData ModelData { get; set; }
   }

}

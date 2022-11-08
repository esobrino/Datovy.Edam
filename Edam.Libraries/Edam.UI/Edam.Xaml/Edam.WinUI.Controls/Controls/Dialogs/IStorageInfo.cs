using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.InOut;

namespace Edam.WinUI.Controls.Dialogs
{

   public interface IStorageInfo : IDialogObjectInfo
   {
      FolderFileItemInfo StorageItem { get; set; }
      List<string> FileTypeFilter { get; set; }
      Action<IDialogObjectInfo> CallBack { get; set; }
   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using Windows.Storage;

// -----------------------------------------------------------------------------
namespace Edam.WinUI.Helpers
{
   public class FileHelper : Edam.InOut.IFileHelper
   {
      /// <summary>
      /// Get the local file full path using given file name.
      /// </summary>
      /// <param name="filename"></param>
      /// <returns></returns>
      public string GetLocalFilePath(string filename)
      {
         var path = Path.Combine(
            ApplicationData.Current.LocalFolder.Path, filename);
         return path;
      }
   }
}

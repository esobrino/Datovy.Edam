using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Diagnostics;
using Edam.Text;

namespace Edam.InOut
{

   public class FolderHelper
   {

      public static IResultsLog FileWordToUnderscoredWord(
         string inFilePath, string outFilePath)
      {
         ResultLog result = new ResultLog();
         try
         {
            TextFile f = new TextFile();
            f.FromFile(inFilePath);
            TextFile ucFile = f.MixCaseToUnderscoredWords(
               TextTokenOption.UpperCase);
            ucFile.ToFile(outFilePath);
            result.Succeeded();
         }
         catch (Exception ex)
         {
            result.Failed(ex);
         }
         return result;
      }

   }

}

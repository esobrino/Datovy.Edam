using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Text;
using Edam.Json.JsonHelper;
using UIApp = Edam.Application.Settings;

namespace Edam.Test.Library.Mapping
{

   public class BookHelper
   {

      public static void WriteResults(
         List<IParserResults> results, string fileName)
      {
         var path = UIApp.AppSettings.GetConsolePath() + 
            "/Temp/" + fileName;
         JsonParserResults.ToFile(path, results);
      }

      public static List<IParserResults> ReadResults(string fileName)
      {
         var path = UIApp.AppSettings.GetConsolePath() +
            "/Temp/" + fileName;
         return JsonParserResults.FromFile(path);
      }

   }

}

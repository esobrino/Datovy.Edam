using Edam.Application;
using Edam.Data.Asset.Services;
using Edam.Data.AssetConsole;
using Edam.Diagnostics;
using Edam.InOut;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Test.Library.Project
{

   public class ProjectHelper
   {

      /// <summary>
      /// Get Project (folder / path) Item.
      /// </summary>
      /// <param name="projectPath"></param>
      /// <returns></returns>
      public static ItemBaseInfo GetProjectItem(string projectPath)
      {
         ItemBaseInfo item = new ItemBaseInfo();
         string appPath = AppData.GetApplicationDataFolder();
         item.FromFullPath(appPath + projectPath, null);
         return item;
      }

      /// <summary>
      /// Process Item and return results...
      /// </summary>
      /// <remarks>Successful proccessing will have the arguments and Asset
      /// Elements list as the result-log data result (ResultValueObject)
      /// </remarks>
      /// <param name="item">item to process</param>
      /// <returns>Process results instance...</returns>
      public static ResultsLog<object> ProcessItem(ItemBaseInfo item)
      {
         ResultsLog<object> presults = ProjectConsole.ProcessItem(item);
         return presults;
      }

      /// <summary>
      /// Process Item and return results...
      /// </summary>
      /// <remarks>Successful proccessing will have the arguments and Asset
      /// Elements list as the result-log data result (ResultValueObject)
      /// </remarks>
      /// <param name="item">item to process</param>
      /// <returns>Process results instance...</returns>
      public static AssetConsoleArgumentsInfo? ProcessItemArguments(
         ItemBaseInfo item)
      {
         ResultsLog<object> presults = ProjectConsole.ProcessItem(item);
         return presults.Success ? 
            presults.ResultValueObject as AssetConsoleArgumentsInfo : null;
      }

   }

}

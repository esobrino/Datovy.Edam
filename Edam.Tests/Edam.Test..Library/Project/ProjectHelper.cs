using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using sett = Edam.Application.Settings;

using Edam.Application;
using Edam.Data.Asset.Services;
using Edam.Data.AssetConsole;
using Edam.Data.AssetManagement.Writers.Ddl;
using Edam.Diagnostics;
using prj = Edam.Data.AssetProject;
using Edam.InOut;

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

      /// <summary>
      /// Get Test Data Assets...
      /// </summary>
      /// <returns></returns>
      public static AssetConsoleArgumentsInfo? GetTestDataAssets(
         string filePath)
      {
         ItemBaseInfo item = new ItemBaseInfo();
         item.FromFullPath(filePath, null);
         ResultsLog<object> presults = ProjectConsole.ProcessItem(item);

         // write DDL
         AssetConsoleArgumentsInfo? args = null;
         if (presults.Success)
         {
            args = (AssetConsoleArgumentsInfo)presults.ResultValueObject;
            Edam.Data.AssetProject.Project.GotoProject(args);
         }
         return args;
      }

      /// <summary>
      /// Get Test Data Assets...
      /// </summary>
      /// <returns></returns>
      public static AssetConsoleArgumentsInfo? GetTestAppDataAssets(
         string filePath = null)
      {
         string appPath = AppData.GetApplicationDataFolder();
         string path = filePath ?? "Projects/Datovy.HC.CD/" +
            "Arguments/0001.HC.CD.Full.ToAssets.Args.json";
         return GetTestDataAssets(appPath + path);
      }

   }

}

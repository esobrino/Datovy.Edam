using System.Diagnostics;

using Edam.Test.Library;
using Edam.Test.Library.Application;
using Edam.Diagnostics;
using Edam.Data.AssetProject;
using Edam.Data.AssetConsole;
using Edam.Data.Asset.Services;
using Edam.InOut;
using Edam.Application;
using Edam.Data.AssetManagement.Writers.Ddl;

namespace Edam.Test.Ddl
{
   [TestClass]
   public class TestAssetToDdl
   {

      [TestInitialize]
      public void InitializeEnvironment()
      {
         ApplicationHelpers.InitializeApplication();
         Debug.Print("Initialized...");
      }

      [TestMethod]
      public void TestAssetToDdlFiles()
      {
         ItemBaseInfo item = new ItemBaseInfo();
         string appPath = AppData.GetApplicationDataFolder();
         item.FromFullPath(
            appPath + "Projects/Datovy.HC.RVCT/" +
            "Arguments/0002.HC.RVCT.ToDdl.Args.json", null);
         ResultsLog<object> presults = ProjectConsole.ProcessItem(item);

         // write DDL
         if (presults.Success)
         {
            AssetConsoleArgumentsInfo args = 
               (AssetConsoleArgumentsInfo)presults.ResultValueObject;
            Project.GotoProject(args);
            DdlWriter.WriteSchema(args);
         }
      }
   }
}
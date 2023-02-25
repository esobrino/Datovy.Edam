using System.Diagnostics;

using Edam.Test.Library;
using Edam.Test.Library.Application;
using Edam.Diagnostics;
using Edam.Data.AssetConsole.Services;
using Edam.Data.AssetConsole;
using Edam.Data.Asset.Services;
using Edam.InOut;
using Edam.Application;

namespace Edam.Test.Xsd
{

   [TestClass]
   public class TestXsdToAssetsProject
   {

      [TestInitialize]
      public void InitializeEnvironment()
      {
         ApplicationHelpers.InitializeApplication();
         Debug.Print("Initialized...");
      }

      [TestMethod]
      public void TestJsonToAssets()
      {
         ItemBaseInfo item = new ItemBaseInfo();
         string appPath = AppData.GetApplicationDataFolder();
         item.FromFullPath(
            appPath + "Projects/Datovy.HC.RVCT/" +
            "Arguments/0001.HC.RVCT.ToDictionary.Args.json", null);
         ResultsLog<object> presults = ProjectConsole.ProcessItem(item);
      }
   }

}
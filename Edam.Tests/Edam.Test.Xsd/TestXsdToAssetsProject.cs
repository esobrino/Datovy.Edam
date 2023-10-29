using System.Diagnostics;

using Edam.Test.Library;
using Edam.Test.Library.Application;
using Edam.Diagnostics;
using Edam.Data.AssetConsole.Services;
using Edam.Data.AssetConsole;
using Edam.Data.Asset.Services;
using Edam.InOut;
using Edam.Application;
using Edam.Test.Library.Project;

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
         ItemBaseInfo item = ProjectHelper.GetProjectItem(
            "Projects/Datovy.HC.RVCT/" +
            "Arguments/0001.HC.RVCT.ToAssets.Args.json");
         var presults = ProjectHelper.ProcessItem(item);
      }

      [TestMethod]
      public void TestWordDivision()
      {
         var result = Edam.Text.Convert.ToTitleCase("ABC_.ThisIsWord");

      }
   }

}
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
using Edam.Test.Library.Project;

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
         var args = ProjectHelper.GetTestAppDataAssets();
         if (args != null)
         {
            DdlWriter.WriteSchema(args);
         }
      }
   }
}
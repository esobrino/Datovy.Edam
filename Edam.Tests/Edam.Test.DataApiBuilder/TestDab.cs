using System.Diagnostics;

using Edam.Test.Library.Application;
using Edam.Test.Library.Project;
using Edam.Data.AssetConsole;
using Edam.Diagnostics;
using Edam.InOut;
using Edam.Api.DataApiBuilder;

namespace Edam.Test.DataApiBuilder
{
   [TestClass]
   public class TestDab
   {
      public const string DEFAULT_SAMPLE_FILE_NAME = "DefaultSample.json";

      [TestInitialize]
      public void InitializeEnvironment()
      {
         ApplicationHelpers.InitializeApplication();
         Debug.Print("Initialized...");
      }


      [TestMethod]
      public void TestEntityBuilder()
      {
         ItemBaseInfo item = ProjectHelper.GetProjectItem(
            "Edam.Studio/Edam.App.Data/Projects/Datovy.HC.CD/" +
            "Arguments/0001.HC.CD.Full.ToAssets.Args.json");
         ResultsLog<object> presults = ProjectHelper.ProcessItem(item);

         if (!presults.Success)
         {
            // TODO: put some assertions here...
            return;
         }

         // get arguments...
         AssetConsoleArgumentsInfo args = (AssetConsoleArgumentsInfo)
            presults.ResultValueObject;

         EntityBuilder builder = new EntityBuilder();
         var entities = builder.ElementToEntity(args);
         string jText = builder.ToJson(entities);
         File.WriteAllText("c:/temp/jText.dab.json", jText);
      }
   }
}

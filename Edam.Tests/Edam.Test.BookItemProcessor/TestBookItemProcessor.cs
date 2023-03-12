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
using Edam.Data.AssetUseCases;
using Edam.Test.Library.UseCase;
using Edam.Test.Library.DataTree;
using Edam.Data.Books;
using Edam.Json.JsonQuery;
using Edam.Json.JsonDataTree;
using Edam.Data.AssetSchema;
using Edam.Text;
using Edam.Test.Library.Mapping;

namespace Edam.Test.BookItemProcessor
{

   [TestClass]
   public class TestBookItemProcessor
   {
      public const string DEFAULT_SAMPLE_FILE_NAME = "DefaultSample.json";

      [TestInitialize]
      public void InitializeEnvironment()
      {
         ApplicationHelpers.InitializeApplication();
         Debug.Print("Initialized...");
      }

      [TestMethod]
      public void TestBookProcessing()
      {
         ItemBaseInfo item = ProjectHelper.GetProjectItem(
            "Projects/Datovy.HC.CD/" +
            "Arguments/0001.HC.CD.ToDictionary.Args.json");
         ResultsLog<object> presults = ProjectHelper.ProcessItem(item);

         if (!presults.Success)
         {
            // TODO: put some assertions here...
            return;
         }

         // get arguments...
         AssetConsoleArgumentsInfo args = (AssetConsoleArgumentsInfo)
            presults.ResultValueObject;

         // get use case...
         AssetUseCaseMap useCase = UseCaseHelper.GetUseCase(
            "Projects/Datovy.HC.CD/UseCases/UC.001.json");

         // get source data tree
         var sourceTree = DataTreeHelper.GetDataTree(args);

         // prepare sample JSON for tree
         var  instance = JsonDataTreeInstance.PrepareInstance(sourceTree.Root);
         string jsonSampleText = instance.JsonText;

         // get Book-Item processor
         IBookItemProcessor processor =
            Data.Books.BookHelper.GetBookItemProcessor(useCase, jsonSampleText);

         // execute book...
         var results = processor.Execute(useCase.Book);

         // write results to a JSON file...
         Library.Mapping.BookHelper.WriteResults(
            results, DEFAULT_SAMPLE_FILE_NAME);

         // read results from JSON file...
         results = Library.Mapping.BookHelper.ReadResults(
            DEFAULT_SAMPLE_FILE_NAME);
      }
   }

}

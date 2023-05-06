using System.Diagnostics;

using Edam.Test.Library.Application;
using Edam.InOut;
using Edam.Test.Library.Project;
using Edam.Data.AssetConsole;
using Edam.B2b.Edi;

namespace Edam.Test.Edi
{

    [TestClass]
   public class TestEdiJson
   {

      [TestInitialize]
      public void InitializeEnvironment()
      {
         ApplicationHelpers.InitializeApplication();
         Debug.Print("Initialized...");
      }

      [TestMethod]
      public void TestEdiLoopsAndTagsCollectionsPreparation()
      {
         ItemBaseInfo item = ProjectHelper.GetProjectItem(
            "Projects/Datovy.EDI/Arguments/0004.ToAssets.Args.json");
         var presults = ProjectHelper.ProcessItem(item);

         Assert.IsNotNull(presults);

         // prepare EDI Loops and Tags collections message
         var args =
            presults.ResultValueObject as AssetConsoleArgumentsInfo;
         var ilist = args.AssetDataItems;

         Assert.IsNotNull(ilist);
         var results = EdiDocument.ToDocument(args);
         Assert.IsNotNull(results);
         Assert.IsTrue(results.Success);

         var doc = results.ResultValueObject as EdiDocument;
         Assert.IsNotNull(doc);
         doc.ToFile("c:/temp/edi.json");

         // now load document instance
         var iresults = EdiInstance.FromFile(doc,
            "C:\\Users\\esobr\\Documents\\Edam.Studio\\Edam.App.Data\\" +
            "Projects\\Datovy.EDI\\Samples\\834.Sample.1.txt");

      }

   }

}

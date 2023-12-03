using System.Diagnostics;

using Edam.Test.Library.Project;
using Edam.Test.Library.Application;
using Edam.Data.Lexicon;
using Edam.Data.Lexicon.Vocabulary;
using Edam.Data.Lexicon.ImportExport;

namespace Edam.Test.Lexicon
{

   [TestClass]
   public class TestLexiconReader
   {

      [TestInitialize]
      public void InitializeEnvironment()
      {
         ApplicationHelpers.InitializeApplication();
         Debug.Print("Initialized...");
      }

      [TestMethod]
      public void ReadLexicon()
      {
         string LexiconFilePath =
            "c:/users/esobr/Documents/" +
            "Edam.Studio/Edam.App.Data/Templates/Lexicon/" +
            "Common.Lexicon.xlsx";

         List<string> uriList = new List<string>();
         uriList.Add(LexiconFilePath);

         var reader = new Data.Lexicon.ImportExport.ImportReader();
         var results = reader.ImportDataSet(uriList);
         DataSet? dataSet = results.DataObject as DataSet;
         Assert.IsNotNull(dataSet);

         Introspector intro = new Introspector(dataSet);
         intro.IntrospectElements();
      }

      [TestMethod]
      public void ExportLexicon()
      {
         DataSet data = new DataSet();
         var args = ProjectHelper.GetTestDataAssets();
         if (args != null)
         {
            var results = ExportWriter.ExportDataSet(args);
            data = results.DataObject as DataSet;
         }
      }

      [TestMethod]
      public void PersistLexicon()
      {
         DataSet data = new DataSet();
         var args = ProjectHelper.GetTestDataAssets();
         if (args != null)
         {
            var results = ExportWriter.ExportDataSet(args, false);
            data = results.DataObject as DataSet;

            data.ToLexiconAsync();
            Thread.Sleep(10000);
         }
      }

      [TestMethod]
      public void LoadLexicon()
      {
         DataSet data = new DataSet();
         data.FromLexicon("datovy.hc.cd.lexicon");
      }

      [TestMethod]
      public void DeleteLexicon()
      {
         DataSet data = new DataSet();
         data.DeleteLexicon("datovy.hc.cd.lexicon");
      }

      [TestMethod]
      public void TestLexiconDB()
      {
         Edam.Data.Lexicon.LexiconContext context = 
            new Edam.Data.Lexicon.LexiconContext();
         context.Database.EnsureCreated();
      }

   }

}

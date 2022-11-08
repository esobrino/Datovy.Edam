using NUnit.Framework;
using System.IO;

using Edam.Json.LinkData;

namespace Edam.JsonLd.Tests
{
   public class Tests
   {
      private string m_FilesFolder = "C:/Users/esobr/OneDrive/Public/";
      private string m_ContextFolder = "JSON-LD_Contexts";
      private string m_JsonDocFileName = "Incident.Subject.Sample.5.json";
      private string m_UseCaseName = "DMUC.IS001";

      private string GetContextFolder(string headerText = null)
      {
         var hText = string.IsNullOrWhiteSpace(headerText) ? 
            string.Empty : headerText + "_";
         return "./" + hText + m_ContextFolder + "/";
      }

      [SetUp]
      public void Setup()
      {
      }

      [Test]
      public void Test1()
      {
         Directory.SetCurrentDirectory(m_FilesFolder);
         //var jproc = JsonLdHelper.FromFile(
         //   m_JsonDocFileName, GetContextFolder()
         //   + "bkIncidentDocumentTypeContext.jsonld");

         string useCaseContext = GetContextFolder(m_UseCaseName) +
            "AllContext.jsonld";

         var jproc = JsonLdHelper.FromFile(m_JsonDocFileName, useCaseContext);

         var comout = jproc.Compact();
         var comtxt = comout.ToString();

         var expout = jproc.Expand(comout);
         var exptxt = expout.ToString();

         jproc.JsonText = expout.First.ToString();
         comout = jproc.Compact();

         comtxt = comout.ToString();

         //jproc.Context = File.ReadAllText(GetContextFolder(m_UseCaseName) + 
         //   "AllContext.jsonld");
         comout = jproc.Compact();
         comtxt = comout.ToString();

         expout = jproc.Expand(comout);
         exptxt = expout.ToString();

         Assert.Pass();
      }
   }
}

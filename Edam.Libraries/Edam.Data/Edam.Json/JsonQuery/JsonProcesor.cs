using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Data.AssetUseCases;
using Edam.Diagnostics;
using Edam.Data.Books;
using Edam.Json.JsonHelper;
using Edam.Text;

namespace Edam.Json.JsonQuery
{

   /// <summary>
   /// This is a default Book Item Procesor just for basic JSON / JSONata 
   /// execution...
   /// </summary>
   public class JsonProcesor : IBookItemProcessor
   {
      private AssetUseCaseMap m_UseCase;
      public AssetUseCaseMap UseCase
      {
         get { return m_UseCase; }
      }

      private string m_SampleJson;
      public string SampleJson
      {
         get { return m_SampleJson; }
      }

      public JsonProcesor(AssetUseCaseMap useCase, string sampleJson)
      {
         m_UseCase = useCase;
         m_SampleJson = sampleJson;
      }

      /// <summary>
      /// Scan for definitions.
      /// </summary>
      /// <param name="jsonText">jsonText to scan all definitions</param>
      public JsonParserResults ScanDefinitions(string jsonText)
      {
         // TODO: remove hardcoded string
         return JsonParser.ScanProperties(jsonText, "$definition");
      }

      /// <summary>
      /// Go through book booklets and cells operating under the given source
      /// instance (JsonSample) and providing a result.
      /// </summary>
      /// <param name="cell">provided cell</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      public IParserResults Execute(BookletCellInfo cell)
      {
         if (cell.CellType != BookletCellType.Code)
         {
            return null;
         }

         JsonParserResults parsedResults = null;
         var results = JsonQuery.Execute(SampleJson, cell.Text);
         if (results.Success)
         {
            parsedResults = ScanDefinitions(results.Data);
            parsedResults.OriginalText = cell.Text;
            parsedResults.ParentContext = cell;
            parsedResults.Context = cell;

            parsedResults.ResultText = results.ReturnText;
         }

         return parsedResults;
      }

      /// <summary>
      /// Go through book booklets and cells operating under the given source
      /// instance (JsonSample) and providing a result.
      /// </summary>
      /// <param name="booklet">provided booklet</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      public List<IParserResults> Execute(BookletInfo booklet)
      {
         List<IParserResults> results = new List<IParserResults>();
         ResultLog resultLog = new ResultLog();
         foreach (var item in booklet.Items)
         {
            var result = Execute(item);
            if (result != null)
            {
               result.ParentContext = booklet;
               results.Add(result);
            }
         }

         return results;
      }

      /// <summary>
      /// Go through book booklets and cells operating under the given source
      /// instance (JsonSample) and providing a result.
      /// </summary>
      /// <param name="book">provided book</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      public List<IParserResults> Execute(BookInfo book)
      {
         List<IParserResults> results = new List<IParserResults>();
         foreach (var item in book.Items)
         {
            var result = Execute(item);
            if (result != null)
            {
               foreach(var i in result)
               {
                  i.ParentContext = book;
               }
               results.AddRange(result);
            }
         }

         return results;
      }

   }

}

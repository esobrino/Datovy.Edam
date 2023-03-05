using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Data.AssetUseCases;
using Edam.Diagnostics;
using Edam.Data.Books;

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

      private JsonProcessorResults m_Results;
      public JsonProcessorResults Results
      {
         get { return m_Results; }
      }

      public JsonProcesor(AssetUseCaseMap useCase, string sampleJson)
      {
         m_UseCase = useCase;
         m_SampleJson = sampleJson;
      }

      /// <summary>
      /// Clear Results...
      /// </summary>
      public void ClearResults()
      {
         Results.Clear();
      }

      /// <summary>
      /// Go through book booklets and cells operating under the given source
      /// instance (JsonSample) and providing a result.
      /// </summary>
      /// <param name="cell">provided cell</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      public ResultLog Execute(BookletCellInfo cell)
      {
         if (cell.CellType != BookletCellType.Code)
         {
            ResultLog rslt = new ResultLog();
            rslt.ResultValueObject = null;
            rslt.ReturnValue = (int) EventCode.SuccessWithoutResults;
            rslt.Succeeded();
            return rslt;
         }

         var results = JsonQuery.Execute(SampleJson, cell.Text);

         Results.Add(results);
         return results;
      }

      /// <summary>
      /// Go through book booklets and cells operating under the given source
      /// instance (JsonSample) and providing a result.
      /// </summary>
      /// <param name="booklet">provided booklet</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      public ResultLog Execute(BookletInfo booklet)
      {
         ResultLog resultLog = new ResultLog();
         foreach (var item in booklet.Items)
         {
            Execute(item);
         }

         if (Results.ResultsLog.Count == 0)
         {
            resultLog.Succeeded();
         }
         else
         {
            resultLog.Failed(EventCode.Failed);
         }

         return resultLog;
      }

      /// <summary>
      /// Go through book booklets and cells operating under the given source
      /// instance (JsonSample) and providing a result.
      /// </summary>
      /// <param name="book">provided book</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      public ResultLog Execute(BookInfo book)
      {
         ResultLog resultLog = new ResultLog();
         foreach (var item in book.Items)
         {
            Execute(item);
         }

         if (Results.ResultsLog.Count == 0)
         {
            resultLog.Succeeded();
         }
         else
         {
            resultLog.Failed(EventCode.Failed);
         }

         return resultLog;
      }

      /// <summary>
      /// Scan for definitions.
      /// </summary>
      /// <param name="jsonText">jsonText to scan all definitions</param>
      public void ScanDefinitions(string jsonText)
      {

      }

   }

}

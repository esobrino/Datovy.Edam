using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Diagnostics;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Data.AssetSchema
{

   public class AssetDataItems : List<AssetData>
   {
      public AssetDataItems() : base()
      {

      }

      public static string ToJsonText(string filePath, AssetDataItems items)
      {
         return JsonConvert.SerializeObject(items,
            Formatting.Indented,
            new JsonSerializerSettings()
            {
               ReferenceLoopHandling = ReferenceLoopHandling.Ignore
            }
         );
         //return Serialization.Serialize.ToJsonString<AssetDataItems>(items);
      }

      public static string GetFilePath(AssetConsoleArgumentsInfo arguments)
      {
         return "files/" + arguments.ProcedureName + "." +
            arguments.Namespace.NamePath.VersionId + ".json";
      }

      public static ResultsLog<AssetDataItems> FromFile(string filePath)
      {
         ResultsLog<AssetDataItems> results = new ResultsLog<AssetDataItems>();
         if (System.IO.File.Exists(filePath))
         {
            string jsonText = System.IO.File.ReadAllText(filePath);
            results.Data =
               JsonConvert.DeserializeObject<AssetDataItems>(jsonText);
            results.Succeeded();
         }
         else
         {
            results.Failed(EventCode.ReferenceNotFound);
         }
         return results;
      }

      public static ResultsLog<AssetDataItems> FromFile(
         AssetConsoleArgumentsInfo arguments)
      {
         string fname = GetFilePath(arguments);
         return FromFile(fname);
      }

      public static IResultsLog ToFile(string filePath, AssetDataItems items)
      {
         ResultLog resultLog = new ResultLog();
         string jsonText = ToJsonText(filePath, items);
         if (!String.IsNullOrWhiteSpace(jsonText))
         {
            System.IO.File.WriteAllText(filePath, jsonText);
         }
         return resultLog;
      }

      public static IResultsLog ToFile(AssetConsoleArgumentsInfo arguments)
      {
         string fname = GetFilePath(arguments);
         var resultLog = ToFile(fname, arguments.AssetDataItems);
         resultLog.Succeeded();
         return resultLog;
      }
   }

}

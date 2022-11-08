using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.Asset;
using Edam.Data.AssetSchema;
using Edam.Json.JsonSchemaReader;

namespace Edam.Json.JsonExplore
{

   public class JsonInspector
   {
      private JsonSchemaSet m_SchemaSet = null;
      private AssetConsoleArgumentsInfo m_Arguments;

      public bool ToAssets
      {
         get { return m_Arguments.Procedure != AssetConsoleProcedure.Unknown; }
      }

      public bool ToAssetsReport
      {
         get
         {
            return m_Arguments.Procedure ==
            AssetConsoleProcedure.XsdToAssetsReport;
         }
      }

      public JsonInspector(AssetConsoleArgumentsInfo arguments)
      {
         m_Arguments = arguments;
         PrepareSchemaSet();
      }

      /// <summary>
      /// Given arguments prepare schema set.
      /// </summary>
      /// <returns>instance of schema set is returned</returns>
      private JsonSchemaSet PrepareSchemaSet()
      {
         if (String.IsNullOrWhiteSpace(m_Arguments.OutFileExtension))
            m_Arguments.OutFileExtension = "csv";

         m_SchemaSet = new JsonSchemaSet(null);

         // no URI list, try using arguments input-file if any
         if (m_Arguments.UriList.Count == 0)
         {
            var fresults = JsonSchemaInstance.FromFile(
               m_Arguments.InputFile.Full, null, m_SchemaSet);
            if (fresults.Success)
            {
               m_SchemaSet = fresults.Data;
            }
         }

         // URI list was given, scan all XSD's
         var uriList = UriResourceInfo.GetUriList(
            m_Arguments.UriList, UriResourceType.jsdjson);
         foreach (var i in uriList)
         {
            var fresults = JsonSchemaInstance.FromFile(i, null, m_SchemaSet);
         }

         // prepare use cases
         var useCases =
            PrepareUseCases(UriResourceInfo.GetUriList(
               m_Arguments.UriList, UriResourceType.json));
         m_Arguments.UseCases.AddRange(useCases);

         return m_SchemaSet;
      }

      /// <summary>
      /// Prepare Use Cases.
      /// </summary>
      /// <param name="items">list of XML instance files</param>
      /// <returns></returns>
      public static List<AssetUseCase> PrepareUseCases(List<string> items)
      {
         List<AssetUseCase> cases = new List<AssetUseCase>();
         foreach (var i in items)
         {
            var jsonText = System.IO.File.ReadAllText(i);
            var uc = new JsonHelper.JsonAssetUseCase(jsonText);
            if (uc.Success)
               cases.Add(uc.UseCase);
         }
         return cases;
      }

      /// <summary>
      /// 
      /// </summary>
      /// <param name="asset"></param>
      private AssetData ToOutput(AssetData asset, bool toOutput)
      {
         asset.MapDataTypes(m_Arguments.TextMapFilePath);
         asset.SetUseCases(m_Arguments);

         if (toOutput)
            asset.ToOutput(null, m_Arguments);

         return asset;
      }

      /// <summary>
      /// 
      /// </summary>
      private AssetData InspectSchema(bool toOutput)
      {
         if (m_SchemaSet.Count == 0)
            return null;
         JsonSchemaInspector r = new JsonSchemaInspector(m_SchemaSet);
         r.DefaultNamespace = m_Arguments.Namespace;
         r.Inspect();
         return ToOutput(r.Asset, toOutput);
      }

      /// <summary>
      /// 
      /// </summary>
      public void ToOutput()
      {
         if (ToAssetsReport)
            InspectSchema(true);
      }

      /// <summary>
      /// Given an XSD file write corresponding Asset definitions to requested
      /// format.
      /// </summary>
      /// <param name="arguments">list of string arguments</param>
      public static void ToFile(AssetConsoleArgumentsInfo arguments)
      {
         var i = new JsonInspector(arguments);
         i.ToOutput();
      }

      /// <summary>
      /// Given an XSD file write corresponding Asset definitions to requested
      /// format.
      /// </summary>
      /// <param name="args">list of string arguments</param>
      public static void ToFile(String[] args)
      {
         var arguments = AssetConsoleArgumentsInfo.FromArguments(args);
         ToFile(arguments);
      }

      /// <summary>
      /// Given an XSD file write corresponding Asset definitions to requested
      /// format.
      /// </summary>
      /// <param name="arguments">list of string arguments</param>
      public static AssetData ToAssetList(AssetConsoleArgumentsInfo arguments)
      {
         var i = new JsonInspector(arguments);
         return i.InspectSchema(false);
      }

      /// <summary>
      /// Given an XSD file write corresponding Asset definitions to requested
      /// format.
      /// </summary>
      /// <param name="args">list of string arguments</param>
      public static AssetData ToAssetList(String[] args)
      {
         var arguments = AssetConsoleArgumentsInfo.FromArguments(args);
         return ToAssetList(arguments);
      }
   }

}

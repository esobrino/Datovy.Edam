﻿using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

using Newtonsoft.Json.Schema;
using Newtonsoft.Json.Linq;

// -----------------------------------------------------------------------------
using Edam.Data.AssetSchema;
using Edam.Data.Asset;
using Edam.Data.AssetConsole;
using Edam.Diagnostics;

namespace Edam.Json.JsonSchemaReader
{

   public class JsonSchemaInstance
   {
      public static readonly string CLASS_NAME = "JsonSchemaInstance";

      public static void AddJsonSchemaUri(NamespaceList items)
      {
         var i = new NamespaceInfo(JsonLabel.JSON_SCHEMA_PREFIX,
            JsonLabel.JSON_SCHEMA_URI);
         items.Add(i);
      }

      private static JsonSchemaSet Parse(JSchema schema, JsonSchemaSet set)
      {
         JsonSchemaSet schemaSet = set ?? new JsonSchemaSet(null);

         // do this schema has other reference schemas?  if so read those now
         foreach (var i in schema.Items)
         {
            Parse(i, schemaSet);
         }

         AddJsonSchemaUri(set.Namespaces);
         JsonSchema jschema = new JsonSchema(set.Namespaces);

         // read extensions (definitions / complex tyles)...
         foreach (var e in schema.ExtensionData)
         {
            foreach (var c in e.Value)
            {
               jschema.Definitions.Add(new JsonComplexType(c, set.Namespaces));
            }
         }

         foreach (var e in schema.Properties)
         {
            jschema.Properties.Add(
               new JsonPropertyInfo(e.Key, e.Value, jschema, set.Namespaces));
         }

         schemaSet.Add(jschema);
         return set;
      }

      public static JsonSchemaSet Parse(String schemaText, JsonSchemaSet set)
      {
         JsonSchemaSet sset = set ?? new JsonSchemaSet(null);
         JSchema schema = JSchema.Parse(schemaText);
         Parse(schema, sset);
         return sset;
      }

      public static AssetData ToDataAsset(
         JsonSchemaSet set, NamespaceList namespaces)
      {
         JsonAssetItemInfo jassets = 
            new JsonAssetItemInfo(set.Namespace, set.VersionId);

         foreach (var citem in set.Schemas)
         {
            jassets.Definitions = citem.Definitions;
            jassets.Properties = citem.Properties;

            foreach (var d in citem.Definitions)
            {
               jassets.Add(d.Namespaces);
               jassets.Assets.Items.Add(d.ToAsset());

               // add children...
               foreach (var c in d.Children)
               {
                  jassets.Add(c.Namespaces);
                  jassets.Assets.Items.Add(
                     c.ToAsset(d.EntityName, jassets));
               }
            }
            foreach (var p in citem.Properties)
            {
               jassets.Add(p.Namespaces);
               jassets.Assets.Items.Add(p.ToAsset());
            }
         }
         jassets.Assets.Namespaces = jassets.Namespaces;

         // go through the assets list and assign the "Namespace" as needed...
         if (namespaces == null)
            return jassets.Assets;

         foreach (var a in jassets.Assets.Items)
         {
            var p = a.ElementQualifiedName.Prefix.Replace(":*", String.Empty);
            var i = namespaces.Find((x) => x.Prefix == p);
            if (i == null)
               continue;
            a.Namespace = i.Uri.OriginalString;
         }

         return jassets.Assets;
      }

      public static void ToFile(JsonSchemaSet set, String outFilePath,
         NamespaceList namespaces)
      {
         AssetData asset = ToDataAsset(set, namespaces);

         InOut.FileInfo f = new InOut.FileInfo
         {
            Path = outFilePath,
            Name = String.Empty,
            Extension = InOut.FileExtension.CSV
         };

         asset.ToOutput(f);
      }

      public static IResultsLog ToFile(
         AssetConsoleArgumentsInfo arguments)
      {
         NamespaceList l = new NamespaceList
         {
            arguments.GetNamespace()
         };
         var results = FromFile(arguments.InFileFullPath, l);
         if (!results.Success)
         {
            return results;
         }
         ToFile(results.Data, arguments.OutFilePath, l);

         results.Succeeded();
         return results;
      }

      public static ResultsLog<JsonSchemaSet> FromFile(
         String fileFullPath, NamespaceList namespaces, 
         JsonSchemaSet sets = null)
      {
         String func = "FromFile";
         ResultsLog<JsonSchemaSet> results =
            new ResultsLog<JsonSchemaSet>();

         if (String.IsNullOrWhiteSpace(fileFullPath))
         {
            results.Failed(
               CLASS_NAME + "." + func, EventCode.FilePathExpectedNoneFound);
            return results;
         }

         String schemaText = File.ReadAllText(fileFullPath);
         JsonSchemaSet sset = sets ?? new JsonSchemaSet(namespaces);

         results.Data = Parse(schemaText, sset);
         results.Succeeded();

         return results;
      }

      public static AssetData ToAssetList(AssetConsoleArgumentsInfo arguments)
      {
         if (arguments.InFileFullPath == null ||
            !arguments.InFileFullPath.EndsWith(UriResourceInfo.EXT_JSD))
            return null;

         NamespaceList l = new NamespaceList
         {
            arguments.GetNamespace()
         };

         var results = FromFile(arguments.InFileFullPath, l);
         if (!results.Success)
         {
            return null;
         }

         AssetData asset = ToDataAsset(results.Data, l);

         results.Succeeded();
         return asset;
      }

   }

}

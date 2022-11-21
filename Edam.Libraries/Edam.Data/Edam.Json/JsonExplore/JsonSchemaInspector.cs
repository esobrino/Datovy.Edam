using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.AssetManagement;
using Edam.Data.AssetSchema;
using Edam.Json.JsonSchemaReader;

namespace Edam.Json.JsonExplore
{

   public class JsonSchemaInspector : JsonSchemaInstance
   {

      #region -- Declarations

      private JsonSchemaSet m_SchemaSet;
      public AssetData Asset;
      public NamespaceInfo DefaultNamespace { get; set; }

      #endregion
      #region -- Constructor / Destructor

      public JsonSchemaInspector(JsonSchemaSet schemaSet)
      {
         if (schemaSet == null || schemaSet.Count == 0)
            throw new Exception(
               "Provided Schema set is empty. Json cannot be generated.");
         m_SchemaSet = schemaSet;
         //schemaSet.ValidationEventHandler +=
         //   new ValidationEventHandler(ValidationCallBack);
         Asset = new AssetData(schemaSet.Namespace, AssetType.Schema, 
            schemaSet.VersionId);
      }

      #endregion
      #region -- JSON Validation support

      private static void ValidationCallBack(
         object sender, EventArgs args)
      {
         Console.WriteLine("Error in Schema - ");
         //Console.WriteLine(args.Message);
      }

      #endregion
      #region -- Manage Namespaces

      public static List<NamespaceInfo> SetNamespaces(
         List<NamespaceInfo> namespaces, JsonSchemaSet schemaSet)
      {
         var list = namespaces ?? new List<NamespaceInfo>();
         var slist = schemaSet.Schemas;
         foreach (var z in slist)
         {
            var l = ((JsonSchema)z).Namespaces.ToArray();
            foreach (var i in l)
            {
               var fitem = list.Find((x) => x.Prefix == i.Prefix);
               if (fitem == null)
               {
                  var e = new NamespaceInfo(i.Prefix, i.Uri);
                  list.Add(e);
               }
            }
         }
         return list;
      }

      #endregion
      #region -- Annotations support

      /// <summary>
      /// 
      /// </summary>
      /// <param name="annotation"></param>
      /// <param name="asset"></param>
      public static void AssetSchemaAnnotation(
         string annotation, IAsset asset)
      {
         if (string.IsNullOrWhiteSpace(annotation))
            return;
         asset.Annotation.Add(annotation);
      }

      #endregion
      #region -- Schema to DataElement Registration

      public void Inspect()
      {

      }

      #endregion

   }

}

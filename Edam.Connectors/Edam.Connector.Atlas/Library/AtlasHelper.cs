using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Edam.Data.AssetSchema;
using Newtonsoft.Json;

namespace Edam.Connector.Atlas.Library
{

   public class AtlasHelper
   {

      /// <summary>
      /// Serialize given item into a JSON string.
      /// </summary>
      /// <param name="item">object to serialize</param>
      /// <returns>JSON string is returned</returns>
      public static string ToJson(object item)
      {
         return JsonConvert.SerializeObject(
            item, Newtonsoft.Json.Formatting.None, 
            new JsonSerializerSettings {
               NullValueHandling = NullValueHandling.Ignore });
      }

      /// <summary>
      /// Get an element description by replacing char separators with spaces.
      /// </summary>
      /// <param name="element">element whose description will be fixed</param>
      /// <returns>element description is returned</returns>
      public static string GetDescription(AssetDataElement element)
      {
         return element.Description == null ?
            element.AnnotationText.Replace("_", "").Replace(".", " ") :
               element.Description;
      }

      /// <summary>
      /// Get element qualified name as a string.
      /// </summary>
      /// <param name="element">source eleement to derive the qualified name
      /// from</param>
      /// <returns>the qualified name is returned</returns>
      public static string GetQualifiedName(AssetDataElement element)
      {
         return element.GetElementNamespace().UriText +
            ":" + element.ElementQualifiedName.OriginalName;
      }

   }

}

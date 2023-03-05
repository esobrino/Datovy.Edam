using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Json.JsonHelper
{

   public class JsonParser
   {

      /// <summary>
      /// Remove Properties by their names.
      /// </summary>
      /// <param name="token"></param>
      /// <param name="fields">properties field names</param>
      /// <returns>JToken is returned</returns>
      private static JToken RemoveProperties(JToken token, string[] fields)
      {
         JContainer container = token as JContainer;
         if (container == null) return token;

         List<JToken> removeList = new List<JToken>();
         foreach (JToken el in container.Children())
         {
            JProperty p = el as JProperty;
            if (p != null && fields.Contains(p.Name))
            {
               removeList.Add(el);
            }
            RemoveProperties(el, fields);
         }

         foreach (JToken el in removeList)
         {
            el.Remove();
         }

         return token;
      }

   }

}

using Microsoft.Extensions.Primitives;
using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Text
{

   public class JsonBuilder
   {
      private StringBuilder m_Builder = new StringBuilder();
      private int m_Count = 0;
      public override string ToString()
      {
         if (m_Count > 0)
            m_Builder.Append(",");
         m_Count++;
         return m_Builder.ToString();
      }
      public void AddPropertyValue(string tag, string value)
      {
         if (m_Count > 0)
            m_Builder.Append(",");
         m_Builder.AppendLine("\"" + tag + "\": \"" + value + "\"");
         m_Count++;
      }
      public void AddPropertyValue(string tag, long? number)
      {
         if (m_Count > 0)
            m_Builder.Append(",");
         m_Builder.AppendLine("\"" + tag + "\": " +
            (number.HasValue ? number.Value.ToString() : "null"));
         m_Count++;
      }
      public void AddPropertyValue(string tag, int? number)
      {
         if (m_Count > 0)
            m_Builder.Append(",");
         m_Builder.AppendLine("\"" + tag + "\": " +
            (number.HasValue ? number.Value.ToString() : "null"));
         m_Count++;
      }
      public void AddPropertyValue(string tag, short? number)
      {
         if (m_Count > 0)
            m_Builder.Append(",");
         m_Builder.AppendLine("\"" + tag + "\": " +
            (number.HasValue ? number.Value.ToString() : "null"));
         m_Count++;
      }
      public void StartDocument()
      {
         m_Builder.AppendLine("{");
      }
      public void EndDocument()
      {
         m_Builder.AppendLine("}");
      }

      public static string GetQuotedItem(string item)
      {
         return "\"" + item + "\"";
      }

      /// <summary>
      /// Return Key and Value as a JSON string.
      /// </summary>
      /// <param name="key">key</param>
      /// <param name="value">value</param>
      /// <param name="addEndingComma">true to put a comma at the end of the
      /// returned string</param>
      /// <returns>json key - value text</returns>
      public static string ToJson(
         string key, object value, bool addEndingComma = false)
      {
         if (String.IsNullOrWhiteSpace(key))
         {
            return string.Empty;
         }
         string vstring = (value == null) ? "null" : value.ToString();
         vstring = (value.GetType() == typeof(string)) ?
            GetQuotedItem(vstring) : vstring.ToString();
         string kstring = GetQuotedItem(key);
         return kstring + ": " + vstring 
            + (addEndingComma ? "," : String.Empty);
      }

   }

}

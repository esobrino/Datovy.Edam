using System;
using System.Collections.Generic;
using System.Reflection;

namespace Edam.B2b.Edi
{

   public class ExchangeDefinitionHelper
   {

      private List<string> m_Header;
      public List<string> Header
      {
         get { return m_Header; }
      }

      public ExchangeDefinitionHelper(List<string> headers)
      {
         m_Header = headers;
      }

      public ExchangeDefinitionInfo GetDefinition(List<string> data)
      {
         int count = 0;
         ExchangeDefinitionInfo def = new ExchangeDefinitionInfo();
         Type t = typeof(ExchangeDefinitionInfo);
         foreach (var i in m_Header)
         {
            PropertyInfo? pinfo = t.GetProperty(i);
            if (pinfo == null)
            {
               continue;
            }

            if (pinfo.PropertyType == typeof(string))
            {
               pinfo.SetValue(def, data[count]);
            }
            else if (pinfo.PropertyType == typeof(int) ||
               pinfo.PropertyType == typeof(int?))
            {
               int v;
               if (int.TryParse(data[count], out v))
               {
                  pinfo.SetValue(def, v);
               }
            }
            else if (pinfo.PropertyType == typeof(short) ||
               pinfo.PropertyType == typeof(short?))
            {
               short v;
               if (short.TryParse(data[count], out v))
               {
                  pinfo.SetValue(def, v);
               }
            }
            else if (pinfo.PropertyType == typeof(long) ||
               pinfo.PropertyType == typeof(long?))
            {
               long v;
               if (long.TryParse(data[count], out v))
               {
                  pinfo.SetValue(def, v);
               }
            }
            else if (pinfo.PropertyType == typeof(decimal) ||
               pinfo.PropertyType == typeof(decimal?))
            {
               decimal v;
               if (decimal.TryParse(data[count], out v))
               {
                  pinfo.SetValue(def, v);
               }
            }
            else if (pinfo.PropertyType == typeof(bool) ||
               pinfo.PropertyType == typeof(bool?))
            {
               bool v;
               if (bool.TryParse(data[count], out v))
               {
                  pinfo.SetValue(def, v);
               }
            }
            count++;
         }
         return def;
      }

   }

}

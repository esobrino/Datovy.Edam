using System;
using System.Collections.Generic;
using System.Text;

using Edam.Data.Asset;

namespace Edam.Json.JsonSchemaReader
{

   public class JsonSchemaSet
   {
      private List<JsonSchema> m_Schemas = new List<JsonSchema>();
      private NamespaceList m_Namespaces;
      public NamespaceList Namespaces
      {
         get { return m_Namespaces; }
      }

      public int Count
      {
         get { return m_Schemas.Count; }
      }

      public List<JsonSchema> Schemas
      {
         get { return m_Schemas; }
      }
      public JsonSchemaSet(NamespaceList namespaces)
      {
         m_Namespaces = namespaces ?? new NamespaceList();
      }
      public void Add(JsonSchema schema)
      {
         m_Schemas.Add(schema);
      }
   }

}

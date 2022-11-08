using System;
using System.Collections.Generic;
using System.Text;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;
using Edam.Data.AssetSchema;

namespace Edam.Json.JsonSchemaReader
{

   public class JsonQualifiedNameInfo : QualifiedNameInfo
   {
      public static readonly String PROPERTIES = "properties";
      public static readonly String DEFINITIONS = "definitions";
      public static readonly String REF_ROOT = "#/";

      public static readonly String REF_PROPERTIES =
         REF_ROOT + PROPERTIES + "/";
      public static readonly String REF_DEFINITIONS =
         REF_ROOT + DEFINITIONS + "/";

      public String BasePrefix { get; set; }

      private JsonQualifiedNameType m_NameType = JsonQualifiedNameType.Unknown;
      public JsonQualifiedNameType NameType
      {
         get { return m_NameType; }
      }

      public JsonQualifiedNameInfo(String qname) : base(qname)
      {
         SetQualifiedName(qname);
      }

      private void SetQualifiedName(String qname)
      {
         // not qualified... try setting it...
         JsonQualifiedNameType type = GetNameType(
            Name, PROPERTIES, JsonQualifiedNameType.Property);
         if (type == JsonQualifiedNameType.Unknown)
            type = GetNameType(
               Name, DEFINITIONS, JsonQualifiedNameType.Definition);
         m_NameType = type;
         GetNamespacePrefix(qname);
         switch (type)
         {
            case JsonQualifiedNameType.Definition:
               BasePrefix = Prefix.Replace(REF_ROOT + PROPERTIES, String.Empty);
               break;
            case JsonQualifiedNameType.Property:
               BasePrefix =
                  Prefix.Replace(REF_ROOT + DEFINITIONS, String.Empty);
               break;
            default:
               BasePrefix = String.Empty;
               break;
         }
      }

      public static string GetTypeName(string typeName)
      {
         if (!typeName.StartsWith(REF_ROOT))
            return typeName;
         else if (typeName.StartsWith(REF_PROPERTIES))
            return typeName.Replace(REF_PROPERTIES, String.Empty);
         else if (typeName.StartsWith(REF_DEFINITIONS))
            return typeName.Replace(REF_DEFINITIONS, String.Empty);
         return typeName;
      }

      public void SetPrefix(NamespaceList namespaces)
      {
         BasePrefix = namespaces.GetDefaultPrefix();
         Prefix = BasePrefix;
      }

      public static ElementType CheckQualifiedName(
         QualifiedNameInfo qname, NamespaceList namespaces)
      {
         if (qname == null)
            return ElementType.undefined;

         ElementType type = ElementType.undefined;
         switch (qname.OriginalName)
         {
            case JsonLabel.DOLLAR_ID:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.OBJECT:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.BOOL:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.STRING:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.NUMBER:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.INTEGER:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.TIME:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.URI:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.EMAIL:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.DATE:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            case JsonLabel.DATE_TIME:
               type = ElementType.element;
               qname.Prefix = JsonLabel.JSON_SCHEMA_PREFIX;
               break;
            default:
               type = ElementType.unknown;
               qname.Prefix = namespaces.GetDefaultPrefix();
               break;
         }

         return type;
      }

      public void GetNamespacePrefix(String name)
      {
         if (name == null)
            return;
         String nm = name.Replace('.', '/');
         String[] l = nm.Split('/');
         if (l.Length == 0)
            return;
         String token = l[^1];
         String[] t = token.Split(':');
         if (t.Length == 2)
         {
            Prefix = t[0];  // + ":*";
         }
      }

      private static JsonQualifiedNameType GetNameType(
         String text, String name, JsonQualifiedNameType type)
      {
         int indx = text.IndexOf(name);
         if (indx == -1)
            return JsonQualifiedNameType.Unknown;
         return type;
      }
   }

}

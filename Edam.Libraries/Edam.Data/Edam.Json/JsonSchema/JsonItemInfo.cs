using System;
using System.Collections.Generic;
using System.Text;

// -----------------------------------------------------------------------------
using Newtonsoft.Json.Linq;
using Newtonsoft.Json.Schema;
using Edam.Data.Asset;
using Edam.Data.AssetSchema;
using Edam.Data.AssetManagement;

namespace Edam.Json.JsonSchema
{

    public class JsonItemInfo : AssetElementInfo<JToken>, IAssetElement
    {

        protected List<JsonItemInfo> m_Children = new List<JsonItemInfo>();

        public List<JsonItemInfo> Children
        {
            get { return m_Children; }
        }

        public JsonItemInfo(JToken token, NamespaceList namepaces)
        {
            Namespaces = namepaces;
            Instance = token;
            GetItem(token);
        }

        private void GetItem(JToken token)
        {
            switch (token.Type)
            {
                case JTokenType.Property:
                    SetProperty(token as JProperty);
                    break;
                default:
                    break;
            }
        }

        public static void SetFullPath(AssetElementInfo<IAssetElement> asset,
           JsonAssetItemInfo assets)
        {

            // prepare full path
            StringBuilder sb = new StringBuilder();
            bool needSlash = false;

            //if (!String.IsNullOrWhiteSpace(ParentEntityName))
            //{
            //   sb.Append(ParentEntityName);
            //   needSlash = true;
            //}
            //if (needSlash)
            //{
            //   sb.Append(JsonLabel.SLASH);
            //   needSlash = false;
            //}
            if (!string.IsNullOrWhiteSpace(asset.EntityName))
            {
                sb.Append(asset.EntityName);
                needSlash = true;
            }
            if (needSlash)
            {
                sb.Append(JsonLabel.SLASH);
                needSlash = false;
            }
            if (!string.IsNullOrWhiteSpace(
               asset.ElementQualifiedName.Name))
                sb.Append(asset.ElementQualifiedName.Name);

            // check property type and see if we need to look for children elements
            // TODO: add assets entries by going in depth with the current asset
            //     : QualifiedName - Original Name Item (see previous Append)

            /*
            String propType = null;
            if (properties != null)
            {
               var cprop = properties.Find((x) =>
               {
                  var qn = new JsonQualifiedNameInfo(x.EntityName);
                  return qn.OriginalName == asset.QualifiedName.OriginalName;
               });
               if (cprop != null)
               {
                  propType = cprop.TypeName;
               }
            }
            JsonComplexType cxType = null;
            if (definitions != null && propType != null)
            {
               var cdef = definitions.Find((x) =>
               {
                  var qn = new JsonQualifiedNameInfo(x.EntityName);
                  var qp = new JsonQualifiedNameInfo(propType);
                  return qn.OriginalName == qp.OriginalName;
               });
               if (cdef != null)
                  cxType = cdef;
            }

            if (cxType != null && cxType.Children.Count > 0)
            {
               foreach(var c in cxType.Children)
               {
                  var nAsset = c.ToAsset(null, properties, definitions);
               }
            }
             */

            asset.SetFullPath(sb.ToString());
        }

        /// <summary>
        /// Conver JSON Item into an Asset Element ...
        /// </summary>
        /// <param name="ParentEntityName"></param>
        /// <param name="properties"></param>
        /// <returns></returns>
        public AssetElementInfo<IAssetElement> ToAsset(string parentEntityName = null,
           JsonAssetItemInfo assets = null)
        {
            var me = this;
            JsonQualifiedNameInfo.CheckQualifiedName(
               ElementQualifiedName, Namespaces);
            AssetElementInfo<IAssetElement> a = new AssetElementInfo<IAssetElement>
            {
                Namespaces = me.Namespaces,
                Namespace = string.IsNullOrWhiteSpace(me.Namespace) ?
                  me.Namespaces.DefaultNamespace.Uri.OriginalString : me.Namespace,
                TypeQualifiedName = me.TypeQualifiedName,
                ElementQualifiedName = me.ElementQualifiedName,
                CommentText = me.CommentText,
                DefaultValue = me.DefaultValue,
                EntityName = me.EntityName,
                FixedValue = me.FixedValue,
                IsMixed = me.IsMixed,
                IsNillable = me.IsNillable,
                Occurs = me.Occurs,
                SampleValue = me.SampleValue,
                ElementType = me.ElementType
            };

            JsonQualifiedNameInfo jQName = new JsonQualifiedNameInfo(TypeName);
            JsonQualifiedNameInfo.CheckQualifiedName(jQName, Namespaces);
            string typeName = TypeName;
            if (jQName.NameType == JsonQualifiedNameType.Property &&
                assets.Assets != null)
            {
                var pname = jQName.Name.Replace("#/", "").Replace("/", ".");
                var tn = assets.FindProperty(pname);
                if (tn != null)
                {
                    typeName = tn.TypeName;
                    //foreach(var n in tn.Annotation)
                    //{
                    //   a.Annotation.Add(n);
                    //}
                }
                var aqName = new QualifiedNameInfo(typeName);
                a.QualifiedTypeNames.Add(aqName);
                aqName.Prefix = jQName.Prefix;
            }
            else
            {
                foreach (var i in QualifiedTypeNames)
                {
                    JsonQualifiedNameInfo.CheckQualifiedName(i, Namespaces);
                    a.AddQualifiedTypeName(i.Name, jQName.Prefix);
                }
            }

            var grpQName = new JsonQualifiedNameInfo(EntityName);
            if (ElementType == ElementType.type)
            {
                a.ElementQualifiedName = new QualifiedNameInfo(EntityName);
                a.ElementQualifiedName.Prefix = grpQName.Prefix;
                a.EntityName = string.Empty;
            }
            else if (ElementType == ElementType.element)
            {
                a.EntityName = parentEntityName;
            }

            foreach (var n in Annotation)
            {
                if (!string.IsNullOrWhiteSpace(n))
                    a.Annotation.Add(n);
            }
            if (a.Namespaces == null)
                a.Namespaces = new NamespaceList();
            if (Namespaces != null)
            {
                foreach (var s in Namespaces)
                {
                    a.Namespaces.Add(s);
                }
            }

            JsonQualifiedNameInfo qnEntityName =
               new JsonQualifiedNameInfo(a.EntityName);
            JsonQualifiedNameInfo qnTypeName =
               new JsonQualifiedNameInfo(typeName);
            JsonQualifiedNameInfo.CheckQualifiedName(qnTypeName, Namespaces);

            a.EntityName = qnEntityName.OriginalName;
            a.ElementQualifiedName =
               new QualifiedNameInfo(a.ElementQualifiedName.Name)
               {
                   Prefix = grpQName.Prefix
               };
            a.QualifiedTypeNames.Clear();

            var qName = new QualifiedNameInfo(qnTypeName.OriginalName);
            a.QualifiedTypeNames.Add(qName);
            qName.Prefix = qnTypeName.Prefix;
            a.Type = qName.Name;

            if (a.Annotation.Count == 0)
            {
                a.Annotation.Add(Text.Convert.ToTitleCase(
                   ElementQualifiedName.OriginalName));
            }

            SetFullPath(a, assets);

            return a;
        }

        /// <summary>
        /// Set the JSON properties and details...
        /// </summary>
        /// <param name="property"></param>
        private void SetProperty(JProperty property)
        {
            ElementQualifiedName = new QualifiedNameInfo(property.Name);
            JsonQualifiedNameInfo.CheckQualifiedName(
               ElementQualifiedName, Namespaces);
            EntityName = property.Name;
            GetChildren(property, this);
        }

        /// <summary>
        /// Get Item Children.
        /// </summary>
        /// <remarks>
        /// such as:
        ///    "nc:Vehicle": {
        ///       <-- nc:Vehicle is the item name
        ///       <-- the rest are the Children as follows
        ///       "description": "...",
        ///       "oneOf": [ ... ]
        /// </remarks>
        private static void GetChildren(JToken token, JsonItemInfo item)
        {
            foreach (JToken c in token.Children<JToken>())
            {
                switch (c.Type)
                {
                    case JTokenType.Property:
                        item.GetProperty(c as JProperty, item);
                        break;
                    case JTokenType.Object:
                        item.GetObject(c, item);
                        break;
                    case JTokenType.Array:
                        item.Occurs = JsonLabel.ZERO_TO_MANY;
                        GetChildren(c, item);
                        break;
                }
            }
        }

        private void GetItemOf(
           JToken token, ElementGroup group, JsonItemInfo item)
        {
            GetChildren(token, item);
        }

        private static bool IsReference(JProperty property)
        {
            if (property == null)
                return false;
            return property.Name == JsonLabel.REF;
        }

        private static new bool IsType(JProperty property)
        {
            if (property == null)
                return false;
            return property.Name == JsonLabel.TYPE;
        }

        private static bool IsDescription(JProperty property)
        {
            if (property == null)
                return false;
            return property.Name == JsonLabel.DESCRIPTION;
        }

        public static string GetEnumDescription(JProperty property)
        {
            string d = null;
            if (property == null)
                return d;
            if (property.Name == JsonLabel.DESCRIPTION)
            {
                switch (property.Value.Type)
                {
                    case JTokenType.String:
                        d = (string)property.Value;
                        break;
                    default:
                        d = null;
                        break;
                }
            }
            return d;
        }

        public static List<ElementKeyValue> GetEnumKeyValue(JToken token)
        {
            List<ElementKeyValue> e = new List<ElementKeyValue>();
            if (token != null && token.HasValues)
            {
                switch (token.Type)
                {
                    case JTokenType.Array:
                        foreach (var t in token)
                        {
                            switch (t.Type)
                            {
                                case JTokenType.String:
                                    var v = new ElementKeyValue
                                    {
                                        Key = t.Value<string>()
                                    };
                                    e.Add(v);
                                    break;
                                default:
                                    var d = new ElementKeyValue
                                    {
                                        Key = t.Value<string>()
                                    };
                                    e.Add(d);
                                    break;
                            }
                        }
                        break;
                    default:
                        break;
                }
            }
            return e;
        }

        public static ElementKeyValue GetEnum(JProperty property)
        {
            ElementKeyValue keyValue = new ElementKeyValue();
            switch (property.Value.Type)
            {
                case JTokenType.String:
                    keyValue.Value = (string)property.Value;
                    break;
                case JTokenType.Array:
                    if (property.Name == JsonLabel.ENUM)
                    {
                        var kv = GetEnumKeyValue(property.Value);
                        var desc = GetEnumDescription(property.Next as JProperty);
                        keyValue.Key = kv.Count > 0 ? kv[0].Key : desc;
                        keyValue.Description = desc;
                    }
                    else
                        keyValue.Value = JsonLabel.NOT_SUPPORTED;
                    break;
                default:
                    keyValue.Key = JsonLabel.NOT_SUPPORTED;
                    keyValue.Description = JsonLabel.NOT_SUPPORTED;
                    break;
            }
            return keyValue;
        }

        public static string GetValue(JProperty property)
        {
            string value = null;
            switch (property.Value.Type)
            {
                case JTokenType.String:
                    value = (string)property.Value;
                    break;
                case JTokenType.Array:
                    if (property.Name == JsonLabel.ENUM)
                        value = JsonLabel.NOT_SUPPORTED;
                    else
                        value = JsonLabel.NOT_SUPPORTED;
                    break;
                default:
                    value = null;
                    break;
            }
            return value;
        }

        public void AddProperty(JProperty property, JsonItemInfo item)
        {
            JsonItemInfo i = new JsonItemInfo(property, item.Namespaces)
            {
                ElementType = ElementType.element,
                ElementQualifiedName = new QualifiedNameInfo(property.Name)
            };
            switch (property.Value.Type)
            {
                case JTokenType.Object:
                    GetTypeElementProperties(property.Value, i);
                    break;
                default:
                    i.TypeQualifiedName = new QualifiedNameInfo(
                       item.Namespaces.GetDefaultPrefix(),
                       property.Value.Type.ToString().ToLower());
                    JsonQualifiedNameInfo.CheckQualifiedName(
                       i.TypeQualifiedName, i.Namespaces);
                    i.ElementType = ElementType.element;
                    i.EntityQualifiedName = ElementQualifiedName;
                    break;
            }
            if (i.ElementQualifiedName.OriginalName.StartsWith("$"))
                return;
            item.Children.Add(i);
        }

        /// <summary>
        /// Set the data element format and if it matches with some tracked data
        /// elements then make those as the Element Type...
        /// </summary>
        /// <param name="formatName"></param>
        /// <param name="item"></param>
        private void SetFormat(string formatName, JsonItemInfo item)
        {
            formatName = formatName.Replace("-", string.Empty);
            var qn = new QualifiedNameInfo(
               item.Namespaces.GetDefaultPrefix(),
               formatName.ToLower());
            var r = JsonQualifiedNameInfo.CheckQualifiedName(qn, item.Namespaces);
            if (r != ElementType.undefined)
            {
                item.TypeQualifiedName = qn;
                item.QualifiedTypeNames.Clear();
                item.AddQualifiedTypeName(qn);
            }
        }

        public void GetProperty(JProperty property, JsonItemInfo item)
        {
            switch (property.Name)
            {
                case JsonLabel.FORMAT:
                    SetFormat(GetValue(property), item);
                    break;
                case JsonLabel.DESCRIPTION:
                    item.AddAnnotation(GetValue(property));
                    break;
                case JsonLabel.ONE_OF:
                    GetItemOf(property, ElementGroup.OptionOne, item);
                    break;
                case JsonLabel.ANY_OF:
                    GetItemOf(property, ElementGroup.OptionAny, item);
                    break;
                case JsonLabel.ALL_OF:
                    GetItemOf(property, ElementGroup.OptionAll, item);
                    break;
                case JsonLabel.TYPE:
                    SetTypeElementInfo(item, GetValue(property));
                    break;
                case JsonLabel.ENUM:
                    SetEnumInfo(property, item);
                    break;
                case JsonLabel.REF:
                    SetReferenceElement(property, item);
                    break;
                case JsonLabel.PROPERTIES:
                    GetTypeElementProperties(property, item);
                    break;
                case JsonLabel.REQUIRED:
                    SetRequired(property, item);
                    break;
                default:
                    AddProperty(property, item);
                    break;
            }
        }

        /// <summary>
        /// Scan all required properties and set min occurs to 1...
        /// </summary>
        /// <param name="property">parent with value as JArray with required
        /// property names</param>
        /// <param name="item">parent whose children will be scanned</param>
        public void SetRequired(JProperty property, JsonItemInfo item)
        {
            foreach (string i in property.Value.Values<string>())
            {
                var v = item.Children.Find(
                   (x) => x.ElementQualifiedName.OriginalName == i);
                if (v != null)
                {
                    var o = new OccuranceInfo(v.Occurs)
                    {
                        MinOccurance = 1
                    };
                    v.Occurs = o.Text;
                }
            }
        }

        public AssetElementInfo<JToken> GetObject(
           JToken token, JsonItemInfo item)
        {
            foreach (JToken c in token.Children<JToken>())
            {
                switch (c.Type)
                {
                    case JTokenType.Property:
                        GetProperty(c as JProperty, item);
                        break;
                    case JTokenType.Object:
                        GetTypeElementProperties(c, item);
                        break;
                }
            }
            return item;
        }

        private static void SetTypeElementInfo(
           JsonItemInfo item, string typeName)
        {
            var qName = item.AddQualifiedTypeName(
               typeName, item.Namespaces.GetDefaultPrefix());
            var grp = JsonQualifiedNameInfo.CheckQualifiedName(
               qName, item.Namespaces);
            item.TypeQualifiedName = qName;
            item.ElementType = grp == ElementType.element ?
               grp : ElementType.type;
            item.SetFullPath(item.Instance.Path);
        }

        private static JsonItemInfo GetTypeElementProperties(
           JToken token, JsonItemInfo item)
        {
            foreach (var c in token.Children<JToken>())
            {
                switch (c.Type)
                {
                    case JTokenType.Object:
                        GetTypeElementProperties(c, item);
                        break;
                    case JTokenType.Property:
                        item.GetProperty(c as JProperty, item);
                        break;
                    default:
                        break;
                }
            }
            return item;
        }

        private void SetEnumInfo(
           JProperty property, JsonItemInfo item)
        {
            var e = GetEnum(property);
            JsonItemInfo i = new JsonItemInfo(property, item.Namespaces)
            {
                ElementType = ElementType.enumerator,
                ElementQualifiedName = new QualifiedNameInfo(e.Key),
                DefaultValue = e.Description,
                EntityName = item.EntityName,
                Occurs = JsonLabel.ZERO_TO_ONE
            };
            i.QualifiedTypeNames.Add(new QualifiedNameInfo(JsonLabel.STRING));
            i.SetFullPath(property.Name);
            if (property.Value.Type == JTokenType.Object)
            {
                GetTypeElementProperties(property.Value, i);
            }
            item.Children.Add(i);
        }

        private static JsonItemInfo SetReferenceElement(
           JProperty property, JsonItemInfo item)
        {
            string v = GetValue(property);
            var typeName = JsonQualifiedNameInfo.GetTypeName(v);
            item.TypeQualifiedName = new QualifiedNameInfo(
               item.Namespaces.GetDefaultPrefix(), typeName);
            item.AddQualifiedTypeName(item.TypeQualifiedName);
            item.SetFullPath(property.Path);
            return item;
        }

        //private static JsonItemInfo GetReferenceElement(JProperty property)
        //{
        //   String v = GetValue(property);
        //   JsonItemInfo item = new JsonItemInfo(property);
        //   item.GroupType = AssetGroupItemType.reference;
        //   item.QualifiedName = new QualifiedNameInfo(v);
        //   item.SetFullPath(property.Path);
        //   return item;
        //}

    }

}

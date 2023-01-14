﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Reflection;

// -----------------------------------------------------------------------------
using Newtonsoft.Json.Linq;
using Newtonsoft.Json.Schema;
using Edam.Data.Asset;
using Edam.Data.AssetSchema;

namespace Edam.Json.JsonSchemaReader
{

   public class JsonPropertyItemInfo : AssetElementInfo<JSchema>, IAssetElement
   {
      public static readonly String PATH = "Path";
      public static readonly String OCCURS_ZTO_UNBOUNDED = "(0:*)";
      public static readonly String OCCURS_1TO_UNBOUNDED = "(1:*)";

      private JsonSchema m_Schema;
      private JsonPropertyItemInfo m_ParentItem;
      private JsonQualifiedNameType m_ItemNameType;

      protected Boolean m_IsDefined = false;

      /// <summary>
      /// When IsDefined means that the item has a type and occurance assigned
      /// and there is no need to examine its children.
      /// </summary>
      public Boolean IsDefined
      {
         get { return m_IsDefined; }
      }

      public Boolean IsOneOf
      {
         get { return Instance.OneOf.Count > 0; }
      }
      public Boolean IsAnyOf
      {
         get { return Instance.AnyOf.Count > 0; }
      }
      public Boolean IsOption
      {
         get { return IsOneOf || IsAnyOf; }
      }

      public Boolean IsArray
      {
         get { return Instance.Items.Count > 0; }
      }

      public Boolean IsDefinition
      {
         get { return ItemNameType == JsonQualifiedNameType.Definition; }
      }

      public Boolean IsProperty
      {
         get { return ItemNameType == JsonQualifiedNameType.Property; }
      }

      protected List<JsonPropertyItemInfo> m_Children =
         new List<JsonPropertyItemInfo>();

      public List<JsonPropertyItemInfo> Children
      {
         get { return m_Children; }
      }

      public JsonSchema ParentSchema
      {
         get { return m_Schema; }
      }
      public JsonPropertyItemInfo ParentItem
      {
         get { return m_ParentItem; }
      }

      public JsonQualifiedNameType ItemNameType
      {
         get { return m_ItemNameType; }
      }

      public JsonPropertyItemInfo(
         String propertyName, JSchema item, JsonSchema schema,
         NamespaceList namespaces) : base()
      {
         Namespaces = namespaces;
         Instance = item;
         m_Schema = schema;
         m_ParentItem = null;
         Initialize(propertyName, item);
      }

      public JsonPropertyItemInfo(
         JSchema item, JsonPropertyItemInfo parent) : base()
      {
         Namespaces = parent.Namespaces;
         Instance = item;
         m_Schema = parent.ParentSchema;
         m_ParentItem = parent;
         Initialize(String.Empty, item);
      }

      private void Initialize(
         String propertyName, JSchema item)
      {
         m_ItemNameType = JsonQualifiedNameType.Property;

         SetItem(item);
         EntityName = String.Empty;
         if (!String.IsNullOrWhiteSpace(propertyName))
            ElementQualifiedName = new QualifiedNameInfo(
               Namespaces.GetDefaultPrefix(), propertyName);
         ElementType = Data.Asset.ElementType.element;
      }

      public AssetElementInfo<IAssetElement> ToAsset()
      {
         var me = this;
         AssetElementInfo<IAssetElement> a = new AssetElementInfo<IAssetElement>
         {
            Namespaces = me.Namespaces,
            Namespace = String.IsNullOrWhiteSpace(me.Namespace) ?
               me.Namespaces.DefaultNamespace.Uri.OriginalString : me.Namespace,
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

         var pQName = new JsonQualifiedNameInfo(EntityName);
         a.ElementQualifiedName = new QualifiedNameInfo(pQName.OriginalName);
         a.ElementQualifiedName.Prefix = pQName.Prefix;
         a.EntityName = String.Empty;

         foreach (var i in this.QualifiedTypeNames)
         {
            var iQName = new JsonQualifiedNameInfo(i.Name);
            a.AddQualifiedTypeName(i.OriginalName, iQName.Prefix);
         }
         foreach (var n in this.Annotation)
         {
            a.Annotation.Add(n);
         }
         if (a.Namespaces == null)
            a.Namespaces = new NamespaceList();
         if (Namespaces != null)
         {
            foreach (var s in this.Namespaces)
            {
               a.Namespaces.Add(s);
            }
         }

         return a;
      }

      public static String GetFieldValue(String fieldName, Object instance)
      {
         String value = null;
         Type t = instance.GetType();
         var pathField = t.GetField(fieldName,
            BindingFlags.NonPublic | BindingFlags.Instance);
         if (pathField != null)
            value = pathField.GetValue(instance).ToString();
         return value;
      }

      public JsonQualifiedNameInfo GetQualifiedName(JSchema instance)
      {
         String path = GetFieldValue(PATH, Instance);
         JsonQualifiedNameInfo qname = new JsonQualifiedNameInfo(path);
         return qname;
      }

      public JsonQualifiedNameType SetPath(
         JsonQualifiedNameInfo qualifiedName = null)
      {
         JsonQualifiedNameInfo qname =
            qualifiedName ?? GetQualifiedName(Instance);
         qname.SetPrefix(Namespaces);
         m_ItemNameType = qname.NameType;
         if (m_ParentItem == null &&
            qname.NameType == JsonQualifiedNameType.Property)
         {
            ElementQualifiedName = qname;
         }
         else
         if (m_ParentItem != null &&
            qname.NameType == JsonQualifiedNameType.Definition)
         {
            m_ParentItem.QualifiedTypeNames.Add(qname);
            ElementQualifiedName = qname;
            AddQualifiedTypeName(qname.Name);
         }

         return qname.NameType;
      }

      public void SetItem(JSchema item)
      {
         // add annotation if any was given...
         if (item.Description != null)
            Annotation.Add(item.Description);

         if (SetPath() == JsonQualifiedNameType.Definition)
         {
            // let's set up the type...
            if (item.ExtensionData != null && item.ExtensionData.Count > 0)
            {
               foreach (var i in item.ExtensionData)
               {
                  string type = i.Value.Value<string>();
                  TypeQualifiedName = new QualifiedNameInfo(
                     Namespaces.GetDefaultPrefix(),
                     type.Replace("#", String.Empty));
                  JsonQualifiedNameInfo.CheckQualifiedName(
                     TypeQualifiedName, Namespaces);
                  AddQualifiedTypeName(TypeQualifiedName);
                  break;
               }
            }
            return;
         }

         // do we have choices?
         if (item.OneOf != null && item.OneOf.Count > 0)
         {
            ElementType = Data.Asset.ElementType.type;
            ElementGroup = ElementGroup.OptionOne;
            foreach (JSchema i in item.OneOf)
            {
               m_Children.Add(new JsonPropertyItemInfo(i, this));
            }
         }
         else
         if (item.AnyOf != null && item.AnyOf.Count > 0)
         {
            foreach (JSchema i in item.AnyOf)
            {
               JsonPropertyItemInfo prop = new JsonPropertyItemInfo(i, this);
               if (prop.ItemNameType == JsonQualifiedNameType.Property)
               {
                  if (i.Items.Count > 0)
                  {
                     if (prop.Children.Count > 0)
                     {
                        m_Children.Add(prop);
                     }
                  }
                  else
                     m_Children.Add(prop);
               }
            }
         }

         // type: array, items found!
         else
         if (item.Items != null && item.Items.Count > 0)
         {
            foreach (JSchema i in item.Items)
            {
               m_Children.Add(new JsonPropertyItemInfo(i, this));
            }
         }
      }

   }

}

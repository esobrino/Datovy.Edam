using Edam.Data.Asset;
using Edam.Data.AssetManagement;
using Edam.Data.AssetManagement.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Data.AssetSchema
{

   public class AssetDataElementList : List<AssetDataElement>
   {

      private List<AssetDataElement> m_Types = new List<AssetDataElement>();
      private int m_Count = 0;

      public List<AssetDataElement> Types
      {
         get { return m_Types; }
      }

      public NamespaceInfo Namespace { get; set; }
      public AssetType AssetType { get; set; }
      public string VersionId { get; set; }

      public AssetDataElementList(
         NamespaceInfo ns, AssetType type, string versionId)
      {
         Namespace = ns;
         AssetType = type;
         VersionId = versionId;
      }

      public AssetDataElementList(AssetDataElementList asset)
      {
         Namespace = asset.Namespace;
         AssetType = asset.AssetType;
         VersionId = asset.VersionId;
      }

      /// <summary>
      /// Given two elements, merge them as needed... with emphasis on the 
      /// PK and foreign key constraints.
      /// </summary>
      /// <param name="element">element to be merged with sibling</param>
      /// <param name="sibling">element to be inspected and use as a source for
      /// merging</param>
      public void MergeElements(
         AssetDataElement element, AssetDataElement sibling)
      {
         // merge primary key and auto-number properties
         if (sibling.KeyType == Asset.ConstraintType.key)
         {
            element.KeyType = sibling.KeyType;
         }
         if (sibling.AutoGenerateType == Asset.ConstraintType.autoGenerate)
         {
            element.AutoGenerateType = sibling.AutoGenerateType;
         }

         // merge constraints...
         if (sibling.Constraints != null)
         {
            foreach(var c in sibling.Constraints)
            {
               element.Constraints.Add(c);
            }
         }
      }

      public new void Add(AssetDataElement element)
      {
         // check to see if... the element already exists?
         var eelement = Find((x)=> x.EntityName == element.EntityName &&
            x.ElementName == element.ElementName);
         if (eelement != null)
         {
            MergeElements(eelement, element);
            return;
         }

         // add new element...
         AssetDataElement parent = null;
         if (element.ElementType == Asset.ElementType.type)
         {
            var t = m_Types.Find((x)=> x.ElementName == element.ElementName);
            if (t == null)
            {
               m_Types.Add(element);
            }
            else
            {
               parent = t;
            }
         }
         else if (!String.IsNullOrWhiteSpace(element.EntityName))
         {
            parent = m_Types.Find((x) => x.ElementName == element.EntityName);
         }
         element.OrdinalNo = ++m_Count;
         element.Parent = parent;
         element.ParentNo = parent != null ?
            parent.OrdinalNo : element.OrdinalNo;
         base.Add(element);
      }

      public static AssetDataElementList GetChildren(
         List<AssetDataElement> elements, string root, string entityName,
         NamespaceInfo ns, AssetType type, string versionId)
      {
         var items = from c in elements
                     where c.Root == root &&
                           c.EntityName == entityName
                     select c as AssetDataElement;

         var l = items.ToList();
         AssetDataElementList list =
            new AssetDataElementList(ns, type, versionId);
         list.AddRange(l);
         return list;
      }

      public static AssetDataElementList GetChildren(
         AssetDataElementList elements, string root, string domain, 
         string entityName)
      {
         return GetChildren(
            (List<AssetDataElement>) elements, root, entityName,
            elements.Namespace, elements.AssetType, elements.VersionId);
      }

      public static Uri GetNamespace(AssetDataElement element)
      {
         if (String.IsNullOrWhiteSpace(element.Namespace))
         {
            return new Uri(
               NamespaceInfo.HTTP_ROOT + element.Root + "/" + element.Domain);
         }
         return new Uri(element.NamespaceText);
      }

      public static Uri GetNamespace(DataElement element)
      {
         if (String.IsNullOrWhiteSpace(element.NamespaceText))
         {
            return new Uri(
               NamespaceInfo.HTTP_ROOT + element.Root + "/" + element.Domain);
         }
         return new Uri(element.NamespaceText);
      }

      public static void SetNamespace(AssetDataElement element)
      {
         Uri ns = GetNamespace(element);
      }

      public static void SetNamespace(DataElement element)
      {
         Uri ns = GetNamespace(element);
      }

      public static AssetDataElementList GetTypes(
         AssetDataElementList items, string root)
      {
         var types = from c in items
                     where c.Root == root &&
                           (c.ElementType == ElementType.type ||
                            c.ElementType == ElementType.root)
                     select c;

         var l = types.ToList();
         AssetDataElementList list = new AssetDataElementList(items);
         list.AddRange(l);
         return list;
      }

      public static AssetDataElementList GetUriTypes(
         AssetDataElementList items, string uriText)
      {
         var types = from c in items
                     where c.ElementUri == uriText &&
                           (c.ElementType == ElementType.type ||
                            c.ElementType == ElementType.root)
                     select c;

         var l = types.ToList();
         AssetDataElementList list = new AssetDataElementList(items);
         list.AddRange(l);
         return list;
      }

      public static AssetDataElementList GetUriElements(
         AssetDataElementList items, string uriText)
      {
         var types = from c in items
                     where String.IsNullOrWhiteSpace(c.EntityName) && 
                            c.ElementUri == uriText &&
                           (c.ElementType == ElementType.element ||
                            c.ElementType == ElementType.attribute)
                     select c;

         var l = types.ToList();
         AssetDataElementList list = new AssetDataElementList(items);
         list.AddRange(l);
         return list;
      }

   }

}

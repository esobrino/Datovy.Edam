using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;

// -----------------------------------------------------------------------------
using Edam.Diagnostics;
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.Asset;
using TextHelper = Edam.Text.Convert;
using System.Xml.Linq;

namespace Edam.B2b.Edi
{

   public class EdiAsset
   {
      private List<PropertyInfo> m_Properties;
      public EdiAsset(AssetConsoleArgumentsInfo arguments)
      {
         BaseDefinitionInfo d = new BaseDefinitionInfo();
         m_Properties = d.GetType().GetProperties().ToList<PropertyInfo>();
      }

      /// <summary>
      /// Get Exchange Definition item from list of strings...
      /// </summary>
      /// <param name="values">list of strings</param>
      /// <returns>instance of ExchangeDefinitionInfo is returned</returns>
      private ExchangeDefinitionInfo GetItem(List<string> values)
      {
         ExchangeDefinitionInfo i = new ExchangeDefinitionInfo();
         int c = 0;
         foreach(var p in m_Properties)
         {
            if (c >= values.Count)
            {
               break;
            }
            if (p.PropertyType == typeof(string))
            {
               p.SetValue(i, values[c]);
            }
            else if (p.PropertyType == typeof(short?))
            {
               if (short.TryParse(values[c], out var v))
               {
                  p.SetValue(i, v);
               }
            }
            c++;
         }
         if (i.EntityName == null)
         {
            i.EntityName = String.Empty;
         }
         return i;
      }

      private class EntryItem
      {
         public string Path { get; set; }
         public string EntityName { get; set; }
         public string ElementName { get; set; }
         public string OriginalName { get; set; }
         public AssetDataElement LastAdded { get; set; }
         public ExchangeDefinitionInfo Item { get; set; }
         public List<AssetDataElement> Elements = new List<AssetDataElement>();
      }

      private class EntryList
      {
         private List<string> m_Path = new List<string>();
         private string m_RootElement = String.Empty;
         private string m_CurrentEntity = String.Empty;
         private string m_CurrentElement = String.Empty;

         public AssetDataElementList Items { get; set; }
         public List<EntryItem> Elements = new List<EntryItem>();
         public NamespaceInfo Namespace;

         public string CurrentEntity
         {
            get { return m_CurrentEntity; }
         }

         public EntryList(NamespaceInfo ns)
         {
            Namespace = ns;
         }

         private string GetFullPath()
         {
            string fpath = string.Empty;
            foreach(var i in m_Path)
            {
               fpath += (fpath.Length == 0 ? string.Empty : "/") + i;
            }
            return fpath;
         }

         public static AssetDataElement PrepareEntity(string parentName,
            string elementName, string description, string typeName,
            NamespaceInfo ns, NamespaceInfo nsParent)
         {
            AssetDataElement element = new AssetDataElement();

            if (String.IsNullOrWhiteSpace(typeName))
            {
               // TODO: replace hardcoded string
               typeName = "string";
            }

            QualifiedNameInfo baseType = 
               ElementBaseTypeInfo.GetBaseType(typeName);
            string typePrefix = baseType == null ? ns.Prefix : baseType.Prefix;

            element.Namespaces = new NamespaceList();
            element.Namespaces.Add(ns);
            element.TypeQualifiedName = 
               new QualifiedNameInfo(typePrefix, typeName);
            element.ElementQualifiedName =
               new QualifiedNameInfo(ns.Prefix, elementName);
            element.EntityQualifiedName =
               String.IsNullOrWhiteSpace(parentName) ?
                  null : new QualifiedNameInfo(nsParent.Prefix, parentName);

            //asset.EntityName = SegmentCode;
            //asset.ElementName = SegmentReference;
            element.DataType = element.TypeQualifiedName.Name;

            element.ElementType = String.IsNullOrWhiteSpace(parentName) ?
               ElementType.type : ElementType.element;
            element.Namespace = ns.Uri.OriginalString;
            element.Description = TextHelper.ToProperCase(description);
            element.MinLength = 0;
            element.MaxLength = 0;
            element.MinOccurrence = 0;
            element.MaxOccurrence = 1;
            //asset.DataType = asset.TypeQualifiedName.Name;
            AssetDataElement.CompleteElementUpdate(element, ns);
            element.AddAnnotation(element.Description);
            return element;
         }

         /// <summary>
         /// Add an item to the Entry Elements List.
         /// </summary>
         /// <param name="parentName"></param>
         /// <param name="elementName"></param>
         /// <param name="item"></param>
         /// <param name="register"></param>
         /// <param name="addChild"></param>
         /// <returns></returns>
         public AssetDataElement Add(
            string parentName, string elementName, ExchangeDefinitionInfo item,
            bool register = true, bool addChild = true)
         {
            //if (register)
            //{
            //   RegisterPath(item);
            //}

            item.SegmentCode = item.SegmentCode.Trim();

            string fPath = GetFullPath();
            string pName = m_CurrentEntity;
            var aitem = Elements.Find((x) =>
               x.ElementName == item.Position);

            // if not found, prepare the complex type declaration
            AssetDataElement element;
            if (aitem == null)
            {
               aitem = new EntryItem();
               aitem.Item = item;
               aitem.Path = GetFullPath();
               aitem.EntityName = 
                  item.SegmentCode + "_" + item.Position + "_Type";
               aitem.ElementName = item.Position;
               aitem.OriginalName = item.SegmentCode;
               Elements.Add(aitem);

               // register parent segment...
               // TODO: replace hardcoded string
               element = PrepareEntity(
                  String.Empty, aitem.EntityName, item.Element,
                  "object", Namespace, Namespace);
               element.OriginalName = item.SegmentCode;
               element.AddAnnotation(element.Description);
               //asset.CommentText = asset.Description;
               aitem.Elements.Add(element);

               if (!addChild)
               {
                  return element;
               }

               m_CurrentEntity = aitem.EntityName;
            }

            // define element type
            string dataType = String.IsNullOrWhiteSpace(item.DataType) ?
               "string" : item.DataType;

            // prepare current segment child element
            element = PrepareEntity(m_CurrentEntity, item.SegmentReference, 
               item.ElementDescription, dataType, Namespace, Namespace);
            element.AddAnnotation(item.ElementDescription);
            element.CommentText = item.Element;
            element.MinLength = item.MinimumLength;
            element.MaxLength = item.MaximumLength;
            element.Length = element.MaxLength;
            element.OriginalName = item.SegmentReference;
            aitem.Elements.Add(element);

            aitem.LastAdded = element;
            return element;
         }

         public AssetDataElement PrepareElement(
            string parentName, string childName, AssetDataElement asset)
         {
            AssetDataElement child = PrepareEntity(
               parentName, childName, asset.Description, 
               asset.ElementQualifiedName.Name, Namespace, Namespace);
            return child;
         }
      }

      /// <summary>
      /// Prepare Document.
      /// </summary>
      /// <param name="commonList"></param>
      /// <param name="loops"></param>
      /// <param name="arguments"></param>
      /// <returns></returns>
      private static AssetDataElementList? PrepareDocument(
         AssetDataElementList commonList, AssetDataElementList loops, 
         AssetConsoleArgumentsInfo arguments)
      {
         // get root element name
         string rootName = Convert.ToTitleCase(
            arguments.Namespace.Uri.Segments.Last());
         string rootItemName = rootName + "_" + "Document";
         string rootType = rootItemName + "_Type";

         // create namespace instance
         NamespaceInfo ns = new NamespaceInfo(arguments.Namespace);

         // prepare the Document Type
         var parent = EntryList.PrepareEntity(
            String.Empty, rootType, "Root Document", "object", ns, ns);
         loops.Add(parent);

         // add first loop as the child of the root Document Type
         var rootChild = loops[0];
         var child = EntryList.PrepareEntity(
            parent.OriginalName, rootChild.OriginalName, rootChild.Description,
            rootChild.OriginalName + "_Type", ns, ns);
         loops.Add(child);

         // finally add the document element
         child = EntryList.PrepareEntity(
            String.Empty, rootItemName, rootItemName,
            rootType, ns, ns);
         child.ElementType = ElementType.element;
         loops.Add(child);

         // build assets list to be returned
         AssetDataElementList elements = new(arguments.Namespace, 
            AssetType.Schema, arguments.Project.VersionId);

         elements.AddRange(commonList);
         elements.AddRange(loops);

         int ecount = 0;
         foreach(var item in elements)
         {
            item.SequenceId = (ecount++).ToString();
         }
         return elements;
      }

      /// <summary>
      /// Prepare data list for all common elements.
      /// </summary>
      /// <param name="entries"></param>
      /// <param name="arguments"></param>
      private static AssetDataElementList PrepareCommon(
         EntryList entries, AssetConsoleArgumentsInfo arguments)
      {
         string nsText = arguments.Namespace.UriText + "/common";
         string nsPref = arguments.Namespace.Prefix + "c";

         NamespaceInfo ns = new NamespaceInfo(nsPref, nsText, 
            arguments.Namespace.OrganizationDomainId, 
            arguments.Namespace.Extension);

         AssetDataElementList elements = new(ns,
            AssetType.Schema, arguments.Project.VersionId);
         entries.Items = elements;

         foreach(var item in entries.Elements)
         {
            var element = elements.Find(
               (x) => x.OriginalName == item.OriginalName);

            if (element != null)
            {
               continue;
            }

            element = item.Elements[0];
            var pname = element.OriginalName + "_Type";
            var parent = EntryList.PrepareEntity(
               String.Empty, pname,
               element.Description, element.DataType, 
               ns, ns);
            elements.Add(parent);

            for (var i=1; i < item.Elements.Count; i++)
            {
               var itm = item.Elements[i];
               element = EntryList.PrepareEntity(
                  pname, itm.ElementName,
                  itm.Description, itm.DataType, ns, ns);
               elements.Add(element);
            }
         }

         return elements;
      }

      /// <summary>
      /// Maintains Loop Information.
      /// </summary>
      private class LoopInfo
      {
         public string Name { get; set; }
         public AssetDataElement? Parent { get; set; }
         public AssetDataElement Element { get; set; }

         /// <summary>
         /// Given a loop find siblings location and append to the end of those.
         /// </summary>
         /// <param name="parentLoopName">loop name</param>
         /// <param name="item">item to insert</param>
         /// <param name="elements">list of all identified elements</param>
         /// <param name="addIt">true to add it if no simbling has been found
         /// </param>
         public static void InsertItem(string parentLoopName,
            AssetDataElement item, AssetDataElementList elements, 
            bool addIt = false)
         {
            int lastIndex = -1;
            for (var i = 0; i < elements.Count; i++)
            {
               if (elements[i].EntityQualifiedName == null)
               {
                  continue;
               }
               if (elements[i].EntityQualifiedName.OriginalName == 
                  parentLoopName)
               {
                  lastIndex = i;
               }
               else if (lastIndex >= 0)
               {
                  break;
               }
            }

            if (lastIndex >= 0)
            {
               elements.Insert(lastIndex + 1, item);
            }
            else if (addIt)
            {
               elements.Add(item);
            }
         }
      }

      /// <summary>
      /// Prepare data list for all loops.
      /// </summary>
      /// <param name="entries"></param>
      /// <param name="items"></param>
      /// <param name="arguments"></param>
      private static AssetDataElementList PrepareLoops(
         EntryList entries, AssetDataElementList items,
         AssetConsoleArgumentsInfo arguments)
      {
         AssetDataElementList elements = new(arguments.Namespace,
            AssetType.Schema, arguments.Project.VersionId);
         AssetDataElement parent = null;
         entries.Items = elements;
         string loopid = String.Empty;

         NamespaceInfo nsCommon = items.Namespace;

         List<LoopInfo> loops = new List<LoopInfo>();

         foreach (var item in entries.Elements)
         {

            loopid = "LOOP_" + item.Item.Loop + "_" + item.Item.Parent;
            var pname = loopid + "_Type";

            var element = elements.Find(
               (x) => x.OriginalName == loopid);

            // new loop? if so add it
            if (element == null)
            {
               LoopInfo loop = new LoopInfo();
               loop.Name = item.Item.Loop;
               loop.Parent = parent;
               loops.Add(loop);

               element = item.Elements[0];
               parent = EntryList.PrepareEntity(
                  String.Empty, pname,
                  String.Empty, element.DataType,
                  arguments.Namespace, arguments.Namespace);
               parent.OriginalName = loopid;
               elements.Add(parent);

               loop.Element = parent;

               // add to parent loop
               var ploop = loops.Find((x) => x.Name == item.Item.Parent);
               if (ploop != null && 
                  ploop.Element.OriginalName != parent.OriginalName)
               {
                  string ptype = ploop.Element.OriginalName + "_Type";
                  var pelement = EntryList.PrepareEntity(
                     ptype, loopid,
                     item.Item.Element, pname,
                     arguments.Namespace, arguments.Namespace);
                  pelement.OriginalName = parent.OriginalName;

                  LoopInfo.InsertItem(ptype, pelement, elements);
               }
            }

            // add current element into the loop
            var itm = item.Elements[0];
            element = EntryList.PrepareEntity(
               pname, itm.OriginalName,
               itm.Description, itm.OriginalName + "_Type",
               nsCommon, parent.GetElementNamespace());
            itm.OriginalName = loopid;

            LoopInfo.InsertItem(pname, element, elements, true);
         }

         return elements;
      }

      /// <summary>
      /// 
      /// </summary>
      /// <remarks>
      /// It is assumed that an EDI structure has a fullpath whose independent
      /// path elements have unique names... else this will not work.
      /// For example: item1/item2/item3  (this is good)
      ///            : item1/item2/item1  (up's item1 name is repeated! bad)
      /// </remarks>
      /// <param name="list"></param>
      /// <param name="ns"></param>
      /// <returns></returns>
      public static AssetDataElementList? ToAssets(
         List<List<string>> list, AssetConsoleArgumentsInfo arguments)
      {
         List<string> entities = new List<string>();
         EntryList entries = new EntryList(arguments.Namespace);


         List<string>? headers = 
            list == null || list.Count <= 1 ? null : list[0];
         if (headers == null)
         {
            return null;
         }

         // add all segments...
         ExchangeDefinitionInfo entry = new ExchangeDefinitionInfo();
         EdiAsset a = new EdiAsset(arguments);
         for(var i = 1; i < list.Count; i++)
         {
            entry = a.GetItem(list[i]);
            if (String.IsNullOrWhiteSpace(entry.EntityElementName))
            {
               continue;
            }
            entries.Add(entries.CurrentEntity, entry.EntityElementName, entry);
         }

         var commonItems = PrepareCommon(entries, arguments);
         var loopItems = PrepareLoops(entries, commonItems, arguments);
         return PrepareDocument(commonItems, loopItems, arguments);
      }

   }

}

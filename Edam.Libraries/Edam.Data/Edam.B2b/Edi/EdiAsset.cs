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
         public List<AssetDataElement> Elements = new List<AssetDataElement>();
      }

      private class EntryList
      {
         private List<string> m_Path = new List<string>();
         private string m_RootElement = String.Empty;
         private string m_CurrentEntity = String.Empty;
         private string m_CurrentElement = String.Empty;

         public List<EntryItem> Elements = new List<EntryItem>();
         public NamespaceInfo Namespace;

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

         public AssetDataElement PrepareEntity(string parentName,
            string elementName, string description, string typeName,
            NamespaceInfo ns)
         {
            AssetDataElement asset = new AssetDataElement();

            if (String.IsNullOrWhiteSpace(typeName))
            {
               // TODO: replace hardcoded string
               typeName = "string";
            }

            asset.TypeQualifiedName = 
               new QualifiedNameInfo(ns.Prefix, typeName);
            asset.ElementQualifiedName =
               new QualifiedNameInfo(ns.Prefix, elementName);
            asset.EntityQualifiedName = String.IsNullOrWhiteSpace(parentName) ?
               null : new QualifiedNameInfo(ns.Prefix, parentName);

            //asset.EntityName = SegmentCode;
            //asset.ElementName = SegmentReference;
            asset.DataType = asset.TypeQualifiedName.Name;

            asset.ElementType = String.IsNullOrWhiteSpace(parentName) ?
               ElementType.type : ElementType.element;
            asset.Namespace = ns.Uri.OriginalString;
            asset.Description = TextHelper.ToProperCase(description);
            asset.MinLength = 0;
            asset.MaxLength = 0;
            asset.MinOccurrence = 0;
            asset.MaxOccurrence = 1;
            //asset.DataType = asset.TypeQualifiedName.Name;
            AssetDataElement.CompleteElementUpdate(asset, ns);
            return asset;
         }

         public void RegisterPath(ExchangeDefinitionInfo item)
         {
            // is this the root element?
            if (m_Path.Count == 0)
            {
               m_RootElement = item.SegmentCode;
               m_CurrentEntity = String.Empty;
               m_CurrentElement = item.EntityElementName;
               m_Path.Add(String.Empty);
               return;
            }

            string lastEntityName = item.EntityName.Split('/').Last();
            if ((m_CurrentEntity == item.EntityName || 
                 m_CurrentEntity == lastEntityName) &&
               m_CurrentElement == item.EntityElementName)
            {
               return;
            }

            // prepare to investigate path
            string[] l = item.EntityName.Split('/');

            List<string> litems = new List<string>();
            // adding to the path? yes if element == entity name...
            if (m_CurrentElement == l[0])
            {
               foreach (var n in l)
               {
                  litems.Add(n);
               }
            }
            else
            {
               // investigate if any path item was already visited...
               bool found = false;
               List<string> nPath = new List<string>();
               for(int c = 0; c < m_Path.Count; c++)
               {
                  if (m_Path[c] == l[0])
                  {
                     break;
                  }
                  nPath.Add(m_Path[c]);
               }

               foreach (var i in l)
               {
                  if (m_Path.Find((x) => x == i) != null)
                  {
                     nPath.Add(i);
                     found = true;
                     continue;
                  }
                  if (found)
                  {
                     litems.Add(i);
                  }
               }
               m_Path = nPath;
            }

            if (litems.Count > 0)
            {
               string cPath = GetFullPath();
               foreach (var n in litems)
               {
                  //ExchangeDefinitionInfo entry = new ExchangeDefinitionInfo();
                  //entry.SegmentCode = n + "Type";
                  //entry.SegmentName = cPath.Replace("/", " ");
                  //Add(String.Empty, n, entry, false);
                  //m_CurrentEntity = n;
                  m_Path.Add(n);
               }
            }

            m_CurrentElement = item.EntityElementName;
         }

         public AssetDataElement Add(
            string parentName, string elementName, ExchangeDefinitionInfo item,
            bool register = true, bool addChild = true)
         {
            if (register)
            {
               RegisterPath(item);
            }

            string segType = item.SegmentCode + "Type";

            string fPath = GetFullPath();
            string pName = fPath + (String.IsNullOrWhiteSpace(fPath) ?
               String.Empty : "/") + elementName;
            var aitem = Elements.Find((x) =>
               x.EntityName == pName && 
               x.ElementName == segType );

            // if not found, prepare the complex type declaration
            AssetDataElement asset;
            if (aitem == null)
            {
               aitem = new EntryItem();
               aitem.Path = GetFullPath();
               aitem.EntityName = pName;
               aitem.ElementName = segType;
               aitem.OriginalName = item.SegmentCode;
               Elements.Add(aitem);

               // register parent segment...
               // TODO: replace hardcoded string
               asset = PrepareEntity(
                  String.Empty, segType, item.SegmentName, "object", Namespace);
               asset.AddAnnotation(asset.Description);
               //asset.CommentText = asset.Description;
               aitem.Elements.Add(asset);

               if (!addChild)
               {
                  return asset;
               }
            }

            // define element type
            string dataType = String.IsNullOrWhiteSpace(item.DataType) ?
               "string" : item.DataType;

            // prepare current segment child element
            asset = PrepareEntity(segType, item.SegmentReference, 
               item.SegmentName, dataType, Namespace);
            asset.AddAnnotation(item.ElementDescription);
            asset.CommentText = item.Element;
            asset.MinLength = item.MinimumLength;
            asset.MaxLength = item.MaximumLength;
            asset.Length = asset.MaxLength;
            aitem.Elements.Add(asset);

            aitem.LastAdded = asset;
            return asset;
         }

         public AssetDataElement PrepareElement(
            string parentName, string childName, AssetDataElement asset)
         {
            AssetDataElement child = PrepareEntity(
               parentName, childName, asset.Description, 
               asset.ElementQualifiedName.Name, Namespace);
            return child;
         }
      }

      private static AssetDataElementList? PrepareDocument(
         EntryList entries, AssetConsoleArgumentsInfo arguments)
      {
         // get root element name
         string rootName = Convert.ToTitleCase(
            arguments.Namespace.Uri.Segments.Last());

         // add submission document root type
         ExchangeDefinitionInfo entry = new();
         entry.SegmentCode = rootName + "Document";
         entry.SegmentName = "EDI " + rootName + " Submission Document";
         entry.EntityElementName = entry.SegmentCode;

         // prepare the document
         EntryList doc = new EntryList(arguments.Namespace);

         AssetDataElement root = doc.Add(
            String.Empty, entry.SegmentCode, entry, false, false);
         root.ElementType = ElementType.root;

         AssetDataPath fullPath = new AssetDataPath(entry.SegmentCode);

         AssetDataElement asset;
         AssetDataElement passet;
         foreach (EntryItem item in entries.Elements)
         {
            passet = root;
            string? pkey = root.ElementQualifiedName.OriginalName;

            // walk through the path including newly found path elements..
            List<string> rebuiltPath = fullPath.RebuildPath(item.EntityName);

            // add item to the corresponding structure parent element
            int count = 0;
            int tcount = rebuiltPath.Count;
            foreach (var key in rebuiltPath)
            {
               string eName = key + "Type";
               EntryItem? eitem =
                  doc.Elements.Find((x) => x.ElementName == eName);
               if (eitem == null)
               {
                  eitem = new EntryItem();
                  eitem.Path = key;
                  eitem.EntityName = String.Empty;
                  eitem.ElementName = eName;
                  eitem.OriginalName = item.OriginalName;

                  // add a new asset type to structure
                  // TODO: replace hardcoded string
                  AssetDataElement nasset = doc.PrepareEntity(
                     String.Empty, eName, eName, "object", arguments.Namespace);
                  eitem.Elements.Add(nasset);
                  doc.Elements.Add(eitem);

                  // add new entity to the previous parrent asset
                  var parentAsset =
                     doc.Elements.Find((x) => x.ElementName == pkey);
                  nasset = doc.PrepareElement(
                     parentAsset.Elements[0].ElementName, key, nasset);
                  nasset.AddAnnotation(nasset.Description);
                  parentAsset.Elements.Add(nasset);

                  // add structure element to the end of the path
                  fullPath.Add(key);
               }

               count++;
               if (count < tcount)
               {
                  pkey = eitem.ElementName;
                  continue;
               }

               // find child element type
               asset = doc.PrepareElement(
                  eitem.ElementName, item.OriginalName, item.Elements[0]);
               asset.AddAnnotation(item.Elements[0].Description);
               asset.MinOccurrence = entry.ElementRequiredType == "M" ? 1 : 0;
               asset.MaxOccurrence = 1;
               eitem.Elements.Add(asset);
               passet = asset;
               pkey = key;
            }
         }

         // build assets list to be returned
         AssetDataElementList elements = new(arguments.Namespace, 
            AssetType.Schema, arguments.Project.VersionId);
         foreach(var item in entries.Elements)
         {
            elements.AddRange(item.Elements);
         }
         foreach(var item in doc.Elements)
         {
            elements.AddRange(item.Elements);
         }

         int ecount = 0;
         foreach(var item in elements)
         {
            item.SequenceId = (ecount++).ToString();
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
            entries.Add("", entry.EntityElementName, entry);
         }

         return PrepareDocument(entries, arguments);
      }
   }

}

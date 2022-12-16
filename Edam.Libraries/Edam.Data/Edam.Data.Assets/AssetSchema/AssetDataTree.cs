using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Diagnostics;
using Edam.Data.AssetConsole;
using Edam.Data.Asset;
using System.Xml.Linq;

namespace Edam.Data.AssetSchema
{

   public class AssetDataTreeItemUri
   {
      public string Name { get; set; }
      public string UriText { get; set; }
   }

   public class AssetDataNameUriRegistry
   {

      public NamespaceInfo DefaultNamespace { get; set; }

      /// <summary>
      /// The name dictionary is needed to make sure that names used throughout
      /// different namespaces are property prefixed if name collisions are 
      /// found.
      /// </summary>
      private Dictionary<string, List<AssetDataTreeItemUri>>
         m_NameUriDictionary =
            new Dictionary<string, List<AssetDataTreeItemUri>>();

      public AssetDataNameUriRegistry(NamespaceInfo defaultNamespace)
      {
         DefaultNamespace = defaultNamespace;
      }

      #region -- 4.00 - Name - URI Registration

      private List<AssetDataTreeItemUri> FindRegisteredList(string name)
      {
         List<AssetDataTreeItemUri> item = null;
         if (m_NameUriDictionary.TryGetValue(name, out item))
         {
         }
         return item;
      }

      private AssetDataTreeItemUri FindRegisteredItem(
         List<AssetDataTreeItemUri> list, string uriText)
      {
         return list.Find((x) => x.UriText == uriText); ;
      }

      /// <summary>
      /// Register Item name and uri to later manage name collisions.
      /// </summary>
      /// <param name="element"></param>
      public void RegisterItem(AssetDataElement element)
      {
         AssetDataTreeItemUri item = null;
         var list = FindRegisteredList(
            element.ElementQualifiedName.OriginalName);
         if (list != null)
         {
            item = FindRegisteredItem(list, element.ElementUri);
         }

         if (list == null)
         {
            list = new List<AssetDataTreeItemUri>();
            m_NameUriDictionary.Add(
               element.ElementQualifiedName.OriginalName, list);
         }
         if (item == null)
         {
            item = new AssetDataTreeItemUri();
            item.Name = element.ElementQualifiedName.OriginalName;
            item.UriText = element.ElementUri;
            list.Add(item);
         }
      }

      private AssetDataTreeItemUri FindRegisteredItem(AssetDataElement element)
      {
         AssetDataTreeItemUri item = null;
         var list = FindRegisteredList(
            element.ElementQualifiedName.OriginalName);
         if (list != null)
         {
            item = FindRegisteredItem(list, element.ElementUri);
         }
         return item;
      }

      private bool DoNameUriCollied(AssetDataElement element)
      {
         if (element.ElementUri == DefaultNamespace.Uri.AbsoluteUri)
         {
            return false;
         }

         AssetDataTreeItemUri item = null;
         var list = FindRegisteredList(
            element.ElementQualifiedName.OriginalName);
         if (list != null)
         {
            item = FindRegisteredItem(list, element.ElementUri);
         }
         if (item == null)
         {
            throw new Exception("Element Name and Uri not registered!");
         }
         return list.Count > 1;
      }

      private string GetElementTitle(AssetDataElement element)
      {
         return element.ElementQualifiedName.OriginalName;
         //bool collied = DoNameUriCollied(element);
         //return collied ? element.ElementName.Replace(':', '_') :
         //   element.ElementQualifiedName.OriginalName;
      }

      public void SetTitle(AssetDataTreeItem item)
      {
         item.SetTitle(GetElementTitle(item.OriginalElement));
      }

      #endregion

   }

   public class AssetDataTree
   {

      #region -- 1.00 - Fields and Properties

      private AssetData m_AssetData;
      private AssetDataElementList m_Items;
      private AssetDataTreeItem m_Root = null;
      private int m_MaxDepthCount = 0;

      public AssetDataTreeItem Root
      {
         get { return m_Root; }
      }

      private AssetDataNameUriRegistry m_Registry = null;

      #endregion
      #region -- 1.50 - Initialization and Constructures

      public AssetDataTree(AssetDataElementList items,
         NamespaceInfo defaultNamespace, int depthCount = 0)
      {
         m_Items = items;
         m_MaxDepthCount = depthCount;
         m_Registry = new AssetDataNameUriRegistry(defaultNamespace);
      }

      public AssetDataTree(AssetData asset,
         NamespaceInfo defaultNamespace, int depthCount = 0)
      {
         m_AssetData = asset;
         m_Items = asset.Items;
         m_MaxDepthCount = depthCount;
         m_Registry = new AssetDataNameUriRegistry(defaultNamespace);
      }

      #endregion
      #region -- 4.00 - Data Tree Model Preparation Support Methods

      public void SetRoot(AssetDataTreeItem root)
      {
         m_Root = root;
      }

      public AssetDataTreeItem GetItem(AssetDataElement element)
      {
         AssetDataTreeItem item = new AssetDataTreeItem();
         item.Namespace = m_AssetData.GetNamespace(element);
         item.OriginalElement = element;
         item.Element = AssetDataElement.ToDataElement(
            element, item.Namespace, null);

         m_Registry.SetTitle(item);
         return item;
      }

      private List<AssetDataTreeItem> GetInheritedChildren(
         AssetDataElement element, AssetDataTreeItem parent)
      {
         List<AssetDataTreeItem> list = new List<AssetDataTreeItem>();
         AssetDataElement type = m_Items.Find(
            (x) => x.ElementType == ElementType.type &&
               x.ElementName == element.DataType);
         if (type != null)
         {
            var ichildren = AssetDataElementList.GetChildren(
               m_Items, type.Root, element.ElementName, 
               element.GetElementNamespace(), AssetType.Schema,
               element.VersionId);
            if (ichildren != null)
            {
               foreach (var child in ichildren)
               {
                  var tchild = GetItem(child);
                  tchild.Parent = parent;
                  list.Add(tchild);
               }
            }
         }
         return list;
      }

      public List<AssetDataTreeItem> GetChildren(
         AssetDataElement element, AssetDataTreeItem parent)
      {
         List<AssetDataTreeItem> list = new List<AssetDataTreeItem>();

         string elementName = element.ElementType == ElementType.element ?
            element.DataType : element.ElementName;
         var children = AssetDataElementList.GetChildren(
            m_Items, element.Root, elementName, element.GetElementNamespace(),
            AssetType.Schema, element.VersionId);
         foreach(var child in children)
         {
            var tchild = GetItem(child);
            tchild.Parent = parent;
            list.Add(tchild);
         }
         return list;
      }

      private int GetDepthCount(AssetDataTreeItem item)
      {
         int c = 0;
         while(item != null)
         {
            c++;
            if (item.Parent == null)
            {
               break;
            }
            item = item.Parent;
         }
         return c;
      }

      public AssetDataTreeItem PrepareTree(
         AssetDataTreeItem treeItem, AssetDataTreeItem parent)
      {
         // look-out for infinite loops... or stop after max-depth is found
         if (m_MaxDepthCount != 0)
         {
            int depthCount = GetDepthCount(treeItem);
            if (depthCount > m_MaxDepthCount)
            {
               return treeItem;
            }
         }

         // get the inherited children
         List<AssetDataTreeItem> ichildren = null;
         if (treeItem.Element.ElementType == ElementType.type)
         {
            ichildren = GetInheritedChildren(treeItem.Element, parent);
         }

         // get the children
         var echildren = GetChildren(treeItem.Element, parent);

         if (ichildren != null)
         {
            treeItem.Children.AddRange(ichildren);
         }
         treeItem.Children.AddRange(echildren);

         // process all children
         foreach (var child in treeItem.Children)
         {
            if (child.Children.Count > 0)
            {
               continue;
            }

            if (!child.IsValueBaseType)
            {
               PrepareTree(child, treeItem);
            }
         }
         if (treeItem.Children.Count > 0)
         {
            treeItem.Type = InOut.ItemType.Folder;
         }
         return treeItem;
      }

      public void RegisterNameUri(List<AssetData> items)
      {
         foreach (AssetData a in items)
         {
            foreach(var i in a.Items)
            {
               m_Registry.RegisterItem(i);
            }
         }
      }

      public void SetTitle(AssetDataTreeItem item)
      {
         m_Registry.SetTitle(item);
      }

      public static AssetDataTree GetDataTree(
         List<AssetData> items, string rootElement,
         NamespaceInfo defaultNamespace, int maxDepthCount = 0)
      {

         AssetDataTree tree = null;
         foreach (AssetData asset in items)
         {
            tree = new AssetDataTree(asset, defaultNamespace, maxDepthCount);
            tree.RegisterNameUri(items);

            AssetDataElement root = asset.FindRootElement(rootElement);
            if (root == null)
            {
               continue;
            }
            AssetDataTreeItem titem = tree.GetItem(root);

            // remove trailing namespace prefix...
            var ename = rootElement.Split(':');
            titem.SetTitle(ename.Length > 1 ? ename[1] : ename[0]);

            tree.SetRoot(titem);

            tree.PrepareTree(titem, null);
            break;
         }

         if (tree == null || tree.Root == null)
         {
            return null;
         }

         // wrap root element and make it a child of a container
         AssetDataTreeItem troot = new AssetDataTreeItem
         {
            Parent = null,
            OriginalElement = tree.Root.Element,
            Element = tree.Root.Element
         };
         tree.SetTitle(troot);
         troot.Children.Add(tree.Root);
         tree.SetRoot(troot);

         return tree;
      }

      public static AssetDataTree GetDataTree(
         AssetConsoleArgumentsInfo arguments, int maxDepthCount = 0)
      {
         NamespaceInfo ns = arguments.GetDefaultNamespace();
         return GetDataTree(
            arguments.AssetDataItems, arguments.RootElementName, 
            ns, maxDepthCount);
      }

      #endregion

   }

}

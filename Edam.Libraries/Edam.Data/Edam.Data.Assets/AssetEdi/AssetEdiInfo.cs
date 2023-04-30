using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Diagnostics;

namespace Edam.Data.AssetEdi
{

   public class EdiInfo
   {

      private int IndexCounter = 0;
      private ResultLog results = new Diagnostics.ResultLog();

      public AssetDataItemList Items { get; set; }

      public List<EdiLoopInfo> Loops { get; set; }
      public List<EdiTagInfo> Tags { get; set; }

      #region -- 4.00 - Prepare Loops and Tags collections

      /// <summary>
      /// Given a list of Asset Data Elements, prepare the tags file...
      /// </summary>
      /// <param name="items"></param>
      public void PrepareEdiInfo(AssetDataElementList items)
      {
         foreach (var item in items)
         {
            var ename = item.ElementQualifiedName.OriginalName;
            var eindex = item.ElementName.IndexOf('-');
            if (item.ElementQualifiedName.OriginalName == "Message")
            {
               continue;
            }
            else if (item.ElementType == Asset.ElementType.type ||
               item.ElementType == Asset.ElementType.enumerator)
            {
               continue;
            }
            else if (eindex != -1)
            {
               continue;
            }
            else if (ename.Contains("LOOP_"))
            {
               var element = Loops.Find((x) =>
                  x.LoopTag.Tag == item.ElementQualifiedName.OriginalName &&
                  x.LoopTag.QualifiedName.Prefix ==
                     item.ElementQualifiedName.Prefix);
               if (element == null)
               {
                  EdiLoopInfo loop = new EdiLoopInfo();
                  EdiTagInfo tag = new EdiTagInfo();
                  loop.LoopTag = new EdiTagInfo();
                  loop.LoopTag.QualifiedName = item.ElementQualifiedName;
                  loop.LoopTag.Tag = item.ElementQualifiedName.OriginalName;
                  Loops.Add(loop);
               }
            }
            else if (item.EntityName == null ||
               item.EntityName.Trim().Length == 0)
            {
               var element = Tags.Find((x) =>
                  x.Tag == item.ElementQualifiedName.OriginalName &&
                  x.QualifiedName.Prefix ==
                     item.ElementQualifiedName.Prefix);
               if (element == null)
               {
                  EdiTagInfo tagInfo = new EdiTagInfo();
                  tagInfo.QualifiedName = item.ElementQualifiedName;
                  tagInfo.Tag = item.ElementQualifiedName.OriginalName;
                  Tags.Add(tagInfo);
               }
            }

         }
      }

      /// <summary>
      /// Return true if element is a LOOP.
      /// </summary>
      /// <param name="element">element to investigate</param>
      /// <returns>true is returned if element is a LOOP</returns>
      private bool IsLoop(AssetDataElement element)
      {
         return (element.ElementName.Contains("LOOP_"));
      }

      /// <summary>
      /// Get Tag based on the Element Original name.
      /// </summary>
      /// <param name="item">item to get its original name from</param>
      /// <returns>TAG string is returned</returns>
      private string GetTag(AssetDataItem item)
      {
         return item.Element.ElementQualifiedName.OriginalName;
      }

      /// <summary>
      /// Add TAG.
      /// </summary>
      /// <param name="item">Item whose TAG needs registration</param>
      /// <returns>created TAG info is returned</returns>
      private EdiTagInfo AddTag(AssetDataItem item)
      {
         EdiTagInfo tagInfo = new EdiTagInfo();
         tagInfo.Index = IndexCounter;
         tagInfo.QualifiedName = item.Element.ElementQualifiedName;
         tagInfo.Tag = GetTag(item);
         tagInfo.IsLoop = IsLoop(item.Element);
         Tags.Add(tagInfo);
         IndexCounter++;
         return tagInfo;
      }

      /// <summary>
      /// Add TAG.
      /// </summary>
      /// <param name="item">Item whose TAG needs registration</param>
      /// <returns>created TAG info is returned</returns>
      private EdiTagInfo AddTag(AssetDataElement item)
      {
         EdiTagInfo tagInfo = new EdiTagInfo();
         tagInfo.Index = IndexCounter;
         tagInfo.QualifiedName = item.ElementQualifiedName;
         tagInfo.Tag = item.ElementQualifiedName.OriginalName; ;
         tagInfo.IsLoop = false;
         Tags.Add(tagInfo);
         IndexCounter++;
         return tagInfo;
      }

      /// <summary>
      /// Process item by traversing through its structure.
      /// </summary>
      /// <param name="item">item to investigate</param>
      /// <param name="parent">parent TAG</param>
      private void ProcessItem(AssetDataItem item, EdiTagInfo parent)
      {
         var parentTag = AddTag(item);
         foreach(var child in item.Children)
         {
            if (IsLoop(child))
            {
               var childItem = Items.Find((x) => 
                  x.Element.ElementName == child.ElementName + "_Type");

               if (childItem == null)
               {
                  results.Failed(
                     "Expected (" + child.ElementName + ") but not found");
                  return;
               }

               ProcessItem(childItem, parentTag);
            }
            else
            {
               AddTag(child);
            }
         }
      }

      /// <summary>
      /// Prepare EDI element look-up / tag catalog that will be converted into
      /// an XML or JSON file.
      /// </summary>
      /// <param name="arguments"></param>
      public ResultLog PrepareEdiInfo(AssetConsoleArgumentsInfo arguments)
      {
         if (arguments == null || arguments.AssetDataItems.Count == 0)
         {
            results.Failed(
               "Arguments expected but not found, or no Data Items found");
            return results;
         }

         EdiInfo ediInfo = new EdiInfo();
         Loops = new List<EdiLoopInfo>();
         Tags = new List<EdiTagInfo>();

         foreach (var a in arguments.AssetDataItems)
         {
            Items = AssetDataItemList.ToDataItems(a.Items);
            var rootElement = Items.Find((x) =>
               x.Element.ElementName == arguments.RootElementName + "_Type");
            if (rootElement == null)
            {
               results.Failed("No root element found!");
               return results;
            }

            ProcessItem(rootElement, null);
         }
         results.Succeeded();
         return results;
      }

      /// <summary>
      /// 
      /// </summary>
      /// <param name="arguments"></param>
      /// <returns></returns>
      public static ResultLog ToEdiInfo(AssetConsoleArgumentsInfo arguments)
      {
         EdiInfo item = new EdiInfo();
         return item.PrepareEdiInfo(arguments);
      }

      #endregion
      #region -- 4.00 - Manage Document Instance

      /// <summary>
      /// Read EDI document instance lines from a file.
      /// </summary>
      /// <param name="filePath">document instance file path</param>
      /// <returns>if success lines are returned</returns>
      public static string[] FromFile(string filePath)
      {
         return System.IO.File.ReadAllLines(filePath);
      }

      #endregion

   }

}

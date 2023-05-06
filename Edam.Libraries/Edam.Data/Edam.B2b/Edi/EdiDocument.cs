using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Diagnostics;

namespace Edam.B2b.Edi
{

   public class EdiDocument
   {

      [JsonIgnore]
      private int IndexCounter = 0;

      [JsonIgnore]
      private ResultLog results = new ResultLog();

      [JsonIgnore]
      public AssetDataItemList Elements { get; set; }

      public List<EdiSegmentInfo> Items { get; set; }

      #region -- 4.00 - Prepare Loops and Tags collections

      /// <summary>
      /// Return true if element is a LOOP.
      /// </summary>
      /// <param name="element">element to investigate</param>
      /// <returns>true is returned if element is a LOOP</returns>
      private bool IsLoop(AssetDataElement element)
      {
         return element.ElementName.Contains("LOOP_");
      }

      private string GetTypeName(string name)
      {
         return name + "_Type";
      }

      /// <summary>
      /// Add Segment.
      /// </summary>
      /// <param name="item">Item whose TAG needs registration</param>
      /// <returns>created Segment info is returned</returns>
      private EdiSegmentInfo AddSegment(AssetDataElement item)
      {
         EdiSegmentInfo segment = new EdiSegmentInfo
         {
            Index = IndexCounter,
            Name = item.RealName,
            ElementPath = item.AlternateName,
            QualifiedName = item.ElementQualifiedName,
            Segment = item.ElementQualifiedName.OriginalName,
            DataType = item.TypeQualifiedName.OriginalName,

            MinLength = item.MinLength,
            MaxLength = item.MaxLength,

            MinOccurrence = item.MinOccurrence,
            MaxOccurrence = item.MaxOccurrence,

            IsLoop = IsLoop(item)
         };
         IndexCounter++;

         // Setup other Stuff
         segment.SetCodes(item.SampleValue);

         if (segment.IsLoop)
         {
            string[] l = segment.Segment.Split("_");
            segment.Segment = l[1];
            segment.Parent = l[2];
         }

         return segment;
      }

      /// <summary>
      /// Get the type segment children.
      /// </summary>
      /// <param name="typeName">type name</param>
      /// <param name="parentTag"></param>
      private List<EdiSegmentInfo> GetTypeSegmentChildren(
         string typeName, string parentTag)
      {
         List<EdiSegmentInfo> children = new List<EdiSegmentInfo>();
         var items = Elements.Find((x) => x.Element.ElementName == typeName);
         if (items != null)
         {
            foreach (var item in items.Children)
            {
               var tag = AddSegment(item);
               tag.SegmentParent = parentTag;
               children.Add(tag);
            }
         }
         return children;
      }

      /// <summary>
      /// Process item by traversing through its structure.
      /// </summary>
      /// <param name="item">item to investigate</param>
      /// <param name="parent">parent TAG</param>
      private void ProcessItem(AssetDataItem item, EdiSegmentInfo parent)
      {
         var parentSegment = AddSegment(item.Element);
         Items.Add(parentSegment);
         parentSegment.SegmentParent = 
            parent == null ? String.Empty : 
               (parent.IsLoop ? parent.DataType : parent.Segment);

         foreach (var child in item.Children)
         {
            if (IsLoop(child))
            {
               var childItem = Elements.Find((x) =>
                  x.Element.ElementName == GetTypeName(child.ElementName));

               if (childItem == null)
               {
                  results.Failed(
                     "Expected (" + child.ElementName + ") but not found");
                  return;
               }

               ProcessItem(childItem, parentSegment);
            }
            else
            {
               var segment = AddSegment(child);
               Items.Add(segment);
               segment.IsLoop = false;
               segment.SegmentParent = parentSegment.Segment;

               segment.Children = 
                  GetTypeSegmentChildren(GetTypeName(
                     child.ElementName), child.ElementName);
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

         Items = new List<EdiSegmentInfo>();

         foreach (var a in arguments.AssetDataItems)
         {
            Elements = AssetDataItemList.ToDataItems(a.Items);
            var rootElement = Elements.Find((x) =>
               x.Element.ElementName == GetTypeName(arguments.RootElementName));
            if (rootElement == null)
            {
               results.Failed("No root element found!");
               return results;
            }

            ProcessItem(rootElement, null);
         }
         results.ResultValueObject = this;
         results.Succeeded();
         return results;
      }

      /// <summary>
      /// Using the Asset Data Element List withing arguments prepare its 
      /// corresponding TAG - LOOP document.
      /// </summary>
      /// <param name="arguments">arguments needed to prepare EDI TAGs and
      /// Loops based Document</param>
      /// <returns>The </returns>
      public static ResultLog ToDocument(AssetConsoleArgumentsInfo arguments)
      {
         EdiDocument item = new EdiDocument();
         return item.PrepareEdiInfo(arguments);
      }

      /// <summary>
      /// Prepare a JSON (text) document of this.
      /// </summary>
      /// <returns>JSON text is returned</returns>
      public string ToJsonText()
      {
         return JsonConvert.SerializeObject(this, Formatting.Indented);
      }

      /// <summary>
      /// Write Document as JSON text to given path.
      /// </summary>
      /// <param name="filePath">URI or file path</param>
      public void ToFile(string filePath)
      {
         var jsonText = ToJsonText();
         System.IO.File.WriteAllText(filePath, jsonText);
      }

      /// <summary>
      /// Read Document from file using given path.
      /// </summary>
      /// <param name="filePath">file path</param>
      /// <returns>instance of Edi Document is returned</returns>
      public static ResultsLog<EdiDocument?> FromFile(string filePath)
      {
         System.IO.File.ReadAllText(filePath);
         ResultsLog<EdiDocument?> results = new ResultsLog<EdiDocument?>();
         try
         {
            results.Data = JsonConvert.DeserializeObject<EdiDocument>(filePath);
            results.Succeeded();
         }
         catch(Exception ex)
         {
            results.Failed(ex);
         }
         return results;
      }

      #endregion

   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Data.AssetConsole;
using Edam.Diagnostics;

namespace Edam.Data.AssetEdi
{

   public class EdiInfo
   {

      public List<EdiLoopInfo> Loops { get; set; }
      public List<EdiTagInfo> Tags { get; set; }

      #region -- 4.00 - Prepare Loops and Tags collections

      /// <summary>
      /// Inspect Loop info and prepare the EdiLoopInfo propertie.
      /// </summary>
      /// <param name="loop">incomplete loop info</param>
      public static void PrepareLoopTag(EdiLoopInfo loop)
      {
         var tag = loop.LoopTag.Tag.Replace("LOOP_", "");
         var l = tag.Split("_");
         EdiTagInfo start = new EdiTagInfo();
         EdiTagInfo end = new EdiTagInfo();
         start.Tag = l[0];
         end.Tag = l[1];
         loop.StartTag = start;
         loop.EndTag = end;
      }

      /// <summary>
      /// Go through each loop and find start and end tags qualified names.
      /// </summary>
      /// <param name="ediInfo">tags and loops info</param>
      /// <returns>diagnostics results are returned, check Success... if true
      /// all is good, else there maybe a bunch of errors</returns>
      public static ResultLog ReconciliateLoops(EdiInfo ediInfo)
      {
         ResultLog resultLog = new ResultLog();
         foreach(var loop in ediInfo.Loops)
         {
            var selement = ediInfo.Tags.Find((x) => x.Tag == loop.StartTag.Tag);
            if (selement == null)
            {
               resultLog.Failed(new Exception("Loop: (" + loop.LoopTag.Tag + 
                  ") Start Tag not found"));
               continue;
            }
            loop.StartTag.QualifiedName = selement.QualifiedName;

            var eelement = ediInfo.Tags.Find((x) => x.Tag == loop.EndTag.Tag);
            if (eelement == null)
            {
               resultLog.Failed(new Exception("Loop: (" + loop.LoopTag.Tag +
                  ") End Tag not found"));
               continue;
            }
            loop.EndTag.QualifiedName = eelement.QualifiedName;
            resultLog.Succeeded();
         }
         return resultLog;
      }

      /// <summary>
      /// Prepare EDI element look-up / tag catalog that will be converted into
      /// a JSON file.
      /// </summary>
      /// <param name="arguments"></param>
      public static ResultLog ToEdiInfo(AssetConsoleArgumentsInfo arguments)
      {
         if (arguments == null || arguments.AssetDataItems.Count == 0)
         {
            ResultLog r = new Diagnostics.ResultLog();
            r.Failed(
               "Arguments expected but not found, or no Data Items found");
            return r;
         }

         EdiInfo ediInfo = new EdiInfo();
         ediInfo.Loops = new List<EdiLoopInfo>();
         ediInfo.Tags = new List<EdiTagInfo>();

         foreach (var a in arguments.AssetDataItems)
         {
            foreach (var item in a.Items)
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
                  var element = ediInfo.Loops.Find((x) =>
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
                     PrepareLoopTag(loop);
                     ediInfo.Loops.Add(loop);
                  }
               }
               else if (item.EntityName == null ||
                  item.EntityName.Trim().Length == 0)
               {
                  var element = ediInfo.Tags.Find((x) =>
                     x.Tag == item.ElementQualifiedName.OriginalName &&
                     x.QualifiedName.Prefix ==
                        item.ElementQualifiedName.Prefix);
                  if (element == null)
                  {
                     EdiTagInfo tagInfo = new EdiTagInfo();
                     tagInfo.QualifiedName = item.ElementQualifiedName;
                     tagInfo.Tag = item.ElementQualifiedName.OriginalName;
                     ediInfo.Tags.Add(tagInfo);
                  }
               }

            }
         }
         var results = ReconciliateLoops(ediInfo);
         if (results.Success)
         {
            results.ResultValueObject = ediInfo;
         }
         return results;
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

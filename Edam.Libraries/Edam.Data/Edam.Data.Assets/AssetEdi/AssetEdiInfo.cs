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
      /// Prepare EDI element look-up / tag catalog that will be converted into
      /// a JSON file.
      /// </summary>
      /// <param name="arguments"></param>
      public static ResultLog ToEdiInfo(AssetConsoleArgumentsInfo arguments)
      {
         ResultLog results = new Diagnostics.ResultLog();
         if (arguments == null || arguments.AssetDataItems.Count == 0)
         {
            results.Failed(
               "Arguments expected but not found, or no Data Items found");
            return results;
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
         results.Succeeded();
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

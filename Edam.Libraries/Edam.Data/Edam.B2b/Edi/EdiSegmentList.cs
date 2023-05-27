using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.B2b.Edi
{

   public class EdiSegmentList : List<EdiSegmentInfo>
   {

      /// <summary>
      /// Find Loop Segment based on its loop (segmentId) ID.
      /// </summary>
      /// <param name="segmentId">segment ID</param>
      /// <returns>segment is returned if any was found</returns>
      public EdiSegmentInfo? FindLoop(string loopId)
      {
         EdiSegmentInfo? segment =
            this.Find((x) => x.Segment == loopId && x.IsLoop);
         return segment;
      }

      /// <summary>
      /// Find segment with Tag and Code.
      /// </summary>
      /// <param name="parentTag">parent or preceeding Tag</param>
      /// <param name="tag">segment ID</param>
      /// <param name="entityId">entity ID</param>
      /// <returns>segment is returned if any was found</returns>
      public EdiSegmentInfo? FindTag(
         string parentTag, string tag, string entityId)
      {
         EdiSegmentInfo? segment = null;
         var list =
            this.FindAll((x) => x.Segment == tag && 
            (x.Codes.Count == 0 || x.Codes.Contains(entityId)));
         if (list != null && list.Count == 1)
         {
            segment = list[0];
         }
         else
         {
            foreach(var item in list)
            {
               var mt1 = parentTag.Substring(0, 2);
               var mt2 = item.SegmentParent.Substring(0, 2);
               if (String.Compare(mt2, mt1) >= 0)
               {
                  segment = item;
                  break;
               }
            }
         }
         return segment;
      }

   }

}

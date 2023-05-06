using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DocumentFormat.OpenXml.Wordprocessing;
using Edam.Diagnostics;

namespace Edam.B2b.Edi
{

   public class EdiInstance
   {

      private ResultLog m_Results = new ResultLog();
      private StringBuilder m_Builder;
      private EdiDocument m_Document;
      private string m_Delimiter;
      private string m_EndOffLineChar;
      private EdiSegmentInfo m_CurrentTag;

      private int m_CurrentTagIndex = 1;
      private int m_CurrentChildTagIndex = 0;

      public string[] Lines { get; set; }

      public EdiInstance(EdiDocument document)
      {
         m_Builder = new StringBuilder();
         m_Document = document;
      }

      /// <summary>
      /// Process instance lines using given document dictionary.
      /// </summary>
      /// <param name="document">target dictionary</param>
      /// <returns></returns>
      public string ToXml()
      {
         foreach(var items in m_Document.Items)
         {

         }
         return m_Builder.ToString();
      }

      /// <summary>
      /// Get Next Tag...
      /// </summary>
      /// <returns></returns>
      private EdiSegmentInfo GetNextTag()
      {
         if (m_CurrentTagIndex < m_Document.Items.Count)
         {
            var tag = m_Document.Items[m_CurrentTagIndex];
            m_CurrentTag = tag;
            m_CurrentTagIndex++;
            if (tag.IsLoop)
            {
               m_CurrentTag = GetNextTag();
            }
            return m_CurrentTag;
         }
         m_Results.Failed("End of Document found");
         return null;
      }

      private void SetChildrenValues(string[] tokens)
      {
         m_CurrentChildTagIndex = 0;
         for (var i = 1; i < tokens.Length; i++)
         {
            if (m_CurrentChildTagIndex < m_Document.Items.Count)
            {
               m_CurrentTag.Children[m_CurrentChildTagIndex].ValueText =
                  tokens[i];
               m_CurrentChildTagIndex++;
            }
         }
      }

      /// <summary>
      /// Set instance lines.
      /// </summary>
      /// <param name="lines"></param>
      private void SetLines(string[] lines)
      {
         Lines = lines;
         if (Lines == null || Lines.Length <= 2)
         {
            return;
         }

         m_Delimiter = new string(Lines[2][2], 1);

         m_CurrentTagIndex = 1;
         int lineCount = 0;
         foreach (var item in Lines)
         {
            lineCount++;
            string[] tokens = item.Split(m_Delimiter);

            // skip segments that are optional as needed...
            bool skipping = true;
            EdiSegmentInfo segment = null;
            while (skipping)
            {
               segment = GetNextTag();
               if (segment == null)
               {
                  break;
               }

               // validate the token counts
               var tokenCount = tokens.Length - 1;
               if (tokenCount != segment.Children.Count)
               {
                  m_Results.Failed(segment.Segment +
                     "(" + segment.Children.Count.ToString() + ") <> " +
                     tokenCount.ToString());
               }

               // validate tags and segment occurance, skip as needed
               if (segment.Segment != tokens[0])
               {
                  if (segment.MinOccurrence > 0)
                  {
                     m_Results.Failed(segment.Segment + 
                        " expected but (" + tokens[0] + ") was found " +
                        "-- SKIPPED");
                  }
                  segment.Skipped = true;
                  continue;
               }
               skipping = false;
            }

            if (segment == null)
            {
               break;
            }

            // manage all children
            SetChildrenValues(tokens);
         }

         if (lineCount != Lines.Length)
         {

         }

      }

      #region -- 4.00 - Manage Document Instance

      /// <summary>
      /// Read EDI document instance lines from a file.
      /// </summary>
      /// <param name="filePath">document instance file path</param>
      /// <returns>if success lines are returned</returns>
      public static ResultsLog<EdiInstance> FromFile(
         EdiDocument document, string filePath)
      {
         ResultsLog<EdiInstance> results = new ResultsLog<EdiInstance>();
         EdiInstance instance = new EdiInstance(document);
         try
         {
            instance.SetLines(System.IO.File.ReadAllLines(filePath));

            results.Succeeded();
         }
         catch (Exception ex)
         {
            results.Failed(ex);
         }
         return results;
      }

      #endregion

   }

}

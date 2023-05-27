using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml.Wordprocessing;
using Edam.Diagnostics;

namespace Edam.B2b.Edi
{

   /// <summary>
   /// Given an EDI instance file of a particular definition, read its content
   /// and 
   /// </summary>
   public class EdiInstanceReader
   {

      private StringBuilder m_Builder;
      private EdiDocument m_Document;
      private string m_Delimiter;
      private string m_EndOffLineChar;

      public string[] Lines { get; set; }

      public EdiInstance Instance { get; set; } = new EdiInstance();

      /// <summary>
      /// Manage Reader State
      /// </summary>
      private class ReaderState
      {
         public ResultLog Results = new ResultLog();

         private int m_CurrentTagIndex = -1;
         private EdiSegmentInfo? m_CurrentTag = null;
         private string? m_CurrentSegmentId = null;
         private EdiInstance? Instance = null;

         public EdiSegmentList Items { get; set; }

         public ReaderState(EdiDocument document, EdiInstance? instance)
         {
            Items = document.Items;
            Instance = instance;
         }

         /// <summary>
         /// Set the given TAG as current.
         /// </summary>
         /// <param name="tag">tag to set</param>
         private void SetCurrent(EdiSegmentInfo? tag)
         {
            m_CurrentTag = tag;
            m_CurrentSegmentId = tag.SegmentParent;
            m_CurrentTagIndex = tag.SequenceNo + 1;
         }

         /// <summary>
         /// Get Next Tag in Segment.
         /// </summary>
         /// <param name="segmentId">Segment ID being searched based on
         /// SegmentParent</param>
         /// <param name="tokens">current instance segment</param>
         /// <returns>found segment is returned else null</returns>
         private EdiSegmentInfo? GetTagInSegment(
            string segmentId, string[] tokens)
         {
            while (m_CurrentTagIndex < Items.Count)
            {
               var tag = Items[m_CurrentTagIndex];

               if (tag.SegmentParent == segmentId)
               {
                  if (tag.Segment == tokens[0])
                  {
                     if (tag.Codes.Count > 0)
                     {
                        if (tag.Codes.Contains(tokens[1]))
                        {
                           SetCurrent(tag);
                           return m_CurrentTag;
                        }
                     }
                     else
                     {
                        SetCurrent(tag);
                        return m_CurrentTag;
                     }
                  }
               }
               else
               {
                  var seg = Items.FindTag(segmentId, tokens[0], tokens[1]);
                  if (seg != null)
                  {
                     SetCurrent(seg);
                     return m_CurrentTag;
                  }
               }

               m_CurrentTagIndex++;
            }

            // maybe we are starting a new submission...
            if (m_CurrentTag.Segment == "IEA" && tokens[0] == "ISA")
            {
               Instance.Instances.Add(Instance.Items);
               Instance.Items.Clear();

               // find ISA tag... to start a new submission...
               var seg = Items.FindTag(String.Empty, tokens[0], tokens[1]);
               if (seg != null)
               {
                  SetCurrent(seg);
                  return m_CurrentTag;
               }
            }

            return null;
         }

         /// <summary>
         /// Get Next Tag...
         /// </summary>
         /// <returns>next tag is returned</returns>
         public EdiSegmentInfo? GetNextTag(string[] tokens)
         {
            if (m_CurrentTagIndex == -1)
            {
               var seg = Items.FindTag(String.Empty, tokens[0], tokens[1]);
               if (seg != null)
               {
                  SetCurrent(seg);
                  return seg;
               }
               else
               {

               }
            }

            if (m_CurrentTagIndex < Items.Count)
            {
               GetTagInSegment(m_CurrentSegmentId, tokens);
               return m_CurrentTag;
            }

            Results.Failed("End of Document found");
            return null;
         }
      }

      private ReaderState m_State;

      public EdiInstanceReader(EdiDocument document)
      {
         m_Builder = new StringBuilder();
         m_Document = document;
         m_State = new ReaderState(document, Instance);
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
      /// Parse instance lines.
      /// </summary>
      /// <param name="lines">instance lines</param>
      private void Parse(string[] lines)
      {
         Lines = lines;
         if (Lines == null || Lines.Length <= 2)
         {
            return;
         }

         m_Delimiter = new string(Lines[2][2], 1);

         int lineCount = 0;
         EdiSegmentInfo? segment = null;
         foreach (var item in Lines)
         {
            lineCount++;
            string[] tokens = item.Split(m_Delimiter);

            if (tokens != null && String.IsNullOrWhiteSpace(tokens[0]))
            {
               continue;
            }

            segment = m_State.GetNextTag(tokens);

            if (segment != null)
            {
               var sitem = EdiSegmentInfo.Duplicate(segment);
               EdiSegmentInfo.SetValues(sitem, tokens);
               Instance.Items.Add(sitem);
            }
            else
            {

            }
         }

         // add last instance...
         if (Instance.Items.Count > 0)
         {
            Instance.Instances.Add(Instance.Items);
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
      public static ResultsLog<EdiInstanceReader> FromFile(
         EdiDocumentReader document, string filePath)
      {
         ResultsLog<EdiInstanceReader> results = 
            new ResultsLog<EdiInstanceReader>();
         EdiInstanceReader instance = new EdiInstanceReader(document);
         try
         {
            instance.Parse(System.IO.File.ReadAllLines(filePath));

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

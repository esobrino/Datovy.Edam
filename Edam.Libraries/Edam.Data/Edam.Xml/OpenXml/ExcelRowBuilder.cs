using System;

// -----------------------------------------------------------------------------
using Edam.Text;

namespace Edam.Xml.OpenXml
{

   public class ExcelRowBuilder : ITableBuilder
   {
      public static readonly string DEFAULT_NAME = "Table";

      private ExcelDocument m_Document;
      private UInt32 m_CurrentRowIndex = 1U;
      private UInt32 m_CurrentColumnIndex = 1U;
      private UInt32 m_CurrentStyleNo = 0U;

      public String Name { get; set; }
      public TableBuilderType Type { get; set; }

      public ExcelRowBuilder(ExcelDocument document)
      {
         m_Document = document ?? new ExcelDocument();
      }

      public ExcelRowBuilder()
      {
         m_Document = new ExcelDocument();
      }
      
      public void SetStyleNo(UInt32 styleNo = 0U)
      {
         m_CurrentStyleNo = styleNo;
      }

      public ITableBuilder AppendColumn(
         UInt32 columnIndex, bool hidden = false, bool bestFit = true)
      {
         m_Document.AddColumn(columnIndex, hidden, bestFit);
         return this;
      }

      public ITableBuilder AppendRowCell(string text)
      {
         var txt = text ?? String.Empty;
         m_Document.InsertCellText(
            m_CurrentColumnIndex, m_CurrentRowIndex, txt, m_CurrentStyleNo);
         m_CurrentColumnIndex++;
         return this;
      }

      public ITableBuilder AppendRowCellLast(string text = null)
      {
         var txt = text ?? String.Empty;
         if (!String.IsNullOrEmpty(text))
         {
            m_Document.InsertCellText(
               m_CurrentColumnIndex, m_CurrentRowIndex, txt, m_CurrentStyleNo);
         }
         m_CurrentRowIndex++;
         m_CurrentColumnIndex = 1;
         return this;
      }

      public void AddWorksheet(string name)
      {
         // make sure to start at the top...
         m_CurrentRowIndex = 1U;
         var nm = String.IsNullOrWhiteSpace(name) ? Name : name;
         m_Document.AddWorksheet(nm);
      }

      /// <summary>
      /// Set file path for output document as needed.
      /// </summary>
      /// <param name="resourceUri">resource URI</param>
      public void Open(string resourceUri)
      {
         m_Document ??= new ExcelDocument();
         if (String.IsNullOrWhiteSpace(Name))
            Name = DEFAULT_NAME;
         if (String.IsNullOrWhiteSpace(resourceUri))
         {
            // TODO: replace hardcoded label 
            throw new Exception(
               "ExcelRowBuilder::SetFilePath: resoource URI expected!");
         }
         else
         {
            m_Document.CreateDocument(resourceUri);
         }
      }

      public void Close()
      {
         if (m_Document == null)
            return;
         m_Document.Save();
         m_Document.Dispose();
         m_Document = null;
      }

      /// <summary>
      /// Given a row of string items delimited by given string write an
      /// OpenXml / Excel row;
      /// </summary>
      /// <param name="text">text</param>
      /// <param name="delimeter">delimeter</param>
      /// <param name="styleNo">style No</param>
      /// <returns></returns>
      public ITableBuilder AppendRow(
         string text, string delimeter = ",", UInt32 styleNo = 0U)
      {
         String[] l = text.Split(delimeter.ToCharArray());
         uint columnIndex = 1;
         foreach(var i in l)
         {
            var item = i.Trim();
            m_Document.InsertCellText(
               columnIndex, m_CurrentRowIndex, item, styleNo);
            columnIndex++;
         }
         m_CurrentRowIndex++;
         m_CurrentColumnIndex = 1;
         m_CurrentStyleNo = styleNo;
         return this;
      }
   }

}

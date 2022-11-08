using System;
using System.Text;
// -----------------------------------------------------------------------------
namespace Edam.Text
{

   public class TableBuilder: ITableBuilder
   {
      private readonly StringBuilder m_Builder = new StringBuilder();
      public static readonly string DEFAULT_DELIMITER = ",";
      private string m_Delimiter = DEFAULT_DELIMITER;
      private int m_ColumnIndex = 0;

      public String Name { get; set; }
      public TableBuilderType Type { get; set; }

      public TableBuilder(string delimiter = null)
      {
         m_Delimiter = delimiter ?? DEFAULT_DELIMITER;
      }

      public void SetStyleNo(UInt32 styleNo)
      {

      }

      public void AddWorksheet(string name)
      {

      }

      public ITableBuilder AppendColumn(
         UInt32 columnIndex, bool hidden = false, bool bestFit = true)
      {
         return this;
      }

      public ITableBuilder AppendRow(
         String text, String delimeter = null, UInt32 styleNo = 0U)
      {
         m_ColumnIndex = 0;
         m_Builder.AppendLine(text);
         return this;
      }
      public ITableBuilder AppendRowCellLast(String text = null)
      {
         if (String.IsNullOrWhiteSpace(text))
         {
            if (m_ColumnIndex > 0)
               m_Builder.Append(m_Delimiter);
            m_Builder.AppendLine(text);
         }
         m_ColumnIndex = 0;
         return this;
      }
      public ITableBuilder AppendRowCell(String text)
      {
         if (m_ColumnIndex > 0)
            m_Builder.Append(m_Delimiter);
         m_Builder.Append(text);
         m_ColumnIndex++;
         return this;
      }
      public new String ToString()
      {
         return m_Builder.ToString();
      }
      public void Open(string resourdeUri)
      {

      }
      public void Close()
      {

      }
   }

}

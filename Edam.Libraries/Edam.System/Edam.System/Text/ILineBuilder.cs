using System;
// -----------------------------------------------------------------------------
namespace Edam.Text
{
   public interface ITableBuilder
   {
      String Name { get; set; }
      TableBuilderType Type { get; set; }
      ITableBuilder AppendRow(
         String text, String delimeter = ",", UInt32 styleNo = 0U);
      ITableBuilder AppendRowCellLast(String text = null);
      ITableBuilder AppendRowCell(String text);
      ITableBuilder AppendColumn(
         UInt32 columnIndex, bool hidden = false, bool bestFit = true);
      void SetStyleNo(UInt32 styleNo = 0U);
      void Open(String resourceUri);
      void AddWorksheet(String name);
      void Close();
      String ToString();
   }
}

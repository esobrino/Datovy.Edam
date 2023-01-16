using System;
using System.Collections.Generic;
// -----------------------------------------------------------------------------
using Edam.Diagnostics;

namespace Edam.Text
{
   public interface ITableBuilder
   {
      String Name { get; set; }
      TableBuilderType Type { get; set; }
      IResultsLog Results { get; set; }

      ITableBuilder AppendRow(
         String text, String delimeter = ",", UInt32 styleNo = 0U);
      ITableBuilder AppendRowCellLast(String text = null);
      ITableBuilder AppendRowCell(String text);
      ITableBuilder AppendColumn(
         UInt32 columnIndex, bool hidden = false, bool bestFit = true);

      void AppendHeader(string columns,
         uint rowStyle = (uint)TableRowStyle.Fill3Border1Font14);
      void AppendMainHeader(
         List<string> header, string headerText,
         uint rowStyle = (uint)TableRowStyle.Fill3Border1Font14);
      void AddColumns(bool hidden = true, int count = 3);

      void SetStyleNo(UInt32 styleNo = 0U);
      void Open(String resourceUri);
      void AddWorksheet(String name);
      void Close();
      String ToString();
   }
}

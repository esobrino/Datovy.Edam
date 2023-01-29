using System;
namespace Edam.Text
{
   public class TableColumnInfo
   {

      public int Index { get; set; } = -1;
      public string Name { get; set; } = string.Empty;
      public bool Hidden { get; set; } = false;
      public uint StyleNo { get; set; } = 0U;

   }
}

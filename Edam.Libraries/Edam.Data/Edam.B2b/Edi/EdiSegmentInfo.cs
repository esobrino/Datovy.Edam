using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;

namespace Edam.B2b.Edi
{

   public class EdiSegmentInfo
   {

      public int Index { get; set; }
      public string Segment { get; set; }
      public string Parent { get; set; }
      public string Name { get; set; }
      public string ElementPath { get; set; }
      public string DataType { get; set; }
      public List<string> Codes { get; set; } = new List<string>();
      public string ValueText { get; set; }
      public bool Skipped { get; set; } = false;

      public int? MinLength { get; set; } = 0;
      public int? MaxLength { get; set; } = 0;

      public int? MinOccurrence { get; set; } = 0;
      public int? MaxOccurrence { get; set; } = 0;

      public QualifiedNameInfo QualifiedName { get; set; }
      public bool IsLoop { get; set; }

      public string SegmentParent { get; set; }

      public List<EdiSegmentInfo> Children { get; set; } = 
         new List<EdiSegmentInfo>();

      public void SetCodes(string codes)
      {
         if (String.IsNullOrWhiteSpace(codes))
         {
            return;
         }

         Codes.Clear();
         string[] l = codes.Split(" ");
         foreach(string c in l)
         {
            Codes.Add(c.Trim());
         }
      }

      public bool HasCode(string code)
      {
         return Codes.Contains(code);
      }

   }

}

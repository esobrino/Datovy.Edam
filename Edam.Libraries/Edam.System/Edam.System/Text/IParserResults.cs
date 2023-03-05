using Edam.Diagnostics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Text
{
   public interface IParserResults
   {
      object ParentContext { get; set; }
      object Context { get; }
      string OriginalText { get; set; }
      string ParsedText { get; set; }
      string ResultText { get; set; }
      List<string> Extracts { get; set; }
      ResultLog Results { get; set; }
   }
}

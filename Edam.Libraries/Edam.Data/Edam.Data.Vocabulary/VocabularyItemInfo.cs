using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Data.Vocabulary
{

   public class VocabularyItemInfo
   {

      public string? ItemID { get; set; }
      public string? BusinessDomainID { get; set; }
      public string? BusinessAreaID { get; set; }
      public string? EntityName { get; set; }
      public bool ElementInclude { get; set; }
      public string? ElementName { get; set; }
      public string? OriginalElementName { get; set; }
      public string? Synonyms { get; set; }
      public string? Aliases { get; set; }
      public string? Tags { get; set; }
      public decimal? Confidence { get; set; }
      public string? Definition { get; set; }
      public string? Notes { get; set; }

   }

}



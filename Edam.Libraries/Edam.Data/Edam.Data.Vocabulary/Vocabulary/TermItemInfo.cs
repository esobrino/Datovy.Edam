using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Data.Lexicon.Vocabulary
{

   public class TermItemInfo
   {

      [MaxLength(128)]
      public string LexiconID { get; set; }

      [Key, MaxLength(40)]
      public string KeyID { get; set; }
      [MaxLength(128)]
      public string? BusinessDomainID { get; set; }
      [MaxLength(128)]
      public string? Category { get; set; }
      [MaxLength(128)]
      public string? Tag { get; set; }
      [MaxLength(128)]
      public string? Term { get; set; }
      public string? Synonyms { get; set; }
      public string? Description { get; set; }

      public LexiconItemInfo Lexicon { get; set; }

      private string? _fullPath = null;
      public string? FullPath
      {
         get
         {
            return _fullPath;
         }
      }

      public string ResetFullPath()
      {
         return _fullPath = BusinessDomainID + "/" + Category + 
            "/" + Tag + "/" + Term;
      }

   }

}



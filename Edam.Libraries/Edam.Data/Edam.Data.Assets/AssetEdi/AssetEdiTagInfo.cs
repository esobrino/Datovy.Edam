using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.Asset;

namespace Edam.Data.AssetEdi
{

   public class EdiTagInfo
   {

      public int Index { get; set; }
      public string Tag { get; set; }
      public QualifiedNameInfo QualifiedName { get; set; }
      public bool IsLoop { get; set; }

      public EdiTagInfo TagParent { get; set; }

   }

}

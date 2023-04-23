using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------

namespace Edam.Data.AssetEdi
{

   public class EdiLoopInfo
   {
      public EdiTagInfo LoopTag { get; set; }
      public EdiTagInfo StartTag { get; set; }
      public EdiTagInfo EndTag { get; set; }

   }

}

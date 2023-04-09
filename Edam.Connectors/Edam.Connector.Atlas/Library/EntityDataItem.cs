using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Connector.Atlas.Library
{

   public class EntityDataItem
   {
      public AtlasEntityDef? Definition { get; set; } = null;
      public AtlasEntity? Instance { get; set; } = null;
   }

}

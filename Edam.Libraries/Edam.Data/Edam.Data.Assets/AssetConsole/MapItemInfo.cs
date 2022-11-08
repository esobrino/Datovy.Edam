using Edam.Data.AssetConsole;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;

namespace Edam.Data.Assets.AssetConsole
{

   public enum DataMapItemType
   {
      Unknown = 0,
      Source = 1,
      Target = 2
   }

   public class SampleItem
   {
      public string FilePath { get; set; }
      public string DocumentText { get; set; }
      public object Data { get; set; }
   }

   public class DataMapItemInfo
   {
      public DataMapItemType Type { get; set; }
      public string Name { get; set; }

      [IgnoreDataMember]
      public object Data { get; set; } = null;

      public SampleItem Sample { get; set; }

      public string ParentProcessName { get; set; }
      public ProcessInfo Process { get; set; } = null;
   }

}

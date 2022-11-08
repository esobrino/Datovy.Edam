using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.UI.App
{

   public class EdamSettings
   {
      public class SchemaInfo
      {
         public class DefaultsInfo
         {
            public string TypePostfix { get; set; }
            public string DocumentPostfix { get; set; }
         }

         public DefaultsInfo Defaults = new DefaultsInfo();
      }
      public class AppInfo
      {
         public class DefaultsInfo
         {
            public string OrganizationId { get; set; }
         }

         public string ConsolePath { get; set; }
         public DefaultsInfo Defaults = new DefaultsInfo();

      }

      public SchemaInfo Schema = new SchemaInfo();
      public AppInfo App = new AppInfo();
   }

}

using System;
using System.Collections.Generic;
using System.Text;

// -----------------------------------------------------------------------------
using Newtonsoft.Json.Linq;
using Edam.Data.Asset;
using Edam.Data.AssetSchema;

namespace Edam.Json.JsonSchemaReader
{

   public class JsonComplexType : JsonItemInfo
   {

      public JsonComplexType(JToken token, NamespaceList namepaces) :
         base(token, namepaces)
      {
         ElementType = Data.Asset.ElementType.type;
      }

   }

}

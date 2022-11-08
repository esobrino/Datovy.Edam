using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using serial = Edam.Serialization;
using Newtonsoft.Json;

namespace Edam.Data.AssetSchema
{

   public enum AssetElementContraintType
   {
      Unknown = 0,
      ForeignKey = 1
   }

   public class AssetElementConstraintInfo
   {
      [JsonIgnore]
      public string ParentName { get; set; }
      [JsonIgnore]
      public string ElementName { get; set; }

      public string ContraintName { get; set; }
      public AssetElementContraintType ContraintType { get; set; }
      public string ContraintDescription { get; set; }
      public string ReferenceSchemaName { get; set; }
      public string ReferenceEntityName { get; set; }
      public string ReferenceElementName { get; set; }
   }

   public class AssetElementConstraintList : List<AssetElementConstraintInfo>
   {
      public AssetElementConstraintList() : base()
      {

      }
      public new void Add(AssetElementConstraintInfo constraint)
      {
         var item = Find((x) => x.ContraintType == constraint.ContraintType &&
            x.ContraintName == constraint.ContraintName &&
            x.ReferenceEntityName == constraint.ReferenceEntityName &&
            x.ReferenceElementName == constraint.ReferenceElementName);
         if (item != null)
         {
            return;
         }
         base.Add(constraint);
      }
      public void Add(string constraintName, AssetElementContraintType type,
         string description, string schemaName,
         string entityName, string elementName)
      {
         AssetElementConstraintInfo item = new AssetElementConstraintInfo();
         item.ContraintName = constraintName;
         item.ContraintType = type;
         item.ContraintDescription = description;
         item.ReferenceSchemaName = schemaName;
         item.ReferenceEntityName = entityName;
         item.ReferenceElementName = elementName;
         Add(item);
      }

      public static string ToJson(AssetElementConstraintList constraints)
      {
         return serial.JsonSerializer.Serialize<
            AssetElementConstraintList>(constraints);
      }

      public static AssetElementConstraintList FromJson(string jsonText)
      {
         return serial.JsonSerializer.Deserialize<
            AssetElementConstraintList>(jsonText);   
      }
   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Connector.Atlas.Library
{

   public interface IAttributeDef
   {
      public Cardinality Cardinality { get; set; }
      public ICollection<AtlasConstraintDef> Constraints { get; set; }
      public string DefaultValue { get; set; }
      public string Description { get; set; }
      public string DisplayName { get; set; }
      public bool IncludedInNotification { get; set; }
      public IndexType IndexType { get; set; }
      public bool IsIndexable { get; set; }
      public bool IsOptional { get; set; }
      public bool IsUnique { get; set; }
      public string Name { get; set; }
      public ReferredStringMap_ Options { get; set; }
      public double SearchWeight { get; set; }
      public string TypeName { get; set; }
      public double ValuesMaxCount { get; set; }
      public double ValuesMinCount { get; set; }
   }

   public partial class AtlasAttributeDef : IAttributeDef
   {

   }

}

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Connector.Atlas.Library
{

   public interface IBaseTypeDef
   {
      TypeCategory Category { get; set; }
      double CreateTime { get; set; }
      string CreatedBy { get; set; }
      DateFormat DateFormatter { get; set; }
      string Description { get; set; }
      string Guid { get; set; }
      string Name { get; set; }
      Attributes_ Options { get; set; }
      string ServiceType { get; set; }
      string TypeVersion { get; set; }
      string UpdateTime { get; set; }
      string UpdatedBy { get; set; }
      double Version { get; set; }
   }

   public partial class AtlasBaseTypeDef : IBaseTypeDef
   {
      public object CreateInstance()
      {
         return new AtlasBaseTypeDef();
      }
   }

   #region -- 4.00 - Type Definitions usign the BaseTypeDef

   public partial class AtlasBusinessMetadataDef : IBaseTypeDef
   {
   }

   public partial class AtlasClassificationDef : IBaseTypeDef
   {
   }

   public partial class AtlasEntityDef : IBaseTypeDef
   {
   }

   public partial class AtlasEnumDef : IBaseTypeDef
   {
   }

   public partial class AtlasRelationshipDef : IBaseTypeDef
   {
   }

   public partial class AtlasStructDef : IBaseTypeDef
   {
   }

   #endregion

}
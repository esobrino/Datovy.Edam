using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

// -----------------------------------------------------------------------------
using Edam.Data.AssetSchema;

namespace Edam.Connector.Atlas.Library
{

   /// <summary>
   /// Support methods to manage the preparation, and retrieval of Entities 
   /// their definition, instances and processes.
   /// </summary>
   public class EntityHelper
   {
      public const string EDAM_STUDIO_LABEL = "Edam.Studio";
      public const string DATA_SET = "DataSet";

      /// <summary>
      /// Get element options based on related Tag Items...
      /// </summary>
      /// <param name="element">element whose TagItems will be use to prepare
      /// the options</param>
      /// <returns>instance of attributes is returned</returns>
      private static Attributes_ GetOptions(AssetDataElement element)
      {
         // key - value dictionary...
         var options = new Attributes_();
         foreach (var item in element.TagItems)
         {
            Attribute_ attribute = new Attribute_();
            attribute.Add(item, "true");
            options.Add(attribute);
         }
         return options;
      }

      /// <summary>
      /// Given an item (element and children) prepare the Base Type defintion.
      /// </summary>
      /// <remarks>by default a type prepared here should not be consider final
      /// since the caller method may modify the "Category" that is defaulted 
      /// here to "ENTITY" and other data elements as needed</remarks>
      /// <param name="item">item containing element and children to use</param>
      /// <param name="typeDef">type definition</param>
      public static void PrepareTypeDefinition(
         AssetDataItem item, IBaseTypeDef? typeDef)
      {
         if (typeDef == null)
         {
            return;
         }

         typeDef.Category = TypeCategory.ENTITY;
         typeDef.CreateTime = DateTimeOffset.Now.Ticks;
         typeDef.CreatedBy = EDAM_STUDIO_LABEL;
         typeDef.Description = item.Element.Description;
         typeDef.Guid = item.Element.Guid;
         typeDef.Name = item.Element.ElementName;
         typeDef.ServiceType = "EDAM Data Asset";

         // key - value dictionary...
         typeDef.Options = GetOptions(item.Element);

         typeDef.TypeVersion = item.Element.VersionId;
      }

      /// <summary>
      /// Create an Entity Defintion given an Asset Data Element.
      /// </summary>
      /// <param name="element"></param>
      /// <returns></returns>
      public static AtlasEntityDef CreateEntityDefinition(AssetDataItem item)
      {
         AtlasEntityDef entityDef = new AtlasEntityDef();
         PrepareTypeDefinition(item, entityDef);
         entityDef.SuperTypes = new List<string>();
         entityDef.SuperTypes.Add(DATA_SET);
         return entityDef;
      }

      // TODO: Create an Entity Process Definition for Lineage specifications...

      /// <summary>
      /// Create an Entity Instance.
      /// </summary>
      /// <param name="item">information about the data item</param>
      /// <returns>Instance of AtlasEntity is returned</returns>
      public static AtlasEntity CreateEntityInstance(AssetDataItem item)
      {
         AtlasEntity entity = new AtlasEntity();
         entity.TypeName = item.Element.ElementName;
         entity.UpdateBy = EDAM_STUDIO_LABEL;
         entity.UpdateTime = DateTimeOffset.Now.Ticks;
         entity.CreatedBy = EDAM_STUDIO_LABEL;
         entity.CreateTime = DateTimeOffset.Now.Ticks;
         entity.Status = Status.ACTIVE;
         entity.IsIncomplete = false;
         entity.Guid = item.Element.Guid;

         // TODO: Convert the Element.VersionId into a number
         entity.Version = 1.0;

         entity.Meanings = new List<AtlasTermAssignmentHeader>();
         entity.Meanings.Add(CreateTerm(item));

         // if there is any label / tag add them as a Label
         if (item.Element.TagItems != null)
         {
            entity.Labels = item.Element.TagItems;
         }

         return entity;
      }

      /// <summary>
      /// Create Term based on given data item.
      /// </summary>
      /// <param name="item">data item</param>
      /// <returns>Instance of AtlasTermAssignmentHeader is returned</returns>
      public static AtlasTermAssignmentHeader CreateTerm(AssetDataItem item)
      {
         AtlasTermAssignmentHeader term = new AtlasTermAssignmentHeader();
         term.TermGuid = item.Element.Guid;
         term.CreatedBy = EDAM_STUDIO_LABEL;
         term.Status = AtlasTermAssignmentStatus.IMPORTED;
         term.Description = item.Element.Description;
         term.QualifiedName = item.Element.GetElementNamespace().UriText +
            "://" + item.Element.ElementName;
         return term;
      }

      /// <summary>
      /// Given a list of elements 
      /// </summary>
      /// <param name="items">list of Data Elements</param>
      /// <returns>list of EntityDataItem is returned</returns>
      public static ICollection<AssetDataItem> PrepareEntityDefinitions(
         AssetDataElementList items)
      {
         ICollection<AssetDataItem> entities = new List<AssetDataItem>();
         var types = AssetDataElementList.GetTypes(items);
         foreach (var type in types)
         {
            var item = AssetDataElementList.GetChildren(items, type);
            var entityItem = new EntityDataItem();

            entityItem.Definition = CreateEntityDefinition(item);
            entityItem.Definition.AttributeDefs = new List<AtlasAttributeDef>();
            item.Tag = entityItem;

            entities.Add(item);

            foreach(var child in item.Children)
            {
               var attrDef = CreateAttribute(child);
               entityItem.Definition.AttributeDefs.Add(attrDef);
            }
         }
         return entities;
      }

      /// <summary>
      /// Prepare Entity definitions, its assumed that the corresponding 
      /// Entity Type Definition has already been prepared.
      /// </summary>
      /// <param name="elements">list of Asset Data Elements 
      /// should never be null</param>
      /// <param name="items">list of Asset Data Elements</param>
      /// <returns>list of EntityDataItem is returned</returns>
      public static ICollection<AssetDataItem> PrepareEntityInstances(
         AssetDataElementList elements,
         ICollection<AssetDataItem> items)
      {
         items = items ?? new List<AssetDataItem>();
         foreach (var item in items)
         {
            var dataItem = item.Children == null ?
               AssetDataElementList.GetChildren(elements, item.Element) : item;
            var tag = item.Tag as EntityDataItem ?? new EntityDataItem();
            tag.Instance = CreateEntityInstance(dataItem);


            item.Tag = tag;
         }
         return items;
      }

      /// <summary>
      /// Create an Entity Attribute using element information.
      /// </summary>
      /// <param name="element">element to derive attribute from</param>
      /// <returns>instance of AtlasAttributeDef is returned</returns>
      private static AtlasAttributeDef CreateAttribute(
         AssetDataElement element)
      {
         AtlasAttributeDef attr = new AtlasAttributeDef();

         attr.Cardinality = 
            (element.IsList) ? Cardinality.LIST : Cardinality.SINGLE;
         attr.Constraints = new List<AtlasConstraintDef>();
         attr.DefaultValue = element.DefaultValue;
         attr.Description = element.Description;
         attr.DisplayName = element.AnnotationText;
         attr.IncludedInNotification = true;
         attr.IsOptional = element.IsOptional;
         attr.IsIndexable = element.KeyType == Data.Asset.ConstraintType.key;
         attr.IndexType = 
            element.IsString ? IndexType.STRING : IndexType.DEFAULT;
         attr.IsUnique = element.KeyType == Data.Asset.ConstraintType.key;
         attr.Name = element.ElementName;

         // key - value dictionary...
         attr.Options = GetOptions(element);

         attr.TypeName = element.TypeName;
         attr.ValuesMaxCount = (double)(element.MaxOccurrence.HasValue ? 
            element.MaxOccurrence.Value : (double)1.0);
         attr.ValuesMinCount = (double)(element.MinOccurrence.HasValue ?
            element.MinOccurrence.Value : (double)0.0);

         return attr;
      }

      /// <summary>
      /// Preapre attribute definitions...
      /// </summary>
      /// <param name="item"></param>
      /// <param name="attributeDefs"></param>
      public static void PrepareAttributeDefinitions(
         AssetDataItem item, ICollection<IAttributeDef>? attributeDefs)
      {
         if (attributeDefs == null)
         {
            return;
         }

         foreach (var element in item.Children)
         {
            attributeDefs.Add(CreateAttribute(element));
         }
      }

   }

}

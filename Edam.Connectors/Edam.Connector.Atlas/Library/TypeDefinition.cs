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

   public class TypeDefinition
   {
      private ICollection<AtlasBusinessMetadataDef> m_Definition { get; set; }

      public TypeDefinition(AssetDataElement element)
      {
         m_Definition = new List<AtlasBusinessMetadataDef>();
      }

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
         typeDef.CreatedBy = "Edam.Studio";
         typeDef.Description = item.Element.Description;
         typeDef.Guid = item.Element.Guid;
         typeDef.Name = item.Element.ElementName;
         typeDef.ServiceType = "EDAM Data Asset";

         // key - value dictionary...
         typeDef.Options = GetOptions(item.Element);

         typeDef.TypeVersion = item.Element.VersionId;
      }

      /// <summary>
      /// Given a list of elements 
      /// </summary>
      /// <param name="items"></param>
      public void PrepareDefinition(AssetDataElementList items)
      {
         m_Definition.Clear();
         var types = AssetDataElementList.GetTypes(items);
         foreach (var type in types)
         {
            var item = AssetDataElementList.GetChildren(items, type);
            // PrepareTypeDefinition(item, type as IBaseTypeDef);
         }
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

      /// <summary>
      /// Create an Entity Defintion given an Asset Data Element.
      /// </summary>
      /// <param name="element"></param>
      /// <returns></returns>
      public static TypeDefinition CreateEntity(AssetDataElement element)
      {
         TypeDefinition entityDefinition = new TypeDefinition(element);
         return entityDefinition;
      }

   }

}

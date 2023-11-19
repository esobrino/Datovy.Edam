using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using voca = Edam.Data.Lexicon.Vocabulary;
using Edam.Data.Lexicon.Vocabulary;
using Edam.Text;
using Edam.Diagnostics;
using Edam.Xml.OpenXml;
using Edam.Data.Asset;
using Edam.Data.AssetConsole;
using reader = Edam.Text.StringReader;
using DocumentFormat.OpenXml.Wordprocessing;
using Edam.Data.AssetSchema;
using Edam.Data.AssetReport;
using Edam.Application;
using Edam.Data.Lexicon.ImportExport;

namespace Edam.Data.Lexicon.ImportExport
{

   public class ExportWriter
   {

      private DataSet m_DataSet { get; set; }

      public ExportWriter(DataSet dataSet)
      {
         m_DataSet = dataSet;
      }

      #region -- 4.00 - Add Data to Set

      /// <summary>
      /// Create a new Area.
      /// </summary>
      /// <param name="domain"></param>
      /// <returns></returns>
      public AreaItemInfo AddArea(string domain, string area)
      {
         string fullPath = domain + "/" + area;

         if (!String.IsNullOrWhiteSpace(fullPath) && 
            m_DataSet.Areas.TryGetValue(
            fullPath, out AreaItemInfo? value))
         {
            return value;
         }

         // create new area
         AreaItemInfo item = new AreaItemInfo();

         item.KeyID = String.Empty;
         item.BusinessDomainID = domain;
         item.AreaInclude = true;
         item.AreaName = area;
         item.OriginalAreaName = area;
         item.Synonyms = String.Empty;
         item.Aliases = String.Empty;
         item.Base = String.Empty;
         item.Description = String.Empty;
         item.Notes = String.Empty;

         m_DataSet.Areas.Add(item);

         return item;
      }

      /// <summary>
      /// Create a new Entity.
      /// </summary>
      /// <param name="item"></param>
      /// <returns></returns>
      public EntityItemInfo AddEntity(AssetDataElement item, string entity,
         string domain = "", string area = "")
      {
         string fullPath = item.FullPath;

         if (!String.IsNullOrWhiteSpace(fullPath) && 
            m_DataSet.Entities.TryGetValue(
            fullPath, out EntityItemInfo? value))
         {
            return value;
         }

         // create new entity
         EntityItemInfo eitem = new EntityItemInfo();

         eitem.KeyID = item.ElementId;
         eitem.BusinessDomainID = domain;
         eitem.BusinessAreaID = area;
         eitem.EntityInclude = true;
         eitem.EntityName = entity;
         eitem.OriginalEntityName = item.EntityName;
         eitem.Synonyms = String.Empty;
         eitem.Aliases = String.Empty;
         eitem.Base = item.EntityQualifiedName == null ?
            String.Empty : item.EntityQualifiedName.OriginalName;
         eitem.Description = String.IsNullOrWhiteSpace(item.Description) ?
            item.AnnotationText : item.Description;
         eitem.Notes = String.Empty;

         m_DataSet.Entities.Add(eitem);

         return eitem;
      }

      /// <summary>
      /// Create a new Element.
      /// </summary>
      /// <param name="item"></param>
      /// <returns></returns>
      public ElementItemInfo AddElement(AssetDataElement item,
         string entity, string domain = "", string area = "")
      {
         string fullPath = item.FullPath;

         if (!String.IsNullOrWhiteSpace(fullPath) && 
            m_DataSet.Elements.TryGetValue(
            fullPath, out ElementItemInfo? value))
         {
            return value;
         }

         // create new element
         ElementItemInfo element = new ElementItemInfo();

         element.KeyID = item.ElementId;
         element.BusinessDomainID = domain;
         element.BusinessAreaID = area;
         element.EntityName = entity;
         element.ElementInclude = true;
         element.ElementName = item.ElementQualifiedName.OriginalName;
         element.OriginalElementName = item.ElementName;
         element.Synonyms = String.Empty;
         element.Aliases = String.Empty;
         element.Tags = String.Empty;
         element.Confidence = 1;
         element.Description = String.IsNullOrWhiteSpace(item.Description) ?
            item.AnnotationText : item.Description;
         element.Notes = String.Empty;
         element.MetadataBag = String.Empty;

         m_DataSet.Elements.Add(element);

         return element;
      }

      /// <summary>
      /// Add Relation/Constraint.
      /// </summary>
      /// <param name="constraint"></param>
      /// <param name="entity"></param>
      /// <param name="domain"></param>
      /// <param name="area"></param>
      /// <returns></returns>
      public RelationshipItemInfo AddRelationship(
         AssetElementConstraintInfo constraint, string element,
         string entity, string domain = "", string area = "")
      {
         string relationshipId = "fk_" + entity + "_" + element;
         string fullPath = domain + "/" + area + "/" + relationshipId;

         if (!String.IsNullOrWhiteSpace(fullPath) && 
            m_DataSet.Relationships.TryGetValue(
            fullPath, out RelationshipItemInfo? value))
         {
            return value;
         }

         // create new constraint
         RelationshipItemInfo relationship = new RelationshipItemInfo();

         relationship.KeyID = String.Empty;
         relationship.RelationshipID = relationshipId;
         relationship.BusinessDomainID = domain;
         relationship.BusinessAreaID = area;
         relationship.EntityName = entity;
         relationship.ElementName = element;
         relationship.ReferenceDomainID = domain;
         relationship.ReferenceAreaID = constraint.ReferenceSchemaName;
         relationship.ReferenceEntityName = constraint.ReferenceEntityName;
         relationship.ReferenceElementName = constraint.ReferenceElementName;
         relationship.Description = constraint.ContraintDescription;
         relationship.Notes = string.Empty;

         m_DataSet.Relationships.Add(relationship);

         return relationship;
      }

      #endregion
      #region -- 4.00 - Export Data Set

      /// <summary>
      /// Export Lexicon.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportLexicon(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.LEXICON);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(LexiconItemInfo.KeyID));
         items.Add(nameof(LexiconItemInfo.Title));
         items.Add(nameof(LexiconItemInfo.Uri));
         items.Add(nameof(LexiconItemInfo.Synonyms));
         items.Add(nameof(LexiconItemInfo.Aliases));
         items.Add(nameof(LexiconItemInfo.Description));
         items.Add(nameof(LexiconItemInfo.Notes));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // set Lexicon values
         builder.AppendRowCell(m_DataSet.Lexicon.KeyID);
         builder.AppendRowCell(m_DataSet.Lexicon.Title);
         builder.AppendRowCell(m_DataSet.Lexicon.Uri);
         builder.AppendRowCell(m_DataSet.Lexicon.Synonyms);
         builder.AppendRowCell(m_DataSet.Lexicon.Aliases);
         builder.AppendRowCell(m_DataSet.Lexicon.Labels);
         builder.AppendRowCell(m_DataSet.Lexicon.Description);
         builder.AppendRowCellLast(m_DataSet.Lexicon.Notes);
      }

      /// <summary>
      /// Export Areas.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportAreas(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.AREAS);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(AreaItemInfo.KeyID));
         items.Add(nameof(AreaItemInfo.BusinessDomainID));
         items.Add(nameof(AreaItemInfo.AreaInclude));
         items.Add(nameof(AreaItemInfo.AreaName));
         items.Add(nameof(AreaItemInfo.OriginalAreaName));
         items.Add(nameof(AreaItemInfo.Synonyms));
         items.Add(nameof(AreaItemInfo.Aliases));
         items.Add(nameof(AreaItemInfo.Base));
         items.Add(nameof(AreaItemInfo.Description));
         items.Add(nameof(AreaItemInfo.Notes));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // add areas
         foreach (var item in m_DataSet.Areas)
         {
            builder.AppendRowCell(item.Value.KeyID);
            builder.AppendRowCell(item.Value.BusinessDomainID);
            builder.AppendRowCell(item.Value.AreaInclude.ToString());
            builder.AppendRowCell(item.Value.AreaName);
            builder.AppendRowCell(item.Value.OriginalAreaName);
            builder.AppendRowCell(item.Value.Synonyms);
            builder.AppendRowCell(item.Value.Aliases);
            builder.AppendRowCell(item.Value.Base);
            builder.AppendRowCell(item.Value.Description);
            builder.AppendRowCellLast(item.Value.Notes);
         }
      }

      /// <summary>
      /// Export Entities.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportEntities(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.ENTITIES);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(EntityItemInfo.KeyID));
         items.Add(nameof(EntityItemInfo.BusinessDomainID));
         items.Add(nameof(EntityItemInfo.BusinessAreaID));
         items.Add(nameof(EntityItemInfo.EntityInclude));
         items.Add(nameof(EntityItemInfo.EntityName));
         items.Add(nameof(EntityItemInfo.OriginalEntityName));
         items.Add(nameof(EntityItemInfo.Synonyms));
         items.Add(nameof(EntityItemInfo.Aliases));
         items.Add(nameof(EntityItemInfo.Base));
         items.Add(nameof(EntityItemInfo.Description));
         items.Add(nameof(EntityItemInfo.Notes));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // add entities
         foreach (var item in m_DataSet.Entities)
         {
            builder.AppendRowCell(item.Value.KeyID);
            builder.AppendRowCell(item.Value.BusinessDomainID);
            builder.AppendRowCell(item.Value.BusinessAreaID);
            builder.AppendRowCell(item.Value.EntityInclude.ToString());
            builder.AppendRowCell(item.Value.EntityName);
            builder.AppendRowCell(item.Value.OriginalEntityName);
            builder.AppendRowCell(item.Value.Synonyms);
            builder.AppendRowCell(item.Value.Aliases);
            builder.AppendRowCell(item.Value.Base);
            builder.AppendRowCell(item.Value.Description);
            builder.AppendRowCellLast(item.Value.Notes);
         }
      }

      /// <summary>
      /// Export Elements.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportElements(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.ELEMENTS);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(ElementItemInfo.KeyID));
         items.Add(nameof(ElementItemInfo.BusinessDomainID));
         items.Add(nameof(ElementItemInfo.BusinessAreaID));
         items.Add(nameof(ElementItemInfo.EntityName));
         items.Add(nameof(ElementItemInfo.ElementInclude));
         items.Add(nameof(ElementItemInfo.ElementName));
         items.Add(nameof(ElementItemInfo.OriginalElementName));
         items.Add(nameof(ElementItemInfo.Synonyms));
         items.Add(nameof(ElementItemInfo.Aliases));
         items.Add(nameof(ElementItemInfo.Tags));
         items.Add(nameof(ElementItemInfo.Confidence));
         items.Add(nameof(ElementItemInfo.Description));
         items.Add(nameof(ElementItemInfo.Notes));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // add elements
         foreach (var item in m_DataSet.Elements)
         {
            builder.AppendRowCell(item.Value.KeyID);
            builder.AppendRowCell(item.Value.BusinessDomainID);
            builder.AppendRowCell(item.Value.BusinessAreaID);
            builder.AppendRowCell(item.Value.EntityName);
            builder.AppendRowCell(item.Value.ElementInclude.ToString());
            builder.AppendRowCell(item.Value.ElementName);
            builder.AppendRowCell(item.Value.OriginalElementName);
            builder.AppendRowCell(item.Value.Synonyms);
            builder.AppendRowCell(item.Value.Aliases);
            builder.AppendRowCell(item.Value.Tags);
            builder.AppendRowCell(item.Value.Confidence.ToString());
            builder.AppendRowCell(item.Value.Description);
            builder.AppendRowCellLast(item.Value.Notes);
         }
      }

      /// <summary>
      /// Export Relationships.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportRelationships(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.RELATIONSHIPS);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(RelationshipItemInfo.KeyID));
         items.Add(nameof(RelationshipItemInfo.RelationshipID));
         items.Add(nameof(RelationshipItemInfo.BusinessDomainID));
         items.Add(nameof(RelationshipItemInfo.BusinessAreaID));
         items.Add(nameof(RelationshipItemInfo.EntityName));
         items.Add(nameof(RelationshipItemInfo.ElementName));
         items.Add(nameof(RelationshipItemInfo.ReferenceDomainID));
         items.Add(nameof(RelationshipItemInfo.ReferenceAreaID));
         items.Add(nameof(RelationshipItemInfo.ReferenceEntityName));
         items.Add(nameof(RelationshipItemInfo.ReferenceElementName));
         items.Add(nameof(RelationshipItemInfo.Description));
         items.Add(nameof(RelationshipItemInfo.Notes));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // add relationships
         foreach (var item in m_DataSet.Relationships)
         {
            builder.AppendRowCell(item.Value.KeyID);
            builder.AppendRowCell(item.Value.RelationshipID);
            builder.AppendRowCell(item.Value.BusinessDomainID);
            builder.AppendRowCell(item.Value.BusinessAreaID);
            builder.AppendRowCell(item.Value.EntityName);
            builder.AppendRowCell(item.Value.ElementName);
            builder.AppendRowCell(item.Value.ReferenceDomainID);
            builder.AppendRowCell(item.Value.ReferenceAreaID);
            builder.AppendRowCell(item.Value.ReferenceEntityName);
            builder.AppendRowCell(item.Value.ReferenceElementName);
            builder.AppendRowCell(item.Value.Description);
            builder.AppendRowCellLast(item.Value.Notes);
         }
      }

      /// <summary>
      /// Export Terms.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportTerms(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.TERMS);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(TermItemInfo.KeyID));
         items.Add(nameof(TermItemInfo.BusinessDomainID));
         items.Add(nameof(TermItemInfo.Category));
         items.Add(nameof(TermItemInfo.Tag));
         items.Add(nameof(TermItemInfo.Term));
         items.Add(nameof(TermItemInfo.Synonyms));
         items.Add(nameof(TermItemInfo.Description));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // add terms
         foreach (var item in m_DataSet.Terms)
         {
            builder.AppendRowCell(item.Value.KeyID);
            builder.AppendRowCell(item.Value.BusinessDomainID);
            builder.AppendRowCell(item.Value.Category);
            builder.AppendRowCell(item.Value.Tag);
            builder.AppendRowCell(item.Value.Term);
            builder.AppendRowCell(item.Value.Synonyms);
            builder.AppendRowCellLast(item.Value.Description);
         }
      }

      /// <summary>
      /// Export Tags.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportTags(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.TAGS);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(TagItemInfo.ScopeID));
         items.Add(nameof(TagItemInfo.TagID));
         items.Add(nameof(TagItemInfo.Name));
         items.Add(nameof(TagItemInfo.Notes));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // add tags
         foreach (var item in m_DataSet.Tags)
         {
            builder.AppendRowCell(item.Value.ScopeID);
            builder.AppendRowCell(item.Value.TagID);
            builder.AppendRowCell(item.Value.Name);
            builder.AppendRowCellLast(item.Value.Notes);
         }
      }

      /// <summary>
      /// Export Metadata.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportMetadata(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.METADATA);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(MetadataItemInfo.ScopeID));
         items.Add(nameof(MetadataItemInfo.ElementID));
         items.Add(nameof(MetadataItemInfo.Value));
         items.Add(nameof(MetadataItemInfo.Synonyms));
         items.Add(nameof(MetadataItemInfo.Description));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // add metadata
         foreach (var item in m_DataSet.Metadata)
         {
            builder.AppendRowCell(item.Value.ScopeID);
            builder.AppendRowCell(item.Value.ElementID);
            builder.AppendRowCell(item.Value.Value);
            builder.AppendRowCell(item.Value.Synonyms);
            builder.AppendRowCellLast(item.Value.Description);
         }
      }

      /// <summary>
      /// Export Uris.
      /// </summary>
      /// <param name="builder"></param>
      private void ExportUris(ITableBuilder builder)
      {
         builder.AddWorksheet(ImportItemInfo.URIS);

         // prepare header
         List<string> items = new List<string>();
         items.Add(nameof(voca.UriItemInfo.ScopeID));
         items.Add(nameof(voca.UriItemInfo.Prefix));
         items.Add(nameof(voca.UriItemInfo.URI));
         items.Add(nameof(voca.UriItemInfo.Description));

         builder.AppendMainHeader(items, string.Empty);
         builder.SetStyleNo((uint)TableRowStyle.Fill1Font12);

         // add uris
         foreach (var item in m_DataSet.Uris)
         {
            builder.AppendRowCell(item.Value.ScopeID);
            builder.AppendRowCell(item.Value.Prefix);
            builder.AppendRowCell(item.Value.URI);
            builder.AppendRowCellLast(item.Value.Description);
         }
      }

      /// <summary>
      /// Export Data Set...
      /// </summary>
      /// <param name="file"></param>
      public void ExportDataSet(AssetConsoleArgumentsInfo arguments,
         NamespaceList namespaces)
      {
         Edam.InOut.FileInfo file;

         // prepare file info to export into...
         InOut.FileInfo exportFile = new InOut.FileInfo();

         exportFile.Path = arguments.OutFilePath;
         exportFile.Name =
            (arguments.Namespace.OrganizationDomainId + ".lexicon").ToLower();
         exportFile.Full = exportFile.Path + "/" + exportFile.Name + "." +
            InOut.FileExtension.OPEN_XML;
         exportFile.Extension = InOut.FileExtension.OPEN_XML;

         // export data set
         ITableBuilder builder = AssetReportBuilder.GetBuilder(exportFile);

         ExportLexicon(builder);
         ExportAreas(builder);
         ExportEntities(builder);
         ExportElements(builder);
         ExportRelationships(builder);

         ExportTerms(builder);
         ExportTags(builder);
         ExportMetadata(builder);

         // setup URI's
         foreach (var uri in namespaces)
         {
            voca.UriItemInfo item = new voca.UriItemInfo();
            item.ScopeID = "Namespace";
            item.Prefix = uri.Prefix;
            item.URI = uri.UriText;
            item.Description = uri.ToReferenceUriText();
            m_DataSet.Uris.Add(item);
         }

         ExportUris(builder);

         builder.Close();
      }

      /// <summary>
      /// Add Constraints based on info as given in the element.
      /// </summary>
      /// <param name="element"></param>
      /// <param name="entity"></param>
      /// <param name="domain"></param>
      /// <param name="area"></param>
      public void AddConstraints(AssetDataElement element,
         string entity, string domain = "", string area = "")
      {
         foreach (var constraint in element.Constraints)
         {
            AddRelationship(constraint,
               element.ElementQualifiedName.OriginalName,
               entity, domain, area);
         }
      }

      /// <summary>
      /// Given a Data Asset (collection of Data Elements), get its vocabulary.
      /// </summary>
      /// <remarks>
      /// An asset data model may have 2, 3 or more levels, for example:
      ///    1st level = the root element representing the business domain such
      ///                as HealthCare, CriminalJustice, Finaice, and others.
      ///    2nd level = business area
      ///                root element and children with leaf elements like 
      ///                you will have with tables. Hopefully this represents
      ///                the business-areas (like finance, sales, others).
      ///    3rd level = business entity (or data-component)
      ///                root element and children such as a schema that contain
      ///                children that look like tables that in turn have
      ///                children (or columns) as leaf elements. Hopefully this
      ///                represents the business-entities.
      /// Database based data assets will have 3 levels.
      /// </remarks>
      /// <param name="arguments">arguments</param>
      /// <returns>results log</returns>
      public static IResultsLog ExportDataSet(
         AssetConsoleArgumentsInfo arguments)
      {
         DataSet dataSet = new DataSet();
         ExportWriter writter = new ExportWriter(dataSet);
         ResultsLog<DataSet> results = new ResultsLog<DataSet>();

         // see if arguments have the busines-domain and default-business-area
         string domain = arguments.Domain.Domain;
         string area = arguments.Domain.Business;

         // prepare namespaces
         NamespaceList namespaceList = new NamespaceList();

         // go through each data-set (most of the time just 1)
         foreach (var asset in arguments.AssetDataItems)
         {
            // add asset namespaces...
            foreach (var ns in asset.Namespaces)
            {
               namespaceList.Add(ns);
            }

            // do we have a root element? (the DOMAIN container)
            var rootElement =
               asset.Items.GetRootElement(arguments.RootElementName);

            // if root was found, get its children elements
            var rootChildren =
               AssetDataElementList.GetChildren(asset.Items, rootElement);
            if (rootChildren == null)
            {
               continue;
            }

            // go through all root children (level 2) [business areas]
            foreach (var item in rootChildren.Children)
            {

               // treat the business-area as a namespace of related resources
               var type = AssetDataElementList.GetDataType(asset.Items, item);

               var aitem = writter.AddArea(
                  area, item.ElementQualifiedName.OriginalName);

               // get element type children (level 2) [business area entities]
               var areaChildren =
                  AssetDataElementList.GetChildren(asset.Items, type);

               // go through the business area entities
               foreach (var entity in areaChildren.Children)
               {

                  // get entity children (level 3) [entity data element]
                  var entityChildren =
                     AssetDataElementList.GetChildren(asset.Items, entity);

                  EntityItemInfo eitem;
                  if (entityChildren.Children.Count == 0)
                  {
                     var entityType =
                        AssetDataElementList.GetDataType(asset.Items, entity);
                     eitem = writter.AddEntity(entityType,
                        entity.ElementQualifiedName.OriginalName,
                        aitem.BusinessDomainID, aitem.AreaName);
                     entityChildren =
                        AssetDataElementList.GetChildren(
                           asset.Items, entityType);
                  }
                  else
                  {
                     eitem = writter.AddEntity(entity, domain, area);
                  }

                  // add all children (entity - elements)
                  foreach (var child in entityChildren.Children)
                  {
                     if (child.DataType != entity.DataType)
                     {
                        writter.AddElement(
                           child, entity.ElementQualifiedName.OriginalName,
                           eitem.BusinessDomainID, eitem.BusinessAreaID);
                        writter.AddConstraints(
                           child, entity.ElementQualifiedName.OriginalName,
                           eitem.BusinessDomainID, eitem.BusinessAreaID);
                     }
                  }
               }
            }
         }

         // setup Lexicon
         dataSet.Lexicon.KeyID = arguments.Lexicon.LexiconId;
         dataSet.Lexicon.Title = arguments.Lexicon.Title;
         dataSet.Lexicon.Synonyms = String.Empty;
         dataSet.Lexicon.Aliases = String.Empty;
         dataSet.Lexicon.Labels = String.Empty;
         dataSet.Lexicon.Description = arguments.Lexicon.Description;
         dataSet.Lexicon.Notes = String.Empty; ;

         // output to file
         writter.ExportDataSet(arguments, namespaceList);

         // all done
         results.Data = dataSet;
         results.Succeeded();

         return results;
      }

      #endregion

   }

}

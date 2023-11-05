
using Edam.Diagnostics;
using Edam.Xml.OpenXml;
using Edam.Data.Asset;
using Edam.Data.AssetConsole;
using reader = Edam.Text.StringReader;
using DocumentFormat.OpenXml.Spreadsheet;
using System.Collections;

namespace Edam.Data.Vocabulary.ImportExport
{

   public enum ImportItemType
   {
      Unknown = 0,
      Vocabulary = 1,
      Entity = 2,
      Relationship = 3,
      Metadata = 4,
      Tag = 5,
      Uri = 6,
      Term = 7
   }

   public class ImportItemInfo
   {
      public const string VOCABULARY = "VOCABULARY";
      public const string ENTITIES = "ENTITIES";
      public const string RELATIONSHIPS = "RELATIONSHIPS";
      public const string TAGS = "TAGS";
      public const string METADATA = "METADATA";
      public const string TERMS = "TERMS";
      public const string URIS = "URIS";

      public string? ItemId { get; set; }
      public ImportItemType ImportItemType { get; set; }
      public int PropertiesCount { get; set; }
      
      public ImportItemInfo(
         Type type, string? itemId, ImportItemType importItemType)
      {
         ItemId = itemId;
         ImportItemType = importItemType;
         PropertiesCount = type.GetProperties().Length;
      }

      public void Validate(int propertiesCount)
      {
         String func = "Validate";
         if (propertiesCount != PropertiesCount)
         {
            throw new ArgumentException(nameof(ImportItemInfo) + "::" + func +
               ": in " + ImportItemType.ToString() + " Expected no more than " +
               PropertiesCount.ToString() + " columns got (" +
               propertiesCount.ToString() + ")");
         }
      }

   }

   public class ImportInfo
   {
      public List<VocabularyItemInfo> Vocabulary { get; set; } = 
         new List<VocabularyItemInfo>();
      public List<EntityItemInfo> Entities { get; set; } = 
         new List<EntityItemInfo>();
      public List<RelationshipItemInfo> Relationships { get; set; } =
         new List<RelationshipItemInfo>();
      public List<TagItemInfo> Tags { get; set; } = new List<TagItemInfo>();
      public List<MetadataItemInfo> Metadata { get; set; } =
         new List<MetadataItemInfo>();
      public List<TermItemInfo> Terms { get; set; } = new List<TermItemInfo>();
      public List<UriItemInfo> Uris { get; set; } = new List<UriItemInfo>();
   }

   public class ImportReader
   {
      private const string CLASS_NAME = "ImportReader";

      private AssetConsoleArgumentsInfo? m_Arguments;
      private readonly List<ImportItemInfo> m_Items;

      public ImportReader()
      {
         m_Items = new List<ImportItemInfo>();
         m_Items.Add(new ImportItemInfo(
            typeof(VocabularyItemInfo), ImportItemInfo.VOCABULARY,
            ImportItemType.Vocabulary));
         m_Items.Add(new ImportItemInfo(
            typeof(EntityItemInfo), ImportItemInfo.ENTITIES,
            ImportItemType.Entity));
         m_Items.Add(new ImportItemInfo(
            typeof(RelationshipItemInfo), ImportItemInfo.RELATIONSHIPS,
            ImportItemType.Relationship));
         m_Items.Add(new ImportItemInfo(
            typeof(TagItemInfo), ImportItemInfo.TAGS,
            ImportItemType.Tag));
         m_Items.Add(new ImportItemInfo(
            typeof(MetadataItemInfo), ImportItemInfo.METADATA,
            ImportItemType.Metadata));
         m_Items.Add(new ImportItemInfo(
            typeof(TermItemInfo), ImportItemInfo.TERMS,
            ImportItemType.Term));
         m_Items.Add(new ImportItemInfo(
            typeof(UriItemInfo), ImportItemInfo.URIS,
            ImportItemType.Uri));
      }

      public VocabularyItemInfo ImportVocabularyItem(
         List<string> values, ImportItemInfo importItem)
      {

         importItem.Validate(values.Count);

         VocabularyItemInfo item = new VocabularyItemInfo();

         item.ItemID = reader.GetString(values[0]);
         item.BusinessDomainID = reader.GetString(values[1]);
         item.BusinessAreaID = reader.GetString(values[2]);
         item.EntityName = reader.GetString(values[3]);
         item.ElementInclude = reader.GetBool(values[4]);
         item.ElementName = reader.GetString(values[5]);
         item.OriginalElementName = reader.GetString(values[6]);
         item.Synonyms = reader.GetString(values[7]);
         item.Aliases = reader.GetString(values[8]);
         item.Tags = reader.GetString(values[9]);
         item.Confidence = reader.GetDecimal(values[10]);
         item.Definition = reader.GetString(values[11]);
         item.Notes = reader.GetString(values[12]);

         return item;
      }

      public EntityItemInfo ImportEntityItem(
         List<string> values, ImportItemInfo importItem)
      {

         importItem.Validate(values.Count);

         EntityItemInfo item = new EntityItemInfo();

         item.ItemID = reader.GetString(values[0]);
         item.BusinessDomainID = reader.GetString(values[1]);
         item.BusinessAreaID = reader.GetString(values[2]);
         item.EntityInclude = reader.GetBool(values[3]);
         item.EntityName = reader.GetString(values[4]);
         item.OriginalEntityName = reader.GetString(values[5]);
         item.Synonyms = reader.GetString(values[6]);
         item.Aliases = reader.GetString(values[7]);
         item.Definition = reader.GetString(values[8]);
         item.Notes = reader.GetString(values[9]);

         return item;
      }

      public RelationshipItemInfo ImportRelationshipItem(
         List<string> values, ImportItemInfo importItem)
      {

         importItem.Validate(values.Count);

         RelationshipItemInfo item = new RelationshipItemInfo();

         item.ItemID = reader.GetString(values[0]);
         item.BusinessAreaID = reader.GetString(values[1]);
         item.EntityName = reader.GetString(values[2]);
         item.ElementName = reader.GetString(values[3]);
         item.ReferenceAreaID = reader.GetString(values[4]);
         item.ReferenceEntityName = reader.GetString(values[5]);
         item.ReferenceElementName = reader.GetString(values[6]);
         item.Definition = reader.GetString(values[7]);
         item.Notes = reader.GetString(values[8]);

         return item;
      }

      public MetadataItemInfo ImportMetadataItem(
         List<string> values, ImportItemInfo importItem)
      {

         importItem.Validate(values.Count);

         MetadataItemInfo item = new MetadataItemInfo();

         item.ScopeID = reader.GetString(values[0]);
         item.ElementID = reader.GetString(values[1]);
         item.Value = reader.GetString(values[2]);
         item.Synonyms = reader.GetString(values[3]);
         item.Description = reader.GetString(values[4]);

         return item;
      }

      public UriItemInfo ImportUriItem(
         List<string> values, ImportItemInfo importItem)
      {

         importItem.Validate(values.Count);

         UriItemInfo item = new UriItemInfo();

         item.ScopeID = reader.GetString(values[0]);
         item.Prefix = reader.GetString(values[1]);
         item.URI = reader.GetString(values[2]);
         item.Description = reader.GetString(values[3]);

         return item;
      }

      public TagItemInfo ImportTagItem(
         List<string> values, ImportItemInfo importItem)
      {

         importItem.Validate(values.Count);

         TagItemInfo item = new TagItemInfo();

         item.ScopeID = reader.GetString(values[0]);
         item.TagID = reader.GetString(values[1]);
         item.Name = reader.GetString(values[2]);
         item.Notes = reader.GetString(values[3]);

         return item;
      }

      public TermItemInfo ImportTermItem(
         List<string> values, ImportItemInfo importItem)
      {

         importItem.Validate(values.Count);

         TermItemInfo item = new TermItemInfo();

         item.ItemID = reader.GetString(values[0]);
         item.BusinessDomainID = reader.GetString(values[1]);
         item.Uri = reader.GetString(values[2]);
         item.TermID = reader.GetString(values[3]);
         item.Description = reader.GetString(values[4]);

         return item;
      }

      /// <summary>
      /// Read input file as specified in arguments and convert it to a Data 
      /// Asset (collection of Data Elements).
      /// </summary>
      /// <param name="arguments">arguments</param>
      /// <returns>results log</returns>
      public IResultsLog GetVocabulary(AssetConsoleArgumentsInfo arguments)
      {
         m_Arguments = arguments;

         ResultsLog<ImportInfo> resultsLog = new ResultsLog<ImportInfo>();

         ImportInfo data = new ImportInfo();

         var uriList = UriResourceInfo.GetUriList(
           arguments.UriList, UriResourceType.xlsx);

         foreach (var fname in uriList)
         {
            foreach (var item in m_Items)
            {
               var results = ExcelDocumentReader.
                  ReadDocument(fname, item.ItemId);
               if (results.Success)
               {
                  int cnt;
                  foreach (var list in results.Data)
                  {
                     cnt = 0;

                     // remove first item (header) from list
                     if (cnt == 0)
                     {
                        continue;
                     }

                     // don't read null items
                     foreach (var litem in list)
                     {
                        if (String.IsNullOrWhiteSpace(litem))
                        {
                           cnt++;
                        }
                     }
                     if (list.Count == cnt)
                     {
                        break;
                     }

                     switch(item.ImportItemType)
                     {
                        case ImportItemType.Vocabulary:
                           data.Vocabulary.Add(ImportVocabularyItem(list,item));
                           break;
                        case ImportItemType.Entity:
                           data.Entities.Add(ImportEntityItem(list, item));
                           break;
                        case ImportItemType.Relationship:
                           data.Relationships.Add(
                              ImportRelationshipItem(list, item));
                           break;
                        case ImportItemType.Metadata:
                           data.Metadata.Add(ImportMetadataItem(list, item));
                           break;
                        case ImportItemType.Uri:
                           data.Uris.Add(ImportUriItem(list, item));
                           break;
                        case ImportItemType.Tag:
                           data.Tags.Add(ImportTagItem(list, item));
                           break;
                        case ImportItemType.Term:
                           data.Terms.Add(ImportTermItem(list, item));
                           break;
                     }
                  }

                  resultsLog.Data = data;
               }
            }
         }

         resultsLog.Succeeded();
         return resultsLog;
      }

   }

}

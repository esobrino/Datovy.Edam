using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Diagnostics;
using Edam.Xml.OpenXml;
using Edam.Data.Asset;
using Edam.Data.AssetConsole;
using Edam.Data.Lexicon.Vocabulary;
using reader = Edam.Text.StringReader;
using DocumentFormat.OpenXml.Wordprocessing;
using Edam.Data.AssetSchema;
using Edam.Data.AssetReport;
using Edam.Application;
using Edam.Data.Lexicon.ImportExport;

namespace Edam.Data.Lexicon.Vocabulary
{

   public class EntityList : Dictionary<string, EntityItemInfo>
   {

      /// <summary>
      /// Find entity by key.
      /// </summary>
      /// <param name="key">key to find</param>
      /// <returns>if found the instance of the entity is returned</returns>
      public EntityItemInfo? Find(string key)
      {
         if (TryGetValue(key, out EntityItemInfo? value))
         {
            return value;
         }
         return null;
      }

      /// <summary>
      /// Add Entity with given item.
      /// </summary>
      /// <param name="item">entity information</param>
      public void Add(EntityItemInfo item)
      {
         item.ResetFullPath();
         if (item.FullPath != null)
         {
            Add(item.FullPath, item);
         }
      }

      public EntityItemInfo Create(ElementItemInfo item)
      {
         EntityItemInfo entity = new EntityItemInfo();
         entity.BusinessDomainID = item.BusinessDomainID;
         entity.BusinessAreaID = item.BusinessAreaID;
         entity.EntityInclude = true;
         entity.EntityName = item.EntityName;
         entity.OriginalEntityName = item.EntityName;
         entity.Synonyms = String.Empty;
         entity.Description = Edam.Text.Convert.ToProperCase(item.EntityName);
         entity.Notes = String.Empty;
         entity.ResetFullPath();
         return entity;
      }

      /// <summary>
      /// Add an Entity using info from an Element.
      /// </summary>
      /// <param name="item">element item to add</param>
      public void Add(ElementItemInfo item)
      {
         EntityItemInfo entity = Create(item);
         if (entity.FullPath != null)
         {
            var eitem = Find(entity.FullPath);
            if (eitem == null)
            {
               Add(entity);
            }
         }
      }

   }

   public class AreaList : Dictionary<string, AreaItemInfo>
   {
      public void Add(AreaItemInfo item)
      {
         item.ResetFullPath();
         if (item.FullPath != null)
         {
            Add(item.FullPath, item);
         }
      }
   }

   public class ElementList : Dictionary<string, ElementItemInfo>
   {
      public void Add(ElementItemInfo item)
      {
         item.ResetFullPath();
         if (item.FullPath != null)
         {
            Add(item.FullPath, item);
         }
      }
   }

   public class RelationshipList : Dictionary<string, RelationshipItemInfo>
   {
      public void Add(RelationshipItemInfo item)
      {
         item.ResetFullPath();
         if (item.FullPath != null)
         {
            Add(item.FullPath, item);
         }
      }
   }

   public class TagList : Dictionary<string, TagItemInfo>
   {
      public void Add(TagItemInfo item)
      {
         item.ResetFullPath();
         if (item.FullPath != null)
         {
            Add(item.FullPath, item);
         }
      }
   }

   public class MetadataList : Dictionary<string, MetadataItemInfo>
   {
      public void Add(MetadataItemInfo item)
      {
         item.ResetFullPath();
         if (item.FullPath != null)
         {
            Add(item.FullPath, item);
         }
      }
   }

   public class TermList : Dictionary<string, TermItemInfo>
   {
      public void Add(TermItemInfo item)
      {
         item.ResetFullPath();
         if (item.FullPath != null)
         {
            Add(item.FullPath, item);
         }
      }
   }

   public class UriList : Dictionary<string, UriItemInfo>
   {
      public void Add(UriItemInfo item)
      {
         item.ResetFullPath();
         if (item.FullPath != null)
         {
            Add(item.FullPath, item);
         }
      }
   }


   public class DataSet
   {

      public LexiconItemInfo Lexicon { get; set; } = new LexiconItemInfo();

      public AreaList Areas { get; set; } = new AreaList();
      public EntityList Entities { get; set; } = new EntityList();
      public ElementList Elements { get; set; } = new ElementList();
      public RelationshipList Relationships { get; set; } =
         new RelationshipList();
      public TagList Tags { get; set; } = new TagList();
      public MetadataList Metadata { get; set; } = new MetadataList();
      public TermList Terms { get; set; } = new TermList();
      public UriList Uris { get; set; } = new UriList();

      #region -- 4.00 Helper methods

      /// <summary>
      /// Clear all collections in the data set.
      /// </summary>
      public void Clear()
      {
         Areas.Clear();
         Entities.Clear();
         Elements.Clear();
         Relationships.Clear();
         Tags.Clear();
         Metadata.Clear();
         Terms.Clear();
         Metadata.Clear();
      }

      public void SetLexicon(LexiconItemInfo item)
      {
         Lexicon = item;
      }

      #endregion
      #region -- 4.00 To/From Lexicon...

      /// <summary>
      /// Go through the different collections and update the corresponding 
      /// data-set.
      /// </summary>
      /// <param name="lexicon">the lexicon to update</param>
      public void ToLexicon(LexiconContext lexicon)
      {

         foreach (var item in Areas)
         {
            var varea = lexicon.Area.Find(item.Value.KeyID);
            if (varea != null)
            {
               lexicon.Area.Add(item.Value);
            }
            else
            {
               lexicon.Area.Update(item.Value);
            }
         }

         foreach (var item in Entities)
         {
            var varea = lexicon.Entity.Find(item.Value.KeyID);
            if (varea != null)
            {
               lexicon.Entity.Add(item.Value);
            }
            else
            {
               lexicon.Entity.Update(item.Value);
            }
         }

         foreach (var item in Elements)
         {
            var varea = lexicon.Element.Find(item.Value.KeyID);
            if (varea != null)
            {
               lexicon.Element.Add(item.Value);
            }
            else
            {
               lexicon.Element.Update(item.Value);
            }
         }

         foreach (var item in Relationships)
         {
            var varea = lexicon.Relationship.Find(item.Value.KeyID);
            if (varea != null)
            {
               lexicon.Relationship.Add(item.Value);
            }
            else
            {
               lexicon.Relationship.Update(item.Value);
            }
         }

         foreach (var item in Tags)
         {
            var varea = lexicon.Tag.Find(item.Value.KeyID);
            if (varea != null)
            {
               lexicon.Tag.Add(item.Value);
            }
            else
            {
               lexicon.Tag.Update(item.Value);
            }
         }

         foreach (var item in Metadata)
         {
            var varea = lexicon.Metadata.Find(item.Value.KeyID);
            if (varea != null)
            {
               lexicon.Metadata.Add(item.Value);
            }
            else
            {
               lexicon.Metadata.Update(item.Value);
            }
         }

         foreach (var item in Terms)
         {
            var varea = lexicon.Term.Find(item.Value.KeyID);
            if (varea != null)
            {
               lexicon.Term.Add(item.Value);
            }
            else
            {
               lexicon.Term.Update(item.Value);
            }
         }

         foreach (var item in Uris)
         {
            var varea = lexicon.Uri.Find(item.Value.KeyID);
            if (varea != null)
            {
               lexicon.Uri.Add(item.Value);
            }
            else
            {
               lexicon.Uri.Update(item.Value);
            }
         }

         lexicon.SaveChanges();

      }

      /// <summary>
      /// Prepare the data-set using given lexicon.
      /// </summary>
      /// <param name="lexicon">source lexicon</param>
      public void FromLexicon(LexiconContext lexicon)
      {
         Clear();
         foreach (var item in lexicon.Area)
         {
            Areas.Add(item);
         }

         foreach (var item in lexicon.Entity)
         {
            Entities.Add(item);
         }

         foreach (var item in lexicon.Element)
         {
            Elements.Add(item);
         }

         foreach (var item in lexicon.Relationship)
         {
            Relationships.Add(item);
         }

         foreach (var item in lexicon.Tag)
         {
            Tags.Add(item);
         }

         foreach (var item in lexicon.Metadata)
         {
            Metadata.Add(item);
         }

         foreach (var item in lexicon.Term)
         {
            Terms.Add(item);
         }

         foreach (var item in lexicon.Uri)
         {
            Uris.Add(item);
         }
      }

      #endregion

   }

}

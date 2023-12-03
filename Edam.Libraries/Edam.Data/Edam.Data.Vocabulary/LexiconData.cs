using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Diagnostics;
using Edam.Data.AssetConsole;
using Edam.Data.Lexicon.ImportExport;
using Edam.Data.Lexicon.Vocabulary;
using Edam.Data.Assets.Asset;

namespace Edam.Data.Lexicon
{

   public class LexiconData : ILexiconData
   {

      private DataSet m_DataSet { get; set; } = null;
      public LexiconInfo LexiconInfo { get; set; } = null;

      /// <summary>
      /// Read Lexicon list of files into a data-set.
      /// </summary>
      /// <param name="uriList">list of uri's/file paths</param>
      /// <returns>instance of data set is returned</returns>
      public Object Import(List<string> uriList)
      {
         var reader = new Data.Lexicon.ImportExport.ImportReader();
         var results = reader.ImportDataSet(uriList);

         DataSet? data = results.DataObject as DataSet;
         Introspector intro = new Introspector(data);
         intro.IntrospectElements();

         m_DataSet = data;
         return data;
      }

      /// <summary>
      /// Export Data Asset(s) to a workbook.
      /// </summary>
      /// <param name="arguments">export process arguments</param>
      /// <returns>returns the prepared Data Set that was exported</returns>
      public Object Export(AssetConsoleArgumentsInfo arguments)
      {
         DataSet? data = null;
         if (arguments != null)
         {
            var results = ExportWriter.ExportDataSet(arguments, false);
            data = results.DataObject as DataSet;
            data.ToLexiconAsync();
         }

         m_DataSet = data;
         return data;
      }

      /// <summary>
      /// Prepare a Lexicon Database...
      /// </summary>
      /// <returns>results log is returned</returns>
      public IResultsLog PrepareDatabase()
      {
         ResultLog resultLog = new ResultLog();
         Edam.Data.Lexicon.LexiconContext? context = null;

         try
         {
            context = new Edam.Data.Lexicon.LexiconContext();
            context.Database.EnsureCreated();
            context.Dispose();
            resultLog.Succeeded();
         }
         catch (Exception ex)
         {
            resultLog.Failed(ex);
         }
         finally
         {
            if (context != null)
            {
               context.Dispose();
            }
         }

         return resultLog;
      }

      /// <summary>
      /// Load Lexicon using given Id.
      /// </summary>
      /// <param name="lexiconId">lexicon Id to load</param>
      /// <returns>DataSet that was loaded</returns>
      public Object Load(string lexiconId)
      {
         DataSet data = new DataSet();
         data.FromLexicon(lexiconId);

         m_DataSet = data;
         return data;
      }

      /// <summary>
      /// Delete Lexicon using given Id.
      /// </summary>
      /// <param name="lexiconId">lexicon Id to delete</param>
      public void Delete(string lexiconId)
      {
         DataSet ds = new DataSet();
         ds.DeleteLexicon(lexiconId);
         m_DataSet = null;
      }

      public List<AreaItemInfo> GetAreas()
      {
         if (m_DataSet == null)
         {
            return new List<AreaItemInfo>(); ;
         }
         return m_DataSet.Areas.Values.ToList();
      }

      public List<ElementItemInfo> GetElements()
      {
         if (m_DataSet == null)
         {
            return new List<ElementItemInfo>(); ;
         }
         return m_DataSet.Elements.Values.ToList();
      }

      public List<EntityItemInfo> GetEntities()
      {
         if (m_DataSet == null)
         {
            return new List<EntityItemInfo>(); ;
         }
         return m_DataSet.Entities.Values.ToList();
      }

      public List<MetadataItemInfo> GetMetadata()
      {
         if (m_DataSet == null)
         {
            return new List<MetadataItemInfo>(); ;
         }
         return m_DataSet.Metadata.Values.ToList();
      }

      public List<RelationshipItemInfo> GetRelationships()
      {
         if (m_DataSet == null)
         {
            return new List<RelationshipItemInfo>(); ;
         }
         return m_DataSet.Relationships.Values.ToList();
      }

      public List<TagItemInfo> GetTags()
      {
         if (m_DataSet == null)
         {
            return new List<TagItemInfo>(); ;
         }
         return m_DataSet.Tags.Values.ToList();
      }

      public List<Vocabulary.UriItemInfo> GetUris()
      {
         if (m_DataSet == null)
         {
            return new List<Vocabulary.UriItemInfo>(); ;
         }
         return m_DataSet.Uris.Values.ToList();
      }

      //public List<LexiconItemInfo> GetLexicons()
      //{
      //   if (m_DataSet == null)
      //   {
      //      return new List<LexiconItemInfo>(); ;
      //   }
      //   return m_DataSet.Lexicon
      //}

   }

}

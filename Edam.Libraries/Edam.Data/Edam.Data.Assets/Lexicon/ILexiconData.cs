﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Data.AssetConsole;
using Edam.Data.Lexicon.Vocabulary;
using Edam.Diagnostics;
using lex = Edam.Data.Lexicon;

namespace Edam.Data.Lexicon
{

   public interface ILexiconData
   {

      LexiconInfo LexiconInfo { get; set; }
      object Import(List<string> uriList);
      object Export(AssetConsoleArgumentsInfo arguments);
      IResultsLog PrepareDatabase();
      object Load(string lexiconId);
      void Delete(string lexiconId);

      List<AreaItemInfo> GetAreas();
      List<ElementItemInfo> GetElements();
      List<EntityItemInfo> GetEntities();
      List<MetadataItemInfo> GetMetadata();
      List<RelationshipItemInfo> GetRelationships();
      List<TagItemInfo> GetTags();
      List<lex.Vocabulary.UriItemInfo> GetUris();

      //List<LexiconItemInfo> GetLexicons();

   }

}

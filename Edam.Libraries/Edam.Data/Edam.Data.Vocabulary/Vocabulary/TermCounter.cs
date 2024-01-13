using Edam.Diagnostics;
using Edam.Text;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Data.Lexicon.Vocabulary
{

   /// <summary>
   /// Manage Terms Count within the entities and elements.
   /// </summary>
   public class TermCounter
   {

      /// <summary>
      /// Add Term.
      /// </summary>
      /// <param name="lexiconData">lexicon data</param>
      /// <param name="token">token as a term</param>
      /// <param name="businessDomainID">business domain ID</param>
      /// <param name="itemName">item (entity or element) name</param>
      public static void AddTerm(LexiconData lexiconData,
         string token, string businessDomainID, string itemName)
      {
         var term = lexiconData.FindTerm(token);
         if (term == null)
         {
            term = new TermItemInfo();
            term.KeyID = Guid.NewGuid().ToString();
            term.BusinessDomainID = businessDomainID;
            term.Category = itemName;
            term.Term = token;
            term.OriginalTerm = token;
            term.Synonyms = token;
            term.Count = 0;
            lexiconData.AddTerm(term);
         }
         else
         {
            term.Count++;
         }
      }

      /// <summary>
      /// Go through all entities and element descriptions tokens adding those
      /// that are not found while counting those.
      /// </summary>
      /// <param name="lexiconData">lexicon data</param>
      /// <returns>results log is returned and the lexiconData has been updated
      /// as needed including the list of counted Tokens that will be found in
      /// terms</returns>
      public static void UpdateTermsCount(LexiconData lexiconData)
      {
         var entities = lexiconData.GetEntities();
         foreach (var i in entities)
         {
            if (i.Description == null)
               continue;

            var tokens = i.Description.Split(' ');
            foreach (var token in tokens)
            {
               AddTerm(lexiconData, token, i.BusinessDomainID, i.EntityName);
            }
         }

         var elements = lexiconData.GetElements();
         foreach(var i in elements)
         {
            if (i.Description == null)
               continue;

            var tokens = i.Description.Split(' ');
            foreach(var token in tokens)
            {
               AddTerm(lexiconData, token, i.BusinessDomainID, i.EntityName);
            }
         }
      }

   }

}

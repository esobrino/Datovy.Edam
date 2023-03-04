using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Edam.Data.AssetUseCases;
using Edam.Data.Books;
using Edam.Diagnostics;

namespace Edam.Data.Books
{

   /// <summary>
   /// Within the context of a Use Case...
   /// A Book Item processor provides access to a specific implementation that
   /// operates on a given Language context of a sub-item allowing the
   /// handling of a collection of code segment with potential language 
   /// differences to work in conjunction producing a consisten result.
   /// </summary>
   public interface IBookItemProcessor
   {
      AssetUseCaseMap UseCase { get; }

      /// <summary>
      /// Clear results.
      /// </summary>
      void ClearResults();

      /// <summary>
      /// Go through book booklets and cells operating under the given source 
      /// instance and providing a result.
      /// </summary>
      /// <param name="book">provided book</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      ResultLog Execute(BookInfo book);

      /// <summary>
      /// Go through book booklets and cells operating under the given source 
      /// instance and providing a result.
      /// </summary>
      /// <param name="booklet">provided booklet</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      ResultLog Execute(BookletInfo booklet);

      /// <summary>
      /// Go through book booklets and cells operating under the given source 
      /// instance and providing a result.
      /// </summary>
      /// <param name="cell">provided cell</param>
      /// <returns>results log instance is returned holding those results
      /// </returns>
      ResultLog Execute(BookletCellInfo cell);
   }

}

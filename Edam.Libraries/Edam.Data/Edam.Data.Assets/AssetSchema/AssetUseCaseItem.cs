using System;
using System.Collections.Generic;
using System.Linq;

// -----------------------------------------------------------------------------
using Edam.Data.AssetManagement;

namespace Edam.Data.AssetSchema
{

   public class AssetItemUseCase<T>
   {

      public T Item { get; set; }
      public List<AssetUseCaseElement> UseCases { get; set; }

      public AssetItemUseCase()
      {
      }

   }

}

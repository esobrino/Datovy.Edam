using System;

// -----------------------------------------------------------------------------
using Edam.Data.AssetManagement;

namespace Edam.Data.AssetSchema
{

   public class AssetUseCaseElement
   {
      public string NamespaceUri { get; set; }
      public int UseCaseNo { get; set; }
      public int ElementNo { get; set; }
      public string Name { get; set; }
      public string ElementPath { get; set; }
      public string SampleValue { get; set; }
      public string VersionId { get; set; }

      public AssetUseCase UseCase { get; set; }
      public AssetDataElement Parent { get; set; }
   }

}

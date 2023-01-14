using System;
using System.Collections.Generic;
using System.Linq;

// -----------------------------------------------------------------------------
using Edam.Data.AssetManagement;

namespace Edam.Data.AssetUseCases
{

    public class AssetUseCaseItem<T>
    {

        public T Item { get; set; }
        public List<AssetUseCaseElement> Elements { get; set; }

        public AssetUseCaseItem()
        {
        }

    }

}

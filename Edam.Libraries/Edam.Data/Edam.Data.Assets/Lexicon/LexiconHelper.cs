using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Application;
using Edam.Data.Lexicon;
using Edam.Data.AssetSchema;

namespace Edam.Data.Assets.Lexicon
{

   public class LexiconHelper
   {

      public static ILexiconData GetLexiconDataInstance()
      {
         return AppAssembly.FetchInstance<ILexiconData>(
            AssetResourceHelper.ASSET_LEXICON);
      }

   }

}

using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Test.Library.DataTree
{

   public class DataTreeHelper
   {

      public static AssetDataTree GetDataTree(
         AssetConsoleArgumentsInfo arguments)
      {
         var tree = AssetDataTree.GetDataTree(arguments);
         return tree;
      }

   }

}

using DocumentFormat.OpenXml.Bibliography;
using Edam.Application;
using Edam.Data.AssetConsole;
using Edam.Data.AssetUseCases;
using Edam.InOut;
using Edam.Test.Library.DataTree;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Edam.Test.Library.UseCase
{

   public class UseCaseHelper
   {

      /// <summary>
      /// Get Use Case (folder / path) Item.
      /// </summary>
      /// <param name="useCasePath"></param>
      /// <returns></returns>
      public static ItemBaseInfo GetUseCaseItem(string useCasePath)
      {
         ItemBaseInfo item = new ItemBaseInfo();
         string appPath = AppData.GetApplicationDataFolder();
         item.FromFullPath(appPath + useCasePath, null);
         return item;
      }

      public static AssetUseCaseMap GetUseCase(string useCasePath)
      {
         // get use case (folder/path) item
         var item = GetUseCaseItem(useCasePath);

         // get use case from file
         var useCase = AssetUseCaseMap.FromFile(item.Full);

         return useCase;
      }

   }

}

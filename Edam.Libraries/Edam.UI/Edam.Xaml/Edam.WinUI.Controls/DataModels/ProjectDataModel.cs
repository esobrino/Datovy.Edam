using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetProject;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;

namespace Edam.WinUI.Controls.DataModels
{

   public class ProjectDataModel
   {

      public static ProjectItem ToObservable(FolderFileItemInfo item)
      {
         ProjectItem p = new ProjectItem(item);
         foreach(var c in item.Children)
         {
            p.Children.Add(ToObservable(c));
         }
         return p;
      }
   }

}

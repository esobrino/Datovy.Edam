using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetProject;
using Edam.Data.Assets.AssetConsole;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;
using Edam.Helpers;
using Edam.WinUI.Controls.DataModels;
using System.Collections.ObjectModel;
using DocumentFormat.OpenXml.Drawing;

namespace Edam.WinUI.Controls.ViewModels
{

   public class AssetMapViewerModel : ObservableObject
   {

      private DataMapContext m_MapContext = null;
      public DataMapContext MapContext
      {
         get { return m_MapContext; }
      }

      public DataMapContext SetUpMapping(DataMapContext context)
      {
         m_MapContext = context;

         var l = context.Source.Arguments.Process.MapItem;
         if (l == null || l.Count == 0)
         {
            return null;
         }

         DataMapItemInfo item = null;
         foreach(var m in l)
         {
            if (m.Type == DataMapItemType.Target)
            {
               item = m;
               break;
            }
         }
         if (item == null)
         {
            return null;
         }

         var args = ProjectContext.GetArgumentsByProcessName(
            item.ParentProcessName);
         context.Target.Arguments = args;
         return context;
      }

   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetProject;
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

      /// <summary>
      /// Setup Mapping given a MapItem that was configured in Arguments
      /// specifying source (A) and through the Parent Process Name
      /// fetch the details about the target.
      /// </summary>
      /// <param name="context">use case map context</param>
      /// <returns>if target was found the context is returned</returns>
      public DataMapContext SetUpMapping(DataMapContext context)
      {
         m_MapContext = context;
         return DataMapContext.SetUpMapping(context);
      }

   }

}

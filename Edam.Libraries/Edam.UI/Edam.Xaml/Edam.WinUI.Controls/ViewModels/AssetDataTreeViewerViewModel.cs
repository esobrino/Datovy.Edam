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
using Microsoft.UI.Xaml;

namespace Edam.WinUI.Controls.ViewModels
{

   public class AssetDataTreeViewerViewModel : ObservableObject
   {
      private DataMapContext m_Context;
      public DataMapContext Context
      {
         get { return m_Context; }
      }

      public void SetContext(DataMapContext context)
      {
         m_Context = context;
      }
   }

}

using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.ApplicationModel.DataTransfer;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
using Edam.WinUI.Controls.ViewModels;
using Edam.Data.AssetSchema;
using Edam.WinUI.Controls.DataModels;
using DocumentFormat.OpenXml.Wordprocessing;

namespace Edam.WinUI.Controls.Assets
{

   public sealed partial class AssetMapPanelControl : UserControl
   {
      private AssetMapPanelViewModel m_ViewModel = new AssetMapPanelViewModel();
      public AssetMapPanelViewModel ViewModel
      {
         get { return m_ViewModel; }
      }

      public AssetMapPanelControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
      }

      public void SetContext(DataMapContext context)
      {
         m_ViewModel.Context = context;
         MapItemControl.SetContext(context);
      }

   }

}

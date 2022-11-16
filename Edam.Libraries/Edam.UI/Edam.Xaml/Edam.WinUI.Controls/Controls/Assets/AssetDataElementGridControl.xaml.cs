using Microsoft.UI.Xaml.Controls;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
// -----------------------------------------------------------------------------
using Edam.WinUI.Controls.ViewModels;

namespace Edam.WinUI.Controls.Assets
{

   public sealed partial class AssetDataElementGridControl : UserControl
   {
      private AssetViewerViewModel m_ViewModel;
      public AssetViewerViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            m_ViewModel = new AssetViewerViewModel();
            DataContext = m_ViewModel;

            //var styleSelector = 
            //   Resources[CustomRowStyleSelector.STYLE_SELECTOR] 
            //      as CustomRowStyleSelector;
            //if (styleSelector != null)
            //{
            //   styleSelector.Parent = this;
            //}
         }
      }

      public AssetDataElementGridControl()
      {
         this.InitializeComponent();
         ViewModel = new AssetViewerViewModel();
      }
   }

}

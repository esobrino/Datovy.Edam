// Updated by XamlIntelliSenseFileGenerator 7/2/2023 1:03:58 PM
#pragma checksum "C:\prjs\Datovy.Edam\Edam.Libraries\Edam.UI\Edam.Xaml\Edam.WinUI.Controls\Controls\Navigation\NavigationControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "238A3680DC32078703CCAC9DDE280C5F91FB046278B3108BBE4251AF5D579731"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Edam.WinUI.Controls.Navigation
{
   partial class NavigationControl : global::Microsoft.UI.Xaml.Controls.UserControl
   {
#pragma warning restore 0649
#pragma warning restore 0169
      [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler", " 1.0.0.0")]
      private bool _contentLoaded;

      /// <summary>
      /// InitializeComponent()
      /// </summary>
      [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler", " 1.0.0.0")]
      [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
      public void InitializeComponent()
      {
         if (_contentLoaded)
            return;

         _contentLoaded = true;

         global::System.Uri resourceLocator = new global::System.Uri("ms-appx:///Edam.WinUI.Controls/Controls/Navigation/NavigationControl.xaml");
         global::Microsoft.UI.Xaml.Application.LoadComponent(this, resourceLocator, global::Microsoft.UI.Xaml.Controls.Primitives.ComponentResourceLocation.Nested);
      }

      partial void UnloadObject(global::Microsoft.UI.Xaml.DependencyObject unloadableObject);

      [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler", " 1.0.0.0")]
      private interface INavigationControl_Bindings
      {
         void Initialize();
         void Update();
         void StopTracking();
         void DisconnectUnloadedObject(int connectionId);
      }

      private interface INavigationControl_BindingsScopeConnector
      {
         global::System.WeakReference Parent { get; set; }
         bool ContainsElement(int connectionId);
         void RegisterForElementConnection(int connectionId, global::Microsoft.UI.Xaml.Markup.IComponentConnector connector);
      }

      internal global::Microsoft.UI.Xaml.Data.CollectionViewSource VisibleMenuItems;
      internal global::Microsoft.UI.Xaml.Controls.Grid NoNavigationPanel;
      internal global::Microsoft.UI.Xaml.Controls.Frame NoNavigationContent;
      internal global::Microsoft.UI.Xaml.Controls.NavigationView PageNavigation;
      internal global::Microsoft.UI.Xaml.Controls.Frame PanelContent;
      internal global::Microsoft.UI.Xaml.Controls.Button SidePanelToggle;
#pragma warning restore 0649
#pragma warning restore 0169
   }
}



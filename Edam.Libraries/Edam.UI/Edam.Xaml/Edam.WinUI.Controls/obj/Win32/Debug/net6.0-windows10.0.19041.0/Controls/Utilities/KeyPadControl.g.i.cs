﻿#pragma checksum "C:\prjs\InXone.WinUI\InXone.WinUI\InXone.Xaml\InXone.WinUI.Controls\Controls\Utilities\KeyPadControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "1E88DB04E555C0F7D305196AA2DE001CBD24B8A4183D63651EEC307D6407AFE3"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace InXone.WinUI.Controls.Utilities
{
    partial class KeyPadControl : global::Microsoft.UI.Xaml.Controls.UserControl
    {


#pragma warning disable 0169    //  Proactively suppress unused/uninitialized field warning in case they aren't used, for things like x:Name
#pragma warning disable 0649
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        private global::InXone.WinUI.Controls.Utilities.TextButtonControl OKButton; 
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        private global::Microsoft.UI.Xaml.Controls.TextBlock TextBox; 
#pragma warning restore 0649
#pragma warning restore 0169
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        private bool _contentLoaded;

        /// <summary>
        /// InitializeComponent()
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent()
        {
            if (_contentLoaded)
                return;

            _contentLoaded = true;

            global::System.Uri resourceLocator = new global::System.Uri("ms-appx:///InXone.WinUI.Controls/Controls/Utilities/KeyPadControl.xaml");
            global::Microsoft.UI.Xaml.Application.LoadComponent(this, resourceLocator, global::Microsoft.UI.Xaml.Controls.Primitives.ComponentResourceLocation.Nested);
        }

        partial void UnloadObject(global::Microsoft.UI.Xaml.DependencyObject unloadableObject);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        private interface IKeyPadControl_Bindings
        {
            void Initialize();
            void Update();
            void StopTracking();
            void DisconnectUnloadedObject(int connectionId);
        }

        private interface IKeyPadControl_BindingsScopeConnector
        {
            global::System.WeakReference Parent { get; set; }
            bool ContainsElement(int connectionId);
            void RegisterForElementConnection(int connectionId, global::Microsoft.UI.Xaml.Markup.IComponentConnector connector);
        }
#pragma warning disable 0169    //  Proactively suppress unused field warning in case Bindings is not used.
#pragma warning disable 0649
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        private IKeyPadControl_Bindings Bindings;
#pragma warning restore 0649
#pragma warning restore 0169
    }
}



﻿#pragma checksum "C:\prjs\Datovy.Edam\Edam.Libraries\Edam.UI\Edam.Xaml\Edam.WinUI.Controls\Controls\Assets\AssetDataTreeViewerControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "7E50B47CF2D777855D5162158907B91B8675FF8CE4786D6B03A7ADB642926DE4"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Edam.WinUI.Controls.Assets
{
    partial class AssetDataTreeViewerControl : 
        global::Microsoft.UI.Xaml.Controls.UserControl, 
        global::Microsoft.UI.Xaml.Markup.IComponentConnector
    {

        /// <summary>
        /// Connect()
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void Connect(int connectionId, object target)
        {
            switch(connectionId)
            {
            case 2: // Controls\Assets\AssetDataTreeViewerControl.xaml line 11
                {
                    this.TreeViewPanel = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.Grid>(target);
                }
                break;
            case 3: // Controls\Assets\AssetDataTreeViewerControl.xaml line 30
                {
                    this.TreeView = global::WinRT.CastExtensions.As<global::Edam.WinUI.Controls.Assets.AssetDataTreeControl>(target);
                }
                break;
            case 4: // Controls\Assets\AssetDataTreeViewerControl.xaml line 23
                {
                    this.AssetRefresh = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.Button>(target);
                    ((global::Microsoft.UI.Xaml.Controls.Button)this.AssetRefresh).Click += this.AssetRefresh_Click;
                }
                break;
            default:
                break;
            }
            this._contentLoaded = true;
        }

        /// <summary>
        /// GetBindingConnector(int connectionId, object target)
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public global::Microsoft.UI.Xaml.Markup.IComponentConnector GetBindingConnector(int connectionId, object target)
        {
            global::Microsoft.UI.Xaml.Markup.IComponentConnector returnValue = null;
            return returnValue;
        }
    }
}

﻿#pragma checksum "C:\prjs\Datovy.Edam\Edam.Libraries\Edam.UI\Edam.Xaml\Edam.WinUI.Controls\Controls\Booklets\BookletPanelControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "24C3DA403807EAE73520CDAAC4027DB377F983D5AAF0DF08C66B852E8B86F814"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Edam.WinUI.Controls.Booklets
{
    partial class BookletPanelControl : 
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
            case 2: // Controls\Booklets\BookletPanelControl.xaml line 70
                {
                    this.MapSidePanel = global::WinRT.CastExtensions.As<global::Edam.WinUI.Controls.Assets.AssetMapSidePanelControl>(target);
                }
                break;
            case 3: // Controls\Booklets\BookletPanelControl.xaml line 64
                {
                    global::Microsoft.UI.Xaml.Controls.HyperlinkButton element3 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.HyperlinkButton>(target);
                    ((global::Microsoft.UI.Xaml.Controls.HyperlinkButton)element3).Click += this.AddTextCell_Click;
                }
                break;
            case 4: // Controls\Booklets\BookletPanelControl.xaml line 66
                {
                    global::Microsoft.UI.Xaml.Controls.HyperlinkButton element4 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.HyperlinkButton>(target);
                    ((global::Microsoft.UI.Xaml.Controls.HyperlinkButton)element4).Click += this.AddCodeCell_Click;
                }
                break;
            case 5: // Controls\Booklets\BookletPanelControl.xaml line 57
                {
                    this.BookletList = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.ListView>(target);
                    ((global::Microsoft.UI.Xaml.Controls.ListView)this.BookletList).SelectionChanged += this.BookletList_SelectionChanged;
                }
                break;
            case 6: // Controls\Booklets\BookletPanelControl.xaml line 48
                {
                    global::Microsoft.UI.Xaml.Controls.AppBarButton element6 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.AppBarButton>(target);
                    ((global::Microsoft.UI.Xaml.Controls.AppBarButton)element6).Click += this.ExecuteBooklet_Click;
                }
                break;
            case 7: // Controls\Booklets\BookletPanelControl.xaml line 43
                {
                    global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem element7 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem>(target);
                    ((global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem)element7).Click += this.AddCodeCell_Click;
                }
                break;
            case 8: // Controls\Booklets\BookletPanelControl.xaml line 44
                {
                    global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem element8 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem>(target);
                    ((global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem)element8).Click += this.AddTextCell_Click;
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


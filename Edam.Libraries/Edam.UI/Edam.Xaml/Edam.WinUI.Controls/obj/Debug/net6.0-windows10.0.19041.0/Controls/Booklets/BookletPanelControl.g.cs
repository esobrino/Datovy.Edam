﻿#pragma checksum "C:\prjs\Datovy.Edam\Edam.Libraries\Edam.UI\Edam.Xaml\Edam.WinUI.Controls\Controls\Booklets\BookletPanelControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "B28EA87B11A97017CCFB3C4FAF76703BEBC7B2081203066FA12333E426296422"
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
            case 2: // Controls\Booklets\BookletPanelControl.xaml line 50
                {
                    global::Microsoft.UI.Xaml.Controls.HyperlinkButton element2 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.HyperlinkButton>(target);
                    ((global::Microsoft.UI.Xaml.Controls.HyperlinkButton)element2).Click += this.AddTextCell_Click;
                }
                break;
            case 3: // Controls\Booklets\BookletPanelControl.xaml line 52
                {
                    global::Microsoft.UI.Xaml.Controls.HyperlinkButton element3 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.HyperlinkButton>(target);
                    ((global::Microsoft.UI.Xaml.Controls.HyperlinkButton)element3).Click += this.AddCodeCell_Click;
                }
                break;
            case 4: // Controls\Booklets\BookletPanelControl.xaml line 44
                {
                    this.BookletList = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.ListView>(target);
                }
                break;
            case 5: // Controls\Booklets\BookletPanelControl.xaml line 38
                {
                    global::Microsoft.UI.Xaml.Controls.AppBarButton element5 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.AppBarButton>(target);
                    ((global::Microsoft.UI.Xaml.Controls.AppBarButton)element5).Click += this.DeleteCell_Click;
                }
                break;
            case 6: // Controls\Booklets\BookletPanelControl.xaml line 33
                {
                    global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem element6 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem>(target);
                    ((global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem)element6).Click += this.AddCodeCell_Click;
                }
                break;
            case 7: // Controls\Booklets\BookletPanelControl.xaml line 34
                {
                    global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem element7 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem>(target);
                    ((global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem)element7).Click += this.AddTextCell_Click;
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

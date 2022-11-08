﻿#pragma checksum "C:\prjs\Datovy.Edam\Edam.Libraries\Edam.UI\Edam.Xaml\Edam.WinUI.Controls\Controls\Navigation\NavigationControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "E232FA64B5F2A44A15B7A90F7C57B6BB99417A12E40A4C066CFA616BB4FBA4D1"
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
    partial class NavigationControl : 
        global::Microsoft.UI.Xaml.Controls.UserControl, 
        global::Microsoft.UI.Xaml.Markup.IComponentConnector
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private static class XamlBindingSetters
        {
            public static void Set_Microsoft_UI_Xaml_Controls_NavigationView_MenuItemsSource(global::Microsoft.UI.Xaml.Controls.NavigationView obj, global::System.Object value, string targetNullValue)
            {
                if (value == null && targetNullValue != null)
                {
                    value = (global::System.Object) global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.ConvertValue(typeof(global::System.Object), targetNullValue);
                }
                obj.MenuItemsSource = value;
            }
            public static void Set_Microsoft_UI_Xaml_Controls_NavigationView_PaneDisplayMode(global::Microsoft.UI.Xaml.Controls.NavigationView obj, global::Microsoft.UI.Xaml.Controls.NavigationViewPaneDisplayMode value)
            {
                obj.PaneDisplayMode = value;
            }
            public static void Set_Microsoft_UI_Xaml_Controls_ContentControl_Content(global::Microsoft.UI.Xaml.Controls.ContentControl obj, global::System.Object value, string targetNullValue)
            {
                if (value == null && targetNullValue != null)
                {
                    value = (global::System.Object) global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.ConvertValue(typeof(global::System.Object), targetNullValue);
                }
                obj.Content = value;
            }
            public static void Set_Microsoft_UI_Xaml_Controls_ToolTipService_ToolTip(global::Microsoft.UI.Xaml.DependencyObject obj, global::System.Object value, string targetNullValue)
            {
                if (value == null && targetNullValue != null)
                {
                    value = (global::System.Object) global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.ConvertValue(typeof(global::System.Object), targetNullValue);
                }
                global::Microsoft.UI.Xaml.Controls.ToolTipService.SetToolTip(obj, value);
            }
            public static void Set_Microsoft_UI_Xaml_Controls_SymbolIcon_Symbol(global::Microsoft.UI.Xaml.Controls.SymbolIcon obj, global::Microsoft.UI.Xaml.Controls.Symbol value)
            {
                obj.Symbol = value;
            }
        };

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private class NavigationControl_obj4_Bindings :
            global::Microsoft.UI.Xaml.IDataTemplateExtension,
            global::Microsoft.UI.Xaml.Markup.IDataTemplateComponent,
            global::Microsoft.UI.Xaml.Markup.IXamlBindScopeDiagnostics,
            global::Microsoft.UI.Xaml.Markup.IComponentConnector,
            INavigationControl_Bindings
        {
            private global::Edam.UI.DataModel.ViewModels.MenuItem dataRoot;
            private bool initialized = false;
            private const int NOT_PHASED = (1 << 31);
            private const int DATA_CHANGED = (1 << 30);
            private bool removedDataContextHandler = false;

            // Fields for each control that has bindings.
            private global::System.WeakReference obj4;
            private global::Microsoft.UI.Xaml.Controls.SymbolIcon obj5;

            // Static fields for each binding's enabled/disabled state
            private static bool isobj4ContentDisabled = false;
            private static bool isobj4ToolTipDisabled = false;
            private static bool isobj5SymbolDisabled = false;

            public NavigationControl_obj4_Bindings()
            {
            }

            public void Disable(int lineNumber, int columnNumber)
            {
                if (lineNumber == 18 && columnNumber == 36)
                {
                    isobj4ContentDisabled = true;
                }
                else if (lineNumber == 18 && columnNumber == 61)
                {
                    isobj4ToolTipDisabled = true;
                }
                else if (lineNumber == 20 && columnNumber == 34)
                {
                    isobj5SymbolDisabled = true;
                }
            }

            // IComponentConnector

            public void Connect(int connectionId, global::System.Object target)
            {
                switch(connectionId)
                {
                    case 4: // Controls\Navigation\NavigationControl.xaml line 18
                        this.obj4 = new global::System.WeakReference(global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.NavigationViewItem>(target));
                        break;
                    case 5: // Controls\Navigation\NavigationControl.xaml line 20
                        this.obj5 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.SymbolIcon>(target);
                        break;
                    default:
                        break;
                }
            }
                        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
                        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
                        public global::Microsoft.UI.Xaml.Markup.IComponentConnector GetBindingConnector(int connectionId, object target) 
                        {
                            return null;
                        }

            public void DataContextChangedHandler(global::Microsoft.UI.Xaml.FrameworkElement sender, global::Microsoft.UI.Xaml.DataContextChangedEventArgs args)
            {
                 if (this.SetDataRoot(args.NewValue))
                 {
                    this.Update();
                 }
            }

            // IDataTemplateExtension

            public bool ProcessBinding(uint phase)
            {
                throw new global::System.NotImplementedException();
            }

            public int ProcessBindings(global::Microsoft.UI.Xaml.Controls.ContainerContentChangingEventArgs args)
            {
                int nextPhase = -1;
                ProcessBindings(args.Item, args.ItemIndex, (int)args.Phase, out nextPhase);
                return nextPhase;
            }

            public void ResetTemplate()
            {
                Recycle();
            }

            // IDataTemplateComponent

            public void ProcessBindings(global::System.Object item, int itemIndex, int phase, out int nextPhase)
            {
                nextPhase = -1;
                switch(phase)
                {
                    case 0:
                        nextPhase = -1;
                        this.SetDataRoot(item);
                        if (!removedDataContextHandler)
                        {
                            removedDataContextHandler = true;
                            (this.obj4.Target as global::Microsoft.UI.Xaml.Controls.NavigationViewItem).DataContextChanged -= this.DataContextChangedHandler;
                        }
                        this.initialized = true;
                        break;
                }
                this.Update_(global::WinRT.CastExtensions.As<global::Edam.UI.DataModel.ViewModels.MenuItem>(item), 1 << phase);
            }

            public void Recycle()
            {
            }

            // INavigationControl_Bindings

            public void Initialize()
            {
                if (!this.initialized)
                {
                    this.Update();
                }
            }
            
            public void Update()
            {
                this.Update_(this.dataRoot, NOT_PHASED);
                this.initialized = true;
            }

            public void StopTracking()
            {
            }

            public void DisconnectUnloadedObject(int connectionId)
            {
                throw new global::System.ArgumentException("No unloadable elements to disconnect.");
            }

            public bool SetDataRoot(global::System.Object newDataRoot)
            {
                if (newDataRoot != null)
                {
                    this.dataRoot = global::WinRT.CastExtensions.As<global::Edam.UI.DataModel.ViewModels.MenuItem>(newDataRoot);
                    return true;
                }
                return false;
            }

            // Update methods for each path node used in binding steps.
            private void Update_(global::Edam.UI.DataModel.ViewModels.MenuItem obj, int phase)
            {
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | (1 << 0))) != 0)
                    {
                        this.Update_Title(obj.Title, phase);
                        this.Update_Tooltip(obj.Tooltip, phase);
                        this.Update_Glyph(obj.Glyph, phase);
                    }
                }
            }
            private void Update_Title(global::System.String obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED )) != 0)
                {
                    // Controls\Navigation\NavigationControl.xaml line 18
                    if (!isobj4ContentDisabled)
                    {
                        if ((this.obj4.Target as global::Microsoft.UI.Xaml.Controls.NavigationViewItem) != null)
                        {
                            XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_ContentControl_Content((this.obj4.Target as global::Microsoft.UI.Xaml.Controls.NavigationViewItem), obj, null);
                        }
                    }
                }
            }
            private void Update_Tooltip(global::System.String obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED )) != 0)
                {
                    // Controls\Navigation\NavigationControl.xaml line 18
                    if (!isobj4ToolTipDisabled)
                    {
                        if ((this.obj4.Target as global::Microsoft.UI.Xaml.Controls.NavigationViewItem) != null)
                        {
                            XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_ToolTipService_ToolTip((this.obj4.Target as global::Microsoft.UI.Xaml.Controls.NavigationViewItem), obj, null);
                        }
                    }
                }
            }
            private void Update_Glyph(global::Microsoft.UI.Xaml.Controls.Symbol obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED )) != 0)
                {
                    // Controls\Navigation\NavigationControl.xaml line 20
                    if (!isobj5SymbolDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_SymbolIcon_Symbol(this.obj5, obj);
                    }
                }
            }
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private class NavigationControl_obj1_Bindings :
            global::Microsoft.UI.Xaml.Markup.IDataTemplateComponent,
            global::Microsoft.UI.Xaml.Markup.IXamlBindScopeDiagnostics,
            global::Microsoft.UI.Xaml.Markup.IComponentConnector,
            INavigationControl_Bindings
        {
            private global::Edam.WinUI.Controls.Navigation.NavigationControl dataRoot;
            private bool initialized = false;
            private const int NOT_PHASED = (1 << 31);
            private const int DATA_CHANGED = (1 << 30);

            // Fields for each control that has bindings.
            private global::Microsoft.UI.Xaml.Controls.NavigationView obj8;

            // Static fields for each binding's enabled/disabled state
            private static bool isobj8MenuItemsSourceDisabled = false;
            private static bool isobj8PaneDisplayModeDisabled = false;

            private NavigationControl_obj1_BindingsTracking bindingsTracking;

            public NavigationControl_obj1_Bindings()
            {
                this.bindingsTracking = new NavigationControl_obj1_BindingsTracking(this);
            }

            public void Disable(int lineNumber, int columnNumber)
            {
                if (lineNumber == 52 && columnNumber == 10)
                {
                    isobj8MenuItemsSourceDisabled = true;
                }
                else if (lineNumber == 53 && columnNumber == 10)
                {
                    isobj8PaneDisplayModeDisabled = true;
                }
            }

            // IComponentConnector

            public void Connect(int connectionId, global::System.Object target)
            {
                switch(connectionId)
                {
                    case 8: // Controls\Navigation\NavigationControl.xaml line 42
                        this.obj8 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.NavigationView>(target);
                        break;
                    default:
                        break;
                }
            }
                        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
                        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
                        public global::Microsoft.UI.Xaml.Markup.IComponentConnector GetBindingConnector(int connectionId, object target) 
                        {
                            return null;
                        }

            // IDataTemplateComponent

            public void ProcessBindings(global::System.Object item, int itemIndex, int phase, out int nextPhase)
            {
                nextPhase = -1;
            }

            public void Recycle()
            {
                return;
            }

            // INavigationControl_Bindings

            public void Initialize()
            {
                if (!this.initialized)
                {
                    this.Update();
                }
            }
            
            public void Update()
            {
                this.Update_(this.dataRoot, NOT_PHASED);
                this.initialized = true;
            }

            public void StopTracking()
            {
                this.bindingsTracking.ReleaseAllListeners();
                this.initialized = false;
            }

            public void DisconnectUnloadedObject(int connectionId)
            {
                throw new global::System.ArgumentException("No unloadable elements to disconnect.");
            }

            public bool SetDataRoot(global::System.Object newDataRoot)
            {
                this.bindingsTracking.ReleaseAllListeners();
                if (newDataRoot != null)
                {
                    this.dataRoot = global::WinRT.CastExtensions.As<global::Edam.WinUI.Controls.Navigation.NavigationControl>(newDataRoot);
                    return true;
                }
                return false;
            }

            public void Activated(object obj, global::Microsoft.UI.Xaml.WindowActivatedEventArgs data)
            {
                this.Initialize();
            }

            public void Loading(global::Microsoft.UI.Xaml.FrameworkElement src, object data)
            {
                this.Initialize();
            }

            // Update methods for each path node used in binding steps.
            private void Update_(global::Edam.WinUI.Controls.Navigation.NavigationControl obj, int phase)
            {
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | DATA_CHANGED | (1 << 0))) != 0)
                    {
                        this.Update_ViewModel(obj.ViewModel, phase);
                    }
                }
            }
            private void Update_ViewModel(global::Edam.Uwp.ViewModels.NavigationViewModel obj, int phase)
            {
                this.bindingsTracking.UpdateChildListeners_ViewModel(obj);
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | DATA_CHANGED | (1 << 0))) != 0)
                    {
                        this.Update_ViewModel_VisibleItems(obj.VisibleItems, phase);
                        this.Update_ViewModel_DisplayMode(obj.DisplayMode, phase);
                    }
                }
            }
            private void Update_ViewModel_VisibleItems(global::System.Collections.Generic.IEnumerable<global::Edam.UI.DataModel.ViewModels.MenuItem> obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Navigation\NavigationControl.xaml line 42
                    if (!isobj8MenuItemsSourceDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_NavigationView_MenuItemsSource(this.obj8, obj, null);
                    }
                }
            }
            private void Update_ViewModel_DisplayMode(global::Microsoft.UI.Xaml.Controls.NavigationViewPaneDisplayMode obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Navigation\NavigationControl.xaml line 42
                    if (!isobj8PaneDisplayModeDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_NavigationView_PaneDisplayMode(this.obj8, obj);
                    }
                }
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
            [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
            private class NavigationControl_obj1_BindingsTracking
            {
                private global::System.WeakReference<NavigationControl_obj1_Bindings> weakRefToBindingObj; 

                public NavigationControl_obj1_BindingsTracking(NavigationControl_obj1_Bindings obj)
                {
                    weakRefToBindingObj = new global::System.WeakReference<NavigationControl_obj1_Bindings>(obj);
                }

                public NavigationControl_obj1_Bindings TryGetBindingObject()
                {
                    NavigationControl_obj1_Bindings bindingObject = null;
                    if (weakRefToBindingObj != null)
                    {
                        weakRefToBindingObj.TryGetTarget(out bindingObject);
                        if (bindingObject == null)
                        {
                            weakRefToBindingObj = null;
                            ReleaseAllListeners();
                        }
                    }
                    return bindingObject;
                }

                public void ReleaseAllListeners()
                {
                    UpdateChildListeners_ViewModel(null);
                }

                public void PropertyChanged_ViewModel(object sender, global::System.ComponentModel.PropertyChangedEventArgs e)
                {
                    NavigationControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        string propName = e.PropertyName;
                        global::Edam.Uwp.ViewModels.NavigationViewModel obj = sender as global::Edam.Uwp.ViewModels.NavigationViewModel;
                        if (global::System.String.IsNullOrEmpty(propName))
                        {
                            if (obj != null)
                            {
                                bindings.Update_ViewModel_VisibleItems(obj.VisibleItems, DATA_CHANGED);
                                bindings.Update_ViewModel_DisplayMode(obj.DisplayMode, DATA_CHANGED);
                            }
                        }
                        else
                        {
                            switch (propName)
                            {
                                case "VisibleItems":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_ViewModel_VisibleItems(obj.VisibleItems, DATA_CHANGED);
                                    }
                                    break;
                                }
                                case "DisplayMode":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_ViewModel_DisplayMode(obj.DisplayMode, DATA_CHANGED);
                                    }
                                    break;
                                }
                                default:
                                    break;
                            }
                        }
                    }
                }
                private global::Edam.Uwp.ViewModels.NavigationViewModel cache_ViewModel = null;
                public void UpdateChildListeners_ViewModel(global::Edam.Uwp.ViewModels.NavigationViewModel obj)
                {
                    if (obj != cache_ViewModel)
                    {
                        if (cache_ViewModel != null)
                        {
                            ((global::System.ComponentModel.INotifyPropertyChanged)cache_ViewModel).PropertyChanged -= PropertyChanged_ViewModel;
                            cache_ViewModel = null;
                        }
                        if (obj != null)
                        {
                            cache_ViewModel = obj;
                            ((global::System.ComponentModel.INotifyPropertyChanged)obj).PropertyChanged += PropertyChanged_ViewModel;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Connect()
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void Connect(int connectionId, object target)
        {
            switch(connectionId)
            {
            case 1: // Controls\Navigation\NavigationControl.xaml line 1
                {
                    global::Microsoft.UI.Xaml.Controls.UserControl element1 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.UserControl>(target);
                    ((global::Microsoft.UI.Xaml.Controls.UserControl)element1).SizeChanged += this.Control_SizeChanged;
                }
                break;
            case 2: // Controls\Navigation\NavigationControl.xaml line 26
                {
                    this.VisibleMenuItems = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Data.CollectionViewSource>(target);
                }
                break;
            case 6: // Controls\Navigation\NavigationControl.xaml line 29
                {
                    this.NoNavigationPanel = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.Grid>(target);
                }
                break;
            case 7: // Controls\Navigation\NavigationControl.xaml line 36
                {
                    this.NoNavigationContent = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.Frame>(target);
                }
                break;
            case 8: // Controls\Navigation\NavigationControl.xaml line 42
                {
                    this.PageNavigation = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.NavigationView>(target);
                    ((global::Microsoft.UI.Xaml.Controls.NavigationView)this.PageNavigation).SelectionChanged += this.PageNavigation_SelectionChanged;
                }
                break;
            case 9: // Controls\Navigation\NavigationControl.xaml line 56
                {
                    this.PanelContent = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.Frame>(target);
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
            switch(connectionId)
            {
            case 1: // Controls\Navigation\NavigationControl.xaml line 1
                {                    
                    global::Microsoft.UI.Xaml.Controls.UserControl element1 = (global::Microsoft.UI.Xaml.Controls.UserControl)target;
                    NavigationControl_obj1_Bindings bindings = new NavigationControl_obj1_Bindings();
                    returnValue = bindings;
                    bindings.SetDataRoot(this);
                    this.Bindings = bindings;
                    element1.Loading += bindings.Loading;
                    global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.SetDataTemplateComponent(element1, bindings);
                }
                break;
            case 4: // Controls\Navigation\NavigationControl.xaml line 18
                {                    
                    global::Microsoft.UI.Xaml.Controls.NavigationViewItem element4 = (global::Microsoft.UI.Xaml.Controls.NavigationViewItem)target;
                    NavigationControl_obj4_Bindings bindings = new NavigationControl_obj4_Bindings();
                    returnValue = bindings;
                    bindings.SetDataRoot(element4.DataContext);
                    element4.DataContextChanged += bindings.DataContextChangedHandler;
                    global::Microsoft.UI.Xaml.DataTemplate.SetExtensionInstance(element4, bindings);
                    global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.SetDataTemplateComponent(element4, bindings);
                }
                break;
            }
            return returnValue;
        }
    }
}


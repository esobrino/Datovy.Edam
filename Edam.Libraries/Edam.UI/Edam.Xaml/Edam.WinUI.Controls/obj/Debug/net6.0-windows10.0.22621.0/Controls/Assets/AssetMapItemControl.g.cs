﻿#pragma checksum "C:\prjs\Datovy.Edam\Edam.Libraries\Edam.UI\Edam.Xaml\Edam.WinUI.Controls\Controls\Assets\AssetMapItemControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "3AAA11FFF659AF8B064AC6D68AFE8321FB7FA7795A0FDC35E32B11D2A073BCE1"
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
    partial class AssetMapItemControl : 
        global::Microsoft.UI.Xaml.Controls.UserControl, 
        global::Microsoft.UI.Xaml.Markup.IComponentConnector
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private static class XamlBindingSetters
        {
            public static void Set_Microsoft_UI_Xaml_Controls_ItemsControl_ItemsSource(global::Microsoft.UI.Xaml.Controls.ItemsControl obj, global::System.Object value, string targetNullValue)
            {
                if (value == null && targetNullValue != null)
                {
                    value = (global::System.Object) global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.ConvertValue(typeof(global::System.Object), targetNullValue);
                }
                obj.ItemsSource = value;
            }
            public static void Set_Microsoft_UI_Xaml_Controls_Primitives_Selector_SelectedItem(global::Microsoft.UI.Xaml.Controls.Primitives.Selector obj, global::System.Object value, string targetNullValue)
            {
                if (value == null && targetNullValue != null)
                {
                    value = (global::System.Object) global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.ConvertValue(typeof(global::System.Object), targetNullValue);
                }
                obj.SelectedItem = value;
            }
        };

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private class AssetMapItemControl_obj1_Bindings :
            global::Microsoft.UI.Xaml.Markup.IDataTemplateComponent,
            global::Microsoft.UI.Xaml.Markup.IXamlBindScopeDiagnostics,
            global::Microsoft.UI.Xaml.Markup.IComponentConnector,
            IAssetMapItemControl_Bindings
        {
            private global::Edam.WinUI.Controls.Assets.AssetMapItemControl dataRoot;
            private bool initialized = false;
            private const int NOT_PHASED = (1 << 31);
            private const int DATA_CHANGED = (1 << 30);

            // Fields for each control that has bindings.
            private global::Microsoft.UI.Xaml.Controls.ListView obj5;

            // Static fields for each binding's enabled/disabled state
            private static bool isobj5ItemsSourceDisabled = false;
            private static bool isobj5SelectedItemDisabled = false;

            private AssetMapItemControl_obj1_BindingsTracking bindingsTracking;

            public AssetMapItemControl_obj1_Bindings()
            {
                this.bindingsTracking = new AssetMapItemControl_obj1_BindingsTracking(this);
            }

            public void Disable(int lineNumber, int columnNumber)
            {
                if (lineNumber == 32 && columnNumber == 13)
                {
                    isobj5ItemsSourceDisabled = true;
                }
                else if (lineNumber == 33 && columnNumber == 13)
                {
                    isobj5SelectedItemDisabled = true;
                }
            }

            // IComponentConnector

            public void Connect(int connectionId, global::System.Object target)
            {
                switch(connectionId)
                {
                    case 5: // Controls\Assets\AssetMapItemControl.xaml line 31
                        this.obj5 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.ListView>(target);
                        this.bindingsTracking.RegisterTwoWayListener_5(this.obj5);
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

            // IAssetMapItemControl_Bindings

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
                    this.dataRoot = global::WinRT.CastExtensions.As<global::Edam.WinUI.Controls.Assets.AssetMapItemControl>(newDataRoot);
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
            private void Update_(global::Edam.WinUI.Controls.Assets.AssetMapItemControl obj, int phase)
            {
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | DATA_CHANGED | (1 << 0))) != 0)
                    {
                        this.Update_ViewModel(obj.ViewModel, phase);
                    }
                }
            }
            private void Update_ViewModel(global::Edam.WinUI.Controls.ViewModels.AssetMapItemViewModel obj, int phase)
            {
                this.bindingsTracking.UpdateChildListeners_ViewModel(obj);
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | DATA_CHANGED | (1 << 0))) != 0)
                    {
                        this.Update_ViewModel_MapItemList(obj.MapItemList, phase);
                        this.Update_ViewModel_SelectedMapItem(obj.SelectedMapItem, phase);
                    }
                }
            }
            private void Update_ViewModel_MapItemList(global::System.Collections.ObjectModel.ObservableCollection<global::Edam.Data.AssetSchema.AssetDataMapItem> obj, int phase)
            {
                this.bindingsTracking.UpdateChildListeners_ViewModel_MapItemList(obj);
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Assets\AssetMapItemControl.xaml line 31
                    if (!isobj5ItemsSourceDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_ItemsControl_ItemsSource(this.obj5, obj, null);
                    }
                }
            }
            private void Update_ViewModel_SelectedMapItem(global::Edam.Data.AssetSchema.AssetDataMapItem obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Assets\AssetMapItemControl.xaml line 31
                    if (!isobj5SelectedItemDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_Primitives_Selector_SelectedItem(this.obj5, obj, null);
                    }
                }
            }
            private void UpdateTwoWay_5_ItemsSource()
            {
                if (this.initialized)
                {
                    if (this.dataRoot != null)
                    {
                        if (this.dataRoot.ViewModel != null)
                        {
                            this.dataRoot.ViewModel.MapItemList = (global::System.Collections.ObjectModel.ObservableCollection<global::Edam.Data.AssetSchema.AssetDataMapItem>)this.obj5.ItemsSource;
                        }
                    }
                }
            }
            private void UpdateTwoWay_5_SelectedItem()
            {
                if (this.initialized)
                {
                    if (this.dataRoot != null)
                    {
                        if (this.dataRoot.ViewModel != null)
                        {
                            this.dataRoot.ViewModel.SelectedMapItem = (global::Edam.Data.AssetSchema.AssetDataMapItem)this.obj5.SelectedItem;
                        }
                    }
                }
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
            [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
            private class AssetMapItemControl_obj1_BindingsTracking
            {
                private global::System.WeakReference<AssetMapItemControl_obj1_Bindings> weakRefToBindingObj; 

                public AssetMapItemControl_obj1_BindingsTracking(AssetMapItemControl_obj1_Bindings obj)
                {
                    weakRefToBindingObj = new global::System.WeakReference<AssetMapItemControl_obj1_Bindings>(obj);
                }

                public AssetMapItemControl_obj1_Bindings TryGetBindingObject()
                {
                    AssetMapItemControl_obj1_Bindings bindingObject = null;
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
                    UpdateChildListeners_ViewModel_MapItemList(null);
                }

                public void PropertyChanged_ViewModel(object sender, global::System.ComponentModel.PropertyChangedEventArgs e)
                {
                    AssetMapItemControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        string propName = e.PropertyName;
                        global::Edam.WinUI.Controls.ViewModels.AssetMapItemViewModel obj = sender as global::Edam.WinUI.Controls.ViewModels.AssetMapItemViewModel;
                        if (global::System.String.IsNullOrEmpty(propName))
                        {
                            if (obj != null)
                            {
                                bindings.Update_ViewModel_MapItemList(obj.MapItemList, DATA_CHANGED);
                                bindings.Update_ViewModel_SelectedMapItem(obj.SelectedMapItem, DATA_CHANGED);
                            }
                        }
                        else
                        {
                            switch (propName)
                            {
                                case "MapItemList":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_ViewModel_MapItemList(obj.MapItemList, DATA_CHANGED);
                                    }
                                    break;
                                }
                                case "SelectedMapItem":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_ViewModel_SelectedMapItem(obj.SelectedMapItem, DATA_CHANGED);
                                    }
                                    break;
                                }
                                default:
                                    break;
                            }
                        }
                    }
                }
                private global::Edam.WinUI.Controls.ViewModels.AssetMapItemViewModel cache_ViewModel = null;
                public void UpdateChildListeners_ViewModel(global::Edam.WinUI.Controls.ViewModels.AssetMapItemViewModel obj)
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
                public void PropertyChanged_ViewModel_MapItemList(object sender, global::System.ComponentModel.PropertyChangedEventArgs e)
                {
                    AssetMapItemControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        string propName = e.PropertyName;
                        global::System.Collections.ObjectModel.ObservableCollection<global::Edam.Data.AssetSchema.AssetDataMapItem> obj = sender as global::System.Collections.ObjectModel.ObservableCollection<global::Edam.Data.AssetSchema.AssetDataMapItem>;
                        if (global::System.String.IsNullOrEmpty(propName))
                        {
                        }
                        else
                        {
                            switch (propName)
                            {
                                default:
                                    break;
                            }
                        }
                    }
                }
                public void CollectionChanged_ViewModel_MapItemList(object sender, global::System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
                {
                    AssetMapItemControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        global::System.Collections.ObjectModel.ObservableCollection<global::Edam.Data.AssetSchema.AssetDataMapItem> obj = sender as global::System.Collections.ObjectModel.ObservableCollection<global::Edam.Data.AssetSchema.AssetDataMapItem>;
                    }
                }
                private global::System.Collections.ObjectModel.ObservableCollection<global::Edam.Data.AssetSchema.AssetDataMapItem> cache_ViewModel_MapItemList = null;
                public void UpdateChildListeners_ViewModel_MapItemList(global::System.Collections.ObjectModel.ObservableCollection<global::Edam.Data.AssetSchema.AssetDataMapItem> obj)
                {
                    if (obj != cache_ViewModel_MapItemList)
                    {
                        if (cache_ViewModel_MapItemList != null)
                        {
                            ((global::System.ComponentModel.INotifyPropertyChanged)cache_ViewModel_MapItemList).PropertyChanged -= PropertyChanged_ViewModel_MapItemList;
                            ((global::System.Collections.Specialized.INotifyCollectionChanged)cache_ViewModel_MapItemList).CollectionChanged -= CollectionChanged_ViewModel_MapItemList;
                            cache_ViewModel_MapItemList = null;
                        }
                        if (obj != null)
                        {
                            cache_ViewModel_MapItemList = obj;
                            ((global::System.ComponentModel.INotifyPropertyChanged)obj).PropertyChanged += PropertyChanged_ViewModel_MapItemList;
                            ((global::System.Collections.Specialized.INotifyCollectionChanged)obj).CollectionChanged += CollectionChanged_ViewModel_MapItemList;
                        }
                    }
                }
                public void RegisterTwoWayListener_5(global::Microsoft.UI.Xaml.Controls.ListView sourceObject)
                {
                    sourceObject.RegisterPropertyChangedCallback(global::Microsoft.UI.Xaml.Controls.ItemsControl.ItemsSourceProperty, (sender, prop) =>
                    {
                        var bindingObj = this.TryGetBindingObject();
                        if (bindingObj != null)
                        {
                            bindingObj.UpdateTwoWay_5_ItemsSource();
                        }
                    });
                    sourceObject.RegisterPropertyChangedCallback(global::Microsoft.UI.Xaml.Controls.Primitives.Selector.SelectedItemProperty, (sender, prop) =>
                    {
                        var bindingObj = this.TryGetBindingObject();
                        if (bindingObj != null)
                        {
                            bindingObj.UpdateTwoWay_5_SelectedItem();
                        }
                    });
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
            case 2: // Controls\Assets\AssetMapItemControl.xaml line 27
                {
                    global::Microsoft.UI.Xaml.Controls.ScrollViewer element2 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.ScrollViewer>(target);
                    ((global::Microsoft.UI.Xaml.Controls.ScrollViewer)element2).KeyDown += this.ScrollViewer_KeyDown;
                    ((global::Microsoft.UI.Xaml.Controls.ScrollViewer)element2).KeyUp += this.ScrollViewer_KeyUp;
                }
                break;
            case 3: // Controls\Assets\AssetMapItemControl.xaml line 112
                {
                    this.BookletPanel = global::WinRT.CastExtensions.As<global::Edam.WinUI.Controls.Booklets.BookletPanelControl>(target);
                }
                break;
            case 4: // Controls\Assets\AssetMapItemControl.xaml line 108
                {
                    this.FolderViewer = global::WinRT.CastExtensions.As<global::Edam.WinUI.Controls.Utilities.FolderViewControl>(target);
                }
                break;
            case 8: // Controls\Assets\AssetMapItemControl.xaml line 48
                {
                    global::Microsoft.UI.Xaml.Controls.ListView element8 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.ListView>(target);
                    ((global::Microsoft.UI.Xaml.Controls.ListView)element8).SelectionChanged += this.SourceControl_SelectionChanged;
                }
                break;
            case 9: // Controls\Assets\AssetMapItemControl.xaml line 70
                {
                    global::Microsoft.UI.Xaml.Controls.ListView element9 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.ListView>(target);
                    ((global::Microsoft.UI.Xaml.Controls.ListView)element9).SelectionChanged += this.TargetControl_SelectionChanged;
                }
                break;
            case 10: // Controls\Assets\AssetMapItemControl.xaml line 89
                {
                    global::Microsoft.UI.Xaml.Controls.FontIcon element10 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.FontIcon>(target);
                    ((global::Microsoft.UI.Xaml.Controls.FontIcon)element10).PointerPressed += this.Delete_PointerPressed;
                }
                break;
            case 11: // Controls\Assets\AssetMapItemControl.xaml line 77
                {
                    global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem element11 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem>(target);
                    ((global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem)element11).Click += this.TargetDeleteItem_Click;
                }
                break;
            case 13: // Controls\Assets\AssetMapItemControl.xaml line 55
                {
                    global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem element13 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem>(target);
                    ((global::Microsoft.UI.Xaml.Controls.MenuFlyoutItem)element13).Click += this.SourceDeleteItem_Click;
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
            case 1: // Controls\Assets\AssetMapItemControl.xaml line 1
                {                    
                    global::Microsoft.UI.Xaml.Controls.UserControl element1 = (global::Microsoft.UI.Xaml.Controls.UserControl)target;
                    AssetMapItemControl_obj1_Bindings bindings = new AssetMapItemControl_obj1_Bindings();
                    returnValue = bindings;
                    bindings.SetDataRoot(this);
                    this.Bindings = bindings;
                    element1.Loading += bindings.Loading;
                    global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.SetDataTemplateComponent(element1, bindings);
                }
                break;
            }
            return returnValue;
        }
    }
}

﻿#pragma checksum "C:\prjs\Datovy.Edam\Edam.Libraries\Edam.UI\Edam.Xaml\Edam.WinUI.Controls\Controls\Activities\ProgramControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "C1DE628A5E3EAF3E4C11CD70E25AAA60D463B780E5D7C7B82E251C834BF26EC4"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Edam.WinUI.Controls.Activities
{
    partial class ProgramControl : 
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
        private class ProgramControl_obj1_Bindings :
            global::Microsoft.UI.Xaml.Markup.IDataTemplateComponent,
            global::Microsoft.UI.Xaml.Markup.IXamlBindScopeDiagnostics,
            global::Microsoft.UI.Xaml.Markup.IComponentConnector,
            IProgramControl_Bindings
        {
            private global::Edam.WinUI.Controls.Activities.ProgramControl dataRoot;
            private bool initialized = false;
            private const int NOT_PHASED = (1 << 31);
            private const int DATA_CHANGED = (1 << 30);

            // Fields for each control that has bindings.
            private global::Microsoft.UI.Xaml.Controls.ComboBox obj2;
            private global::Microsoft.UI.Xaml.Controls.ComboBox obj3;

            // Static fields for each binding's enabled/disabled state
            private static bool isobj2ItemsSourceDisabled = false;
            private static bool isobj2SelectedItemDisabled = false;
            private static bool isobj3ItemsSourceDisabled = false;
            private static bool isobj3SelectedItemDisabled = false;

            private ProgramControl_obj1_BindingsTracking bindingsTracking;

            public ProgramControl_obj1_Bindings()
            {
                this.bindingsTracking = new ProgramControl_obj1_BindingsTracking(this);
            }

            public void Disable(int lineNumber, int columnNumber)
            {
                if (lineNumber == 11 && columnNumber == 17)
                {
                    isobj2ItemsSourceDisabled = true;
                }
                else if (lineNumber == 15 && columnNumber == 17)
                {
                    isobj2SelectedItemDisabled = true;
                }
                else if (lineNumber == 19 && columnNumber == 17)
                {
                    isobj3ItemsSourceDisabled = true;
                }
                else if (lineNumber == 23 && columnNumber == 17)
                {
                    isobj3SelectedItemDisabled = true;
                }
            }

            // IComponentConnector

            public void Connect(int connectionId, global::System.Object target)
            {
                switch(connectionId)
                {
                    case 2: // Controls\Activities\ProgramControl.xaml line 11
                        this.obj2 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.ComboBox>(target);
                        this.bindingsTracking.RegisterTwoWayListener_2(this.obj2);
                        break;
                    case 3: // Controls\Activities\ProgramControl.xaml line 19
                        this.obj3 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.ComboBox>(target);
                        this.bindingsTracking.RegisterTwoWayListener_3(this.obj3);
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

            // IProgramControl_Bindings

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
                    this.dataRoot = global::WinRT.CastExtensions.As<global::Edam.WinUI.Controls.Activities.ProgramControl>(newDataRoot);
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
            private void Update_(global::Edam.WinUI.Controls.Activities.ProgramControl obj, int phase)
            {
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | DATA_CHANGED | (1 << 0))) != 0)
                    {
                        this.Update_ViewModel(obj.ViewModel, phase);
                    }
                }
            }
            private void Update_ViewModel(global::Edam.UI.DataModel.Activities.ActivityProgramModel obj, int phase)
            {
                this.bindingsTracking.UpdateChildListeners_ViewModel(obj);
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | DATA_CHANGED | (1 << 0))) != 0)
                    {
                        this.Update_ViewModel_Items(obj.Items, phase);
                        this.Update_ViewModel_SelectedProgram(obj.SelectedProgram, phase);
                        this.Update_ViewModel_Content(obj.Content, phase);
                        this.Update_ViewModel_SelectedContent(obj.SelectedContent, phase);
                    }
                }
            }
            private void Update_ViewModel_Items(global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityProgramInfo> obj, int phase)
            {
                this.bindingsTracking.UpdateChildListeners_ViewModel_Items(obj);
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Activities\ProgramControl.xaml line 11
                    if (!isobj2ItemsSourceDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_ItemsControl_ItemsSource(this.obj2, obj, null);
                    }
                }
            }
            private void Update_ViewModel_SelectedProgram(global::Edam.DataObjects.Activities.ActivityProgramInfo obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Activities\ProgramControl.xaml line 11
                    if (!isobj2SelectedItemDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_Primitives_Selector_SelectedItem(this.obj2, obj, null);
                    }
                }
            }
            private void Update_ViewModel_Content(global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityContentInfo> obj, int phase)
            {
                this.bindingsTracking.UpdateChildListeners_ViewModel_Content(obj);
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Activities\ProgramControl.xaml line 19
                    if (!isobj3ItemsSourceDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_ItemsControl_ItemsSource(this.obj3, obj, null);
                    }
                }
            }
            private void Update_ViewModel_SelectedContent(global::Edam.DataObjects.Activities.ActivityContentInfo obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Activities\ProgramControl.xaml line 19
                    if (!isobj3SelectedItemDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_Primitives_Selector_SelectedItem(this.obj3, obj, null);
                    }
                }
            }
            private void UpdateTwoWay_2_ItemsSource()
            {
                if (this.initialized)
                {
                    if (this.dataRoot != null)
                    {
                        if (this.dataRoot.ViewModel != null)
                        {
                            this.dataRoot.ViewModel.Items = (global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityProgramInfo>)this.obj2.ItemsSource;
                        }
                    }
                }
            }
            private void UpdateTwoWay_2_SelectedItem()
            {
                if (this.initialized)
                {
                    if (this.dataRoot != null)
                    {
                        if (this.dataRoot.ViewModel != null)
                        {
                            this.dataRoot.ViewModel.SelectedProgram = (global::Edam.DataObjects.Activities.ActivityProgramInfo)this.obj2.SelectedItem;
                        }
                    }
                }
            }
            private void UpdateTwoWay_3_ItemsSource()
            {
                if (this.initialized)
                {
                    if (this.dataRoot != null)
                    {
                        if (this.dataRoot.ViewModel != null)
                        {
                            this.dataRoot.ViewModel.Content = (global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityContentInfo>)this.obj3.ItemsSource;
                        }
                    }
                }
            }
            private void UpdateTwoWay_3_SelectedItem()
            {
                if (this.initialized)
                {
                    if (this.dataRoot != null)
                    {
                        if (this.dataRoot.ViewModel != null)
                        {
                            this.dataRoot.ViewModel.SelectedContent = (global::Edam.DataObjects.Activities.ActivityContentInfo)this.obj3.SelectedItem;
                        }
                    }
                }
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
            [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
            private class ProgramControl_obj1_BindingsTracking
            {
                private global::System.WeakReference<ProgramControl_obj1_Bindings> weakRefToBindingObj; 

                public ProgramControl_obj1_BindingsTracking(ProgramControl_obj1_Bindings obj)
                {
                    weakRefToBindingObj = new global::System.WeakReference<ProgramControl_obj1_Bindings>(obj);
                }

                public ProgramControl_obj1_Bindings TryGetBindingObject()
                {
                    ProgramControl_obj1_Bindings bindingObject = null;
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
                    UpdateChildListeners_ViewModel_Items(null);
                    UpdateChildListeners_ViewModel_Content(null);
                }

                public void PropertyChanged_ViewModel(object sender, global::System.ComponentModel.PropertyChangedEventArgs e)
                {
                    ProgramControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        string propName = e.PropertyName;
                        global::Edam.UI.DataModel.Activities.ActivityProgramModel obj = sender as global::Edam.UI.DataModel.Activities.ActivityProgramModel;
                        if (global::System.String.IsNullOrEmpty(propName))
                        {
                            if (obj != null)
                            {
                                bindings.Update_ViewModel_Items(obj.Items, DATA_CHANGED);
                                bindings.Update_ViewModel_SelectedProgram(obj.SelectedProgram, DATA_CHANGED);
                                bindings.Update_ViewModel_Content(obj.Content, DATA_CHANGED);
                                bindings.Update_ViewModel_SelectedContent(obj.SelectedContent, DATA_CHANGED);
                            }
                        }
                        else
                        {
                            switch (propName)
                            {
                                case "Items":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_ViewModel_Items(obj.Items, DATA_CHANGED);
                                    }
                                    break;
                                }
                                case "SelectedProgram":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_ViewModel_SelectedProgram(obj.SelectedProgram, DATA_CHANGED);
                                    }
                                    break;
                                }
                                case "Content":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_ViewModel_Content(obj.Content, DATA_CHANGED);
                                    }
                                    break;
                                }
                                case "SelectedContent":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_ViewModel_SelectedContent(obj.SelectedContent, DATA_CHANGED);
                                    }
                                    break;
                                }
                                default:
                                    break;
                            }
                        }
                    }
                }
                private global::Edam.UI.DataModel.Activities.ActivityProgramModel cache_ViewModel = null;
                public void UpdateChildListeners_ViewModel(global::Edam.UI.DataModel.Activities.ActivityProgramModel obj)
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
                public void PropertyChanged_ViewModel_Items(object sender, global::System.ComponentModel.PropertyChangedEventArgs e)
                {
                    ProgramControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        string propName = e.PropertyName;
                        global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityProgramInfo> obj = sender as global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityProgramInfo>;
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
                public void CollectionChanged_ViewModel_Items(object sender, global::System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
                {
                    ProgramControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityProgramInfo> obj = sender as global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityProgramInfo>;
                    }
                }
                private global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityProgramInfo> cache_ViewModel_Items = null;
                public void UpdateChildListeners_ViewModel_Items(global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityProgramInfo> obj)
                {
                    if (obj != cache_ViewModel_Items)
                    {
                        if (cache_ViewModel_Items != null)
                        {
                            ((global::System.ComponentModel.INotifyPropertyChanged)cache_ViewModel_Items).PropertyChanged -= PropertyChanged_ViewModel_Items;
                            ((global::System.Collections.Specialized.INotifyCollectionChanged)cache_ViewModel_Items).CollectionChanged -= CollectionChanged_ViewModel_Items;
                            cache_ViewModel_Items = null;
                        }
                        if (obj != null)
                        {
                            cache_ViewModel_Items = obj;
                            ((global::System.ComponentModel.INotifyPropertyChanged)obj).PropertyChanged += PropertyChanged_ViewModel_Items;
                            ((global::System.Collections.Specialized.INotifyCollectionChanged)obj).CollectionChanged += CollectionChanged_ViewModel_Items;
                        }
                    }
                }
                public void PropertyChanged_ViewModel_Content(object sender, global::System.ComponentModel.PropertyChangedEventArgs e)
                {
                    ProgramControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        string propName = e.PropertyName;
                        global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityContentInfo> obj = sender as global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityContentInfo>;
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
                public void CollectionChanged_ViewModel_Content(object sender, global::System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
                {
                    ProgramControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityContentInfo> obj = sender as global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityContentInfo>;
                    }
                }
                private global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityContentInfo> cache_ViewModel_Content = null;
                public void UpdateChildListeners_ViewModel_Content(global::System.Collections.ObjectModel.ObservableCollection<global::Edam.DataObjects.Activities.ActivityContentInfo> obj)
                {
                    if (obj != cache_ViewModel_Content)
                    {
                        if (cache_ViewModel_Content != null)
                        {
                            ((global::System.ComponentModel.INotifyPropertyChanged)cache_ViewModel_Content).PropertyChanged -= PropertyChanged_ViewModel_Content;
                            ((global::System.Collections.Specialized.INotifyCollectionChanged)cache_ViewModel_Content).CollectionChanged -= CollectionChanged_ViewModel_Content;
                            cache_ViewModel_Content = null;
                        }
                        if (obj != null)
                        {
                            cache_ViewModel_Content = obj;
                            ((global::System.ComponentModel.INotifyPropertyChanged)obj).PropertyChanged += PropertyChanged_ViewModel_Content;
                            ((global::System.Collections.Specialized.INotifyCollectionChanged)obj).CollectionChanged += CollectionChanged_ViewModel_Content;
                        }
                    }
                }
                public void RegisterTwoWayListener_2(global::Microsoft.UI.Xaml.Controls.ComboBox sourceObject)
                {
                    sourceObject.RegisterPropertyChangedCallback(global::Microsoft.UI.Xaml.Controls.ItemsControl.ItemsSourceProperty, (sender, prop) =>
                    {
                        var bindingObj = this.TryGetBindingObject();
                        if (bindingObj != null)
                        {
                            bindingObj.UpdateTwoWay_2_ItemsSource();
                        }
                    });
                    sourceObject.RegisterPropertyChangedCallback(global::Microsoft.UI.Xaml.Controls.Primitives.Selector.SelectedItemProperty, (sender, prop) =>
                    {
                        var bindingObj = this.TryGetBindingObject();
                        if (bindingObj != null)
                        {
                            bindingObj.UpdateTwoWay_2_SelectedItem();
                        }
                    });
                }
                public void RegisterTwoWayListener_3(global::Microsoft.UI.Xaml.Controls.ComboBox sourceObject)
                {
                    sourceObject.RegisterPropertyChangedCallback(global::Microsoft.UI.Xaml.Controls.ItemsControl.ItemsSourceProperty, (sender, prop) =>
                    {
                        var bindingObj = this.TryGetBindingObject();
                        if (bindingObj != null)
                        {
                            bindingObj.UpdateTwoWay_3_ItemsSource();
                        }
                    });
                    sourceObject.RegisterPropertyChangedCallback(global::Microsoft.UI.Xaml.Controls.Primitives.Selector.SelectedItemProperty, (sender, prop) =>
                    {
                        var bindingObj = this.TryGetBindingObject();
                        if (bindingObj != null)
                        {
                            bindingObj.UpdateTwoWay_3_SelectedItem();
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
            case 1: // Controls\Activities\ProgramControl.xaml line 1
                {                    
                    global::Microsoft.UI.Xaml.Controls.UserControl element1 = (global::Microsoft.UI.Xaml.Controls.UserControl)target;
                    ProgramControl_obj1_Bindings bindings = new ProgramControl_obj1_Bindings();
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


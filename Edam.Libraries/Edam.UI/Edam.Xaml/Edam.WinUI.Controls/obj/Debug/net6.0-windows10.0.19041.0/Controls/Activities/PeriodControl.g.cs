﻿#pragma checksum "C:\prjs\Datovy.Edam\Edam.Libraries\Edam.UI\Edam.Xaml\Edam.WinUI.Controls\Controls\Activities\PeriodControl.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "9402302033B16D2E92414094AA136DC77E6F7EEE3EDF4D51C8F73678C900BA65"
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
    partial class PeriodControl : 
        global::Microsoft.UI.Xaml.Controls.UserControl, 
        global::Microsoft.UI.Xaml.Markup.IComponentConnector
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private static class XamlBindingSetters
        {
            public static void Set_Microsoft_UI_Xaml_Controls_TextBlock_Text(global::Microsoft.UI.Xaml.Controls.TextBlock obj, global::System.String value, string targetNullValue)
            {
                if (value == null && targetNullValue != null)
                {
                    value = targetNullValue;
                }
                obj.Text = value ?? global::System.String.Empty;
            }
            public static void Set_Microsoft_UI_Xaml_Controls_CalendarDatePicker_Date(global::Microsoft.UI.Xaml.Controls.CalendarDatePicker obj, global::System.Nullable<global::System.DateTimeOffset> value, string targetNullValue)
            {
                if (value == null && targetNullValue != null)
                {
                    value = (global::System.DateTimeOffset) global::Microsoft.UI.Xaml.Markup.XamlBindingHelper.ConvertValue(typeof(global::System.DateTimeOffset), targetNullValue);
                }
                obj.Date = value;
            }
        };

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private class PeriodControl_obj1_Bindings :
            global::Microsoft.UI.Xaml.Markup.IDataTemplateComponent,
            global::Microsoft.UI.Xaml.Markup.IXamlBindScopeDiagnostics,
            global::Microsoft.UI.Xaml.Markup.IComponentConnector,
            IPeriodControl_Bindings
        {
            private global::Edam.WinUI.Controls.Activities.PeriodControl dataRoot;
            private bool initialized = false;
            private const int NOT_PHASED = (1 << 31);
            private const int DATA_CHANGED = (1 << 30);

            // Fields for each control that has bindings.
            private global::Microsoft.UI.Xaml.Controls.TextBlock obj2;
            private global::Microsoft.UI.Xaml.Controls.CalendarDatePicker obj3;

            // Static fields for each binding's enabled/disabled state
            private static bool isobj2TextDisabled = false;
            private static bool isobj3DateDisabled = false;

            private PeriodControl_obj1_BindingsTracking bindingsTracking;

            public PeriodControl_obj1_Bindings()
            {
                this.bindingsTracking = new PeriodControl_obj1_BindingsTracking(this);
            }

            public void Disable(int lineNumber, int columnNumber)
            {
                if (lineNumber == 12 && columnNumber == 18)
                {
                    isobj2TextDisabled = true;
                }
                else if (lineNumber == 15 && columnNumber == 27)
                {
                    isobj3DateDisabled = true;
                }
            }

            // IComponentConnector

            public void Connect(int connectionId, global::System.Object target)
            {
                switch(connectionId)
                {
                    case 2: // Controls\Activities\PeriodControl.xaml line 11
                        this.obj2 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.TextBlock>(target);
                        this.bindingsTracking.RegisterTwoWayListener_2(this.obj2);
                        break;
                    case 3: // Controls\Activities\PeriodControl.xaml line 13
                        this.obj3 = global::WinRT.CastExtensions.As<global::Microsoft.UI.Xaml.Controls.CalendarDatePicker>(target);
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

            // IPeriodControl_Bindings

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
                    this.dataRoot = global::WinRT.CastExtensions.As<global::Edam.WinUI.Controls.Activities.PeriodControl>(newDataRoot);
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
            private void Update_(global::Edam.WinUI.Controls.Activities.PeriodControl obj, int phase)
            {
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | DATA_CHANGED | (1 << 0))) != 0)
                    {
                        this.Update_m_ViewModel(obj.m_ViewModel, phase);
                    }
                }
            }
            private void Update_m_ViewModel(global::Edam.WinUI.Controls.DataModels.DatePeriodModel obj, int phase)
            {
                this.bindingsTracking.UpdateChildListeners_m_ViewModel(obj);
                if (obj != null)
                {
                    if ((phase & (NOT_PHASED | DATA_CHANGED | (1 << 0))) != 0)
                    {
                        this.Update_m_ViewModel_SelectedPeriodId(obj.SelectedPeriodId, phase);
                        this.Update_m_ViewModel_ReferenceDate(obj.ReferenceDate, phase);
                    }
                }
            }
            private void Update_m_ViewModel_SelectedPeriodId(global::System.String obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Activities\PeriodControl.xaml line 11
                    if (!isobj2TextDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_TextBlock_Text(this.obj2, obj, null);
                    }
                }
            }
            private void Update_m_ViewModel_ReferenceDate(global::System.DateTimeOffset obj, int phase)
            {
                if ((phase & ((1 << 0) | NOT_PHASED | DATA_CHANGED)) != 0)
                {
                    // Controls\Activities\PeriodControl.xaml line 13
                    if (!isobj3DateDisabled)
                    {
                        XamlBindingSetters.Set_Microsoft_UI_Xaml_Controls_CalendarDatePicker_Date(this.obj3, obj, null);
                    }
                }
            }
            private void UpdateTwoWay_2_Text()
            {
                if (this.initialized)
                {
                    if (this.dataRoot != null)
                    {
                        if (this.dataRoot.m_ViewModel != null)
                        {
                            this.dataRoot.m_ViewModel.SelectedPeriodId = this.obj2.Text;
                        }
                    }
                }
            }
            private void UpdateTwoWay_3_Date()
            {
                if (this.initialized)
                {
                    if (this.dataRoot != null)
                    {
                        if (this.dataRoot.m_ViewModel != null)
                        {
                            this.dataRoot.m_ViewModel.ReferenceDate = (global::System.DateTimeOffset)this.obj3.Date;
                        }
                    }
                }
            }

            [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.UI.Xaml.Markup.Compiler"," 1.0.0.0")]
            [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
            private class PeriodControl_obj1_BindingsTracking
            {
                private global::System.WeakReference<PeriodControl_obj1_Bindings> weakRefToBindingObj; 

                public PeriodControl_obj1_BindingsTracking(PeriodControl_obj1_Bindings obj)
                {
                    weakRefToBindingObj = new global::System.WeakReference<PeriodControl_obj1_Bindings>(obj);
                }

                public PeriodControl_obj1_Bindings TryGetBindingObject()
                {
                    PeriodControl_obj1_Bindings bindingObject = null;
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
                    UpdateChildListeners_m_ViewModel(null);
                }

                public void PropertyChanged_m_ViewModel(object sender, global::System.ComponentModel.PropertyChangedEventArgs e)
                {
                    PeriodControl_obj1_Bindings bindings = TryGetBindingObject();
                    if (bindings != null)
                    {
                        string propName = e.PropertyName;
                        global::Edam.WinUI.Controls.DataModels.DatePeriodModel obj = sender as global::Edam.WinUI.Controls.DataModels.DatePeriodModel;
                        if (global::System.String.IsNullOrEmpty(propName))
                        {
                            if (obj != null)
                            {
                                bindings.Update_m_ViewModel_SelectedPeriodId(obj.SelectedPeriodId, DATA_CHANGED);
                                bindings.Update_m_ViewModel_ReferenceDate(obj.ReferenceDate, DATA_CHANGED);
                            }
                        }
                        else
                        {
                            switch (propName)
                            {
                                case "SelectedPeriodId":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_m_ViewModel_SelectedPeriodId(obj.SelectedPeriodId, DATA_CHANGED);
                                    }
                                    break;
                                }
                                case "ReferenceDate":
                                {
                                    if (obj != null)
                                    {
                                        bindings.Update_m_ViewModel_ReferenceDate(obj.ReferenceDate, DATA_CHANGED);
                                    }
                                    break;
                                }
                                default:
                                    break;
                            }
                        }
                    }
                }
                private global::Edam.WinUI.Controls.DataModels.DatePeriodModel cache_m_ViewModel = null;
                public void UpdateChildListeners_m_ViewModel(global::Edam.WinUI.Controls.DataModels.DatePeriodModel obj)
                {
                    if (obj != cache_m_ViewModel)
                    {
                        if (cache_m_ViewModel != null)
                        {
                            ((global::System.ComponentModel.INotifyPropertyChanged)cache_m_ViewModel).PropertyChanged -= PropertyChanged_m_ViewModel;
                            cache_m_ViewModel = null;
                        }
                        if (obj != null)
                        {
                            cache_m_ViewModel = obj;
                            ((global::System.ComponentModel.INotifyPropertyChanged)obj).PropertyChanged += PropertyChanged_m_ViewModel;
                        }
                    }
                }
                public void RegisterTwoWayListener_2(global::Microsoft.UI.Xaml.Controls.TextBlock sourceObject)
                {
                    sourceObject.RegisterPropertyChangedCallback(global::Microsoft.UI.Xaml.Controls.TextBlock.TextProperty, (sender, prop) =>
                    {
                        var bindingObj = this.TryGetBindingObject();
                        if (bindingObj != null)
                        {
                            bindingObj.UpdateTwoWay_2_Text();
                        }
                    });
                }
                public void RegisterTwoWayListener_3(global::Microsoft.UI.Xaml.Controls.CalendarDatePicker sourceObject)
                {
                    sourceObject.RegisterPropertyChangedCallback(global::Microsoft.UI.Xaml.Controls.CalendarDatePicker.DateProperty, (sender, prop) =>
                    {
                        var bindingObj = this.TryGetBindingObject();
                        if (bindingObj != null)
                        {
                            bindingObj.UpdateTwoWay_3_Date();
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
            case 1: // Controls\Activities\PeriodControl.xaml line 1
                {                    
                    global::Microsoft.UI.Xaml.Controls.UserControl element1 = (global::Microsoft.UI.Xaml.Controls.UserControl)target;
                    PeriodControl_obj1_Bindings bindings = new PeriodControl_obj1_Bindings();
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


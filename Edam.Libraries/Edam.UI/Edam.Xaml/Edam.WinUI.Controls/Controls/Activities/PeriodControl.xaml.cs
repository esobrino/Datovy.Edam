﻿using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
using Edam.UI.DataModel.Activities;
using Edam.WinUI.Controls.DataModels;

namespace Edam.WinUI.Controls.Activities
{
   public sealed partial class PeriodControl : UserControl
   {
      private DatePeriodModel m_ViewModel = new DatePeriodModel();
      public DatePeriodModel ViewModel
      {
         get { return m_ViewModel; }
      }
      public PeriodControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
      }
   }
}
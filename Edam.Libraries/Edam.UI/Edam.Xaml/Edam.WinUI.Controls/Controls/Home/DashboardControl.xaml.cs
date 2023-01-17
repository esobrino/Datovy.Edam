using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;

// The User Control item template is documented at https://go.microsoft.com/fwlink/?LinkId=234236
using Edam.WinUI.Controls.Projects;
using Edam.WinUI.Controls.ReferenceLists;
using Edam.WinUI.Controls.Application;
using Edam.Data.AssetProject;

namespace Edam.WinUI.Controls.Home
{
   public sealed partial class DashboardControl : UserControl
   {

      private static string m_HomeControl;

      // TODO: Allow setting up the DashBoard user control. now is hardcoded to ProjectViewControl
      public DashboardControl()
      {
         this.InitializeComponent();

         Project.InitializeProject();
         HomeControl.Children.Clear();
         var control = ApplicationHelper.GetHomeControl();
         if (control != null)
         {
            HomeControl.Children.Add(control);
         }
      }
   }
}

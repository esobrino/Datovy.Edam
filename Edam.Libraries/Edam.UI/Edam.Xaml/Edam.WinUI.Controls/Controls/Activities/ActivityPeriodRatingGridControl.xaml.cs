using Microsoft.UI.Xaml;
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
using Edam.WinUI.Controls.ViewModels;

namespace Edam.WinUI.Controls.Activities
{

   public sealed partial class ActivityPeriodRatingGridControl : UserControl
   {
      public static DependencyProperty ProgramIdProperty =
         DependencyProperty.Register("ProgramId", typeof(string), 
            typeof(ActivityPeriodRatingGridControl), 
            new PropertyMetadata(null));
      public static DependencyProperty PeriodIdProperty =
         DependencyProperty.Register("PeriodId", typeof(string),
            typeof(ActivityPeriodRatingGridControl),
            new PropertyMetadata(null));
      public static DependencyProperty EntityIdProperty =
         DependencyProperty.Register("EntityId", typeof(string),
            typeof(ActivityPeriodRatingGridControl),
            new PropertyMetadata(null));

      private ActivityPeriodRatingViewModel m_ViewModel = 
         new ActivityPeriodRatingViewModel();

      public ActivityPeriodRatingViewModel ViewModel
      {
         get { return m_ViewModel; }
         set { m_ViewModel = value; }
      }

      public string ProgramId
      {
         get { return (string)GetValue(ProgramIdProperty); }
         set
         {
            SetValue(ProgramIdProperty, value);
            ViewModel.ProgramId = value;
            ViewModel.FindByProgramPeriod();
         }
      }

      public string PeriodId
      {
         get { return (string)GetValue(PeriodIdProperty); }
         set
         {
            SetValue(PeriodIdProperty, value);
            ViewModel.PeriodId = value;
            ViewModel.FindByProgramPeriod();
         }
      }

      public string EntityId
      {
         get { return (string)GetValue(EntityIdProperty); }
         set
         {
            SetValue(EntityIdProperty, value);
            ViewModel.EntityId = value;
         }
      }

      public ActivityPeriodRatingGridControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
      }
   }

}

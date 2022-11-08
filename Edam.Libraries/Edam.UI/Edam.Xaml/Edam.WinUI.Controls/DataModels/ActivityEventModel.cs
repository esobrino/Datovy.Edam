using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.DataObjects.References;
using Edam.Helpers;
using Edam.DataObjects.ViewModels;

namespace Edam.WinUI.Controls.DataModels
{

   public class ActivityEventModel : ObservableObject, IMenuView
   {

      public IMenuItemParent ParentMenu { get; set; }

      public DatePeriodModel DatePeriod { get; set; } = new DatePeriodModel();

      public void SetState(object state)
      {
         
      }

   }

}

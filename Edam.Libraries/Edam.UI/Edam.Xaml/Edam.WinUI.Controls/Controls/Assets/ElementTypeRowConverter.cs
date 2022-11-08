using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI;

// -----------------------------------------------------------------------------
using Edam.Data.AssetSchema;
using Edam.Data.Asset;
using Microsoft.UI.Xaml.Media;
using Edam.WinUI.Controls.Common;
using Microsoft.UI.Xaml.Data;

namespace Edam.WinUI.Controls.Assets
{

   public class ElementTypeRowConverter : IValueConverter
   {
      public object Convert(object item, Type targetType, object parameter,
         string culture)
      {
         ElementType data = (ElementType)item;

         Brush brush = null;
         switch (data)
         {
            case Data.Asset.ElementType.type:
               brush = Colour.BrushFromHex("#F2F2FF");
               break;
            case Data.Asset.ElementType.enumerator:
               brush = Colour.BrushFromHex("#F8F8F8");
               break;
            default:
               brush = Colour.BrushFromHex("White");
               break;
         }
         return brush;
      }

      public object ConvertBack(object value, Type targetType,
         object parameter, string culture)
      {
         return null;
      }
   }

}

using System;
using System.Collections.Generic;
using System.Globalization;

using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI;

namespace Edam.WinUI.Common
{
   public class RecordStatusToColorConverter : IValueConverter
   {
      public object Convert(object value, Type targetType, object parameter,
         string culture)
      {
         string val = value == null ? string.Empty : value.ToString();
         switch (val)
         {
            case "A":
               return new SolidColorBrush(Colors.Transparent);
            case "D":
               return new SolidColorBrush(Colors.SkyBlue);
            case "I":
               return new SolidColorBrush(Colors.LightGray);
            default:
               return new SolidColorBrush(Colors.LightSteelBlue);
         }
      }
      public object ConvertBack(object value, Type targetType,
         object parameter, string culture)
      {
         return null;
      }

   }
}

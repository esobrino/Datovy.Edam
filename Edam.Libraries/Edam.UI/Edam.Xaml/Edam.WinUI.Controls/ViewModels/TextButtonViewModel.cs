using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Helpers;

namespace Edam.Uwp.ViewModels
{

   public class TextButtonViewModel : ObservableObject
   { 
      private string m_Texto;

      public string Texto
      {
         get { return m_Texto; }
         set
         {
            if (m_Texto != value)
            {
               m_Texto = value;
               OnPropertyChanged("Texto");
            }
         }
      }

   }

}

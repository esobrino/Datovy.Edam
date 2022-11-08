using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Edam.Helpers;
using Edam.DataObjects;
using Edam.DataObjects.References;

namespace Edam.UI.DataModel.References
{

   public class ReferenceItemViewModel<T> : ObservableObject
   {

      private ReferenceItem<T> m_Reference;

      public T Item
      {
         get { return m_Reference.Item; }
         set { m_Reference.Item = value; }
      }

      public ReferenceInfo Reference
      {
         get { return m_Reference; }
         set { m_Reference.Copy(value); }
      }

      public DateTime? ReferenceDate
      {
         get { return m_Reference.ReferenceDate; }
         set
         {
            if (m_Reference.ReferenceDate != value)
            {
               m_Reference.ReferenceDate = value;
               OnPropertyChanged(nameof(ReferenceDate));
            }
         }
      }
      public ReferenceType ReferenceType
      {
         get { return m_Reference.ReferenceType; }
         set
         {
            if (m_Reference.ReferenceType != value)
            {
               m_Reference.ReferenceType = value;
               OnPropertyChanged(nameof(ReferenceType));
            }
         }
      }
      public String ReferenceId
      {
         get { return m_Reference.ReferenceId; }
         set
         {
            if (m_Reference.ReferenceId != value)
            {
               m_Reference.ReferenceId = value;
               OnPropertyChanged(nameof(ReferenceId));
            }
         }
      }
      public String ReferenceDescription
      {
         get { return m_Reference.ReferenceDescription; }
         set
         {
            if (m_Reference.ReferenceDescription != value)
            {
               m_Reference.ReferenceDescription = value;
               OnPropertyChanged(nameof(ReferenceDescription));
            }
         }
      }

      public ReferenceItemViewModel()
      {
         m_Reference = new ReferenceItem<T>();
      }

   }

}

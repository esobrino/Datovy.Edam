using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;

// -----------------------------------------------------------------------------
using Edam.Helpers;
using Edam.DataObjects.DataCodes;

namespace Edam.WinUI.Controls.ViewModels
{

   public class CodeValueListViewModel : ObservableObject
   {

      public string CodeSetKey { get; set; }
      private ObservableCollection<DataCodeInfo> m_Items;
      public ObservableCollection<DataCodeInfo> Items
      {
         get { return m_Items; }
         set
         {
            if (m_Items != value)
            {
               m_Items = value;
               OnPropertyChanged(nameof(Items));
            }
         }
      }

      public CodeValueListViewModel()
      {
         Items = new ObservableCollection<DataCodeInfo>();
      }

      public DataCodeInfo Find(string codeId)
      {
         foreach(DataCodeInfo item in Items)
         {
            if(item.CodeId == codeId)
            {
               return item;
            }
         }
         return null;
      }

      public void SetItems(List<DataCodeInfo> items)
      {
         if (items == null)
         {
            return;
         }
         Items.Clear();
         foreach (DataCodeInfo item in items)
         {
            Items.Add(item);
         }

         if (String.IsNullOrWhiteSpace(CodeSetKey))
         {
            return;
         }
         Application.ApplicationCode.CacheSet(CodeSetKey, this);
      }
   }

}

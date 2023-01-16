using System;
using System.Collections.Generic;

// -----------------------------------------------------------------------------

namespace Edam.Data.AssetSchema
{

   /// <summary>
   /// This is defines the headers list to be used, basically is a list of 
   /// column header names.
   /// </summary>
   public class AssetColumnsInfo
   {

      private readonly List<AssetColumnItemInfo> m_Headers =
         new List<AssetColumnItemInfo>();

      public List<AssetColumnItemInfo> Headers
      {
         get { return m_Headers; }
      }

      public AssetColumnsInfo()
      {
      }

      /// <summary>
      /// Find a column header name in existing list.
      /// </summary>
      /// <param name="name">name to find</param>
      /// <returns>instance of an Asset Column Item is returned</returns>
      public AssetColumnItemInfo Find(string name)
      {
         return m_Headers.Find((x) => x.Name == name);
      }

      /// <summary>
      /// Add a column header name.
      /// </summary>
      /// <param name="name">name to add</param>
      /// <returns>instance of column-item is returned</returns>
      public AssetColumnItemInfo Add(string name)
      {
         AssetColumnItemInfo itm = Find(name);
         if (itm == null)
         {
            itm = new AssetColumnItemInfo
            {
               Name = name,
               Index = m_Headers.Count
            };
            m_Headers.Add(itm);
         }
         return itm;
      }

      /// <summary>
      /// Add all given Column Items as column headers.
      /// </summary>
      /// <param name="items">list of column-items to add</param>
      public void Add(List<AssetColumnItemInfo> items)
      {
         foreach (var i in items)
            Add(i.Name);
      }

      /// <summary>
      /// Get headers as list of strings...
      /// </summary>
      /// <returns></returns>
      public List<string> ToList()
      {
         var list = new List<string>();
         foreach(var i in Headers)
         {
            list.Add(i.Name);
         }
         return list;
      }

   }

}

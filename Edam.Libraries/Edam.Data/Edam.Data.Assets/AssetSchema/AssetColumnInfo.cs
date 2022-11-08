using System;
using System.Collections.Generic;

// -----------------------------------------------------------------------------

namespace Edam.Data.AssetSchema
{

   public class AssetColumnInfo
   {

      private readonly List<AssetColumnItemInfo> m_Headers =
         new List<AssetColumnItemInfo>();

      public List<AssetColumnItemInfo> Headers
      {
         get { return m_Headers; }
      }

      public AssetColumnInfo()
      {
      }

      public AssetColumnItemInfo Find(string name)
      {
         return m_Headers.Find((x) => x.Name == name);
      }

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

      public void Add(List<AssetColumnItemInfo> items)
      {
         foreach (var i in items)
            Add(i.Name);
      }

   }

}

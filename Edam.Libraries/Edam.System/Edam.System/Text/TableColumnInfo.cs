using System;
using System.Collections.Generic;

// -----------------------------------------------------------------------------

namespace Edam.Text
{

   /// <summary>
   /// This is defines the headers list to be used, basically is a list of 
   /// column header names.
   /// </summary>
   public class TableColumnsInfo
   {

      private readonly List<TableColumnInfo> m_Headers =
         new List<TableColumnInfo>();

      public List<TableColumnInfo> Headers
      {
         get { return m_Headers; }
      }

      public TableColumnsInfo()
      {
      }

      /// <summary>
      /// Find a column header name in existing list.
      /// </summary>
      /// <param name="name">name to find</param>
      /// <returns>instance of an Asset Column Item is returned</returns>
      public TableColumnInfo Find(string name)
      {
         return m_Headers.Find((x) => x.Name == name);
      }

      /// <summary>
      /// Add a column header name.
      /// </summary>
      /// <param name="name">name to add</param>
      /// <returns>instance of column-item is returned</returns>
      public TableColumnInfo Add(string name)
      {
         TableColumnInfo itm = Find(name);
         if (itm == null)
         {
            itm = new TableColumnInfo
            {
               Name = name,
               Index = m_Headers.Count
            };
            m_Headers.Add(itm);
         }
         return itm;
      }

      /// <summary>
      /// Add header column...
      /// </summary>
      /// <param name="index">column index</param>
      /// <param name="name">column name</param>
      /// <param name="hidden">true if hidden</param>
      /// <param name="styleNo">stype No</param>
      /// <returns></returns>
      public TableColumnInfo Add(
         int index, string name, bool hidden, uint styleNo)
      {
         TableColumnInfo itm = Find(name);
         if (itm == null)
         {
            itm = new TableColumnInfo
            {
               Name = name,
               Index = index,
               Hidden = hidden,
               StyleNo = styleNo
            };
            m_Headers.Add(itm);
         }
         return itm;
      }


      /// <summary>
      /// Add all given Column Items as column headers.
      /// </summary>
      /// <param name="items">list of column-items to add</param>
      public void Add(List<TableColumnInfo> items)
      {
         foreach (var i in items)
            Add(i.Name);
      }

      /// <summary>
      /// Given a comma delimited header in the form header1, header2, ...
      /// parse it and add it
      /// </summary>
      /// <param name="header"></param>
      public List<TableColumnInfo> AddCommaDelimitedHeader(
         string header, bool hidden = false, uint styleNo = 0U)
      {
         List<TableColumnInfo> items = new List <TableColumnInfo>();
         string[] list = header.Split(",");
         int indx = 0;
         foreach (var item in list)
         {
            items.Add(new TableColumnInfo() 
            { 
               Index = indx, Name = item, Hidden = hidden, StyleNo = styleNo
            });
            indx++;
         }

         m_Headers.AddRange(items);

         return items;
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

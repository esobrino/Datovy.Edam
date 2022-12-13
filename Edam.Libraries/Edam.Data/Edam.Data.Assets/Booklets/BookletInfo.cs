using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using Newtonsoft.Json.Serialization;

// -----------------------------------------------------------------------------
using Edam.Serialization;
using Edam.TextParse;
using Edam.Data.Asset;
using Newtonsoft.Json;

namespace Edam.Data.Booklets
{

   public enum BookletEventType
   {
      Unknown = 0,
      Process = 1
   }

   public class ProcessCellArgs : EventArgs
   {
      public BookletEventType EventType { get; set; }
      public BookletCellInfo Cell { get; set; }
   }

   public interface IBookCellView
   {
      BookletCellInfo GetCell();
      void SetCell(BookletCellInfo cell);

      string GetInputText();
      string GetOutputText();

      void SetInputText(string text);
      void SetOutputText(string text);

      object Instance { get; }
   }

   delegate void ProcessCellEvent(object sender, ProcessCellArgs args);

   public enum BookletCellType
   {
      Unknown = 0,
      Code = 1,
      Text = 2
   }

   public enum BookletTextType
   {
      Unknown = 0,
      Text = 1,
      Html = 2,
      Markdown = 3,
      RTF = 4,

      SQL = 20,
      JSONata = 21,
      Phython = 22
   }

   /// <summary>
   /// Booklet Cell details.
   /// </summary>
   public class BookletCellInfo
   {
      public string BookletId { get; set; }
      public string CellId { get; set; } = Guid.NewGuid().ToString();
      public string ReferenceId { get; set; }

      /// <summary>
      /// Cell Type that could be: Text or Code.
      /// </summary>
      public BookletCellType CellType { get; set; } = BookletCellType.Unknown;

      /// <summary>
      /// Cell content type such as: Text, Html, MD, SQL, JSONATA or other
      /// </summary>
      public BookletTextType TextType { get; set; } = BookletTextType.Text;

      public string Text { get; set; }

      /// <summary>
      /// an instance of a UI control that is used to hold text or code.
      /// </summary>
      [JsonIgnore]
      public IBookCellView Instance { get; set; }
   }

   /// <summary>
   /// A Boolket is used to manage information about a collection of cells.
   /// </summary>
   /// <remarks>
   /// A booklet is defined by a collection of cells whose purpose is to
   /// document, define, or describe a mapping, transformation or an element.
   /// Code cells can be executed based on the underlying language.
   /// </remarks>
   public class BookletInfo
   {
      public string BookletId { get; set; } = Guid.NewGuid().ToString();
      public string Name { get; set; }

      /// <summary>
      /// Identify the related reference-object with its ID whose value may be
      /// a GUID or other unique identifier.
      /// </summary>
      public string ReferenceId { get; set; }

      public List<BookletCellInfo> Items { get; set; } =
         new List<BookletCellInfo>();

      [JsonIgnore]
      public BookletCellInfo SelectedCell { get; set; }

   }

   public class BookEventArgs : EventArgs
   {

   }

   public interface IBooklet
   {
      BookletInfo Booklet { get; set; }
   }

   /// <summary>
   /// A Book details is used to hold information about a collection of 
   /// booklets.
   /// </summary>
   public class BookInfo
   {
      public string BookId { get; set; } = Guid.NewGuid().ToString();
      public string Name { get; set; }
      public List<BookletInfo> Items { get; set; } = new List<BookletInfo>();

      private NamespaceInfo m_Namespace = null;
      public NamespaceInfo Namespace
      {
         get { return m_Namespace; }
         set
         {
            m_Namespace = value;
         }
      }

      public BookInfo()
      {

      }

      //public BookInfo(NamespaceInfo ns)
      //{
      //   if (ns == null || !ns.IsWellFormedUriString)
      //   {
      //      throw new Exception(
      //         "BookInfo constructure expects a valid namespace");
      //   }
      //   m_Namespace = ns;
      //}

      public BookletInfo Find(string bookletId)
      {
         return Items.Find((x) => x.BookletId == bookletId);
      }

   }

}

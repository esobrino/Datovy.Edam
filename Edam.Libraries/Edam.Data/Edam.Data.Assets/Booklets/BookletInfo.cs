using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Serialization;
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
      string GetInputText();
      string GetOutputText();

      void SetInputText(string text);
      void SetOutputText(string text);
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

   public class BookletCellInfo
   {
      public string ParentBookletId { get; set; }
      public string CellId { get; set; } = Guid.NewGuid().ToString();

      /// <summary>
      /// Cell Type that could be: Text or Code.
      /// </summary>
      public BookletCellType CellType { get; set; } = BookletCellType.Unknown;

      /// <summary>
      /// Cell content type such as: Text, Html, MD, SQL, JSONATA or other
      /// </summary>
      public BookletTextType TextType { get; set; } = BookletTextType.Text;

      public string Text { get; set; }

      [JsonIgnore]
      public IBookCellView Instance { get; set; }
   }

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

   public class BookInfo
   {
      public string Name { get; set; }
      public List<BookletInfo> Items { get; set; } = new List<BookletInfo>();

      public BookletInfo Find(string bookletId)
      {
         return Items.Find((x) => x.BookletId == bookletId);
      }
   }

}

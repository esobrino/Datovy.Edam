using DocumentFormat.OpenXml.Bibliography;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.
using Edam.WinUI.Controls.ViewModels;
using Edam.Data.Booklets;

namespace Edam.WinUI.Controls.Booklets
{

   public sealed partial class BookletCodeCellControl : UserControl, 
      IBooklet, IBookCellView
   {

      private BookViewModel m_ViewModel;
      public BookViewModel ViewModel
      {
         get { return m_ViewModel; }
         set
         {
            m_ViewModel = value;
            DataContext = value;
            PanelControl.ViewModel = value;
         }
      }

      public FramePanelControl FramePanel
      {
         get { return PanelControl; }
      }

      public BookletInfo Booklet { get; set; } = new BookletInfo();

      public BookletCodeCellControl()
      {
         this.InitializeComponent();
      }

      public BookletCellInfo GetCell()
      {
         return ViewModel.Cell;
      }

      public void SetCell(BookletCellInfo cell)
      {
         ViewModel.Cell = cell;
      }

      public string GetInputText()
      {
         return CodeInputPanel.Text;
      }

      public string GetOutputText()
      {
         return CodeOutputPanel.Text;
      }

      public void SetInputText(string text)
      {
         CodeInputPanel.Text = text;
      }

      public void SetOutputText(string text)
      {
         CodeOutputPanel.Text = text;
      }

   }

}

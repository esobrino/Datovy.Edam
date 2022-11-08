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
using Edam.WinUI.Controls.DataModels;

namespace Edam.WinUI.Controls.Editors
{

   public sealed partial class CodeEditorControl : UserControl
   {

      private CodeEditorViewModel m_ViewModel = new CodeEditorViewModel();
      public CodeEditorViewModel ViewModel
      {
         get { return m_ViewModel; }
      }
      public TextDocumentModel TextDocument
      {
         get { return m_ViewModel.TextDocument; }
      }

      public CodeEditorControl()
      {
         this.InitializeComponent();
         DataContext = m_ViewModel;
         m_ViewModel.CodeEditor = CodeEditor;
      }

   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetMapping;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;
using Edam.Helpers;
using Edam.WinUI.Controls.DataModels;
using DocumentFormat.OpenXml.Office2019.Drawing.Model3D;
using Edam.Data.Asset;
using DocumentFormat.OpenXml.Wordprocessing;
using DocumentFormat.OpenXml.EMMA;
using Edam.Data.Books;
using System.Data.SqlClient;
using Edam.Data.AssetUseCases;
using Edam.Json.JsonQuery;
using Edam.Data.Assets.Lexicon;
using Edam.Data.Lexicon;

namespace Edam.WinUI.Controls.DataModels
{

   /// <summary>
   /// Data Map Instance...
   /// </summary>
   public class DataMapInstance
   {

      private AssetConsoleArgumentsInfo m_Arguments;
      public AssetConsoleArgumentsInfo Arguments
      {
         get { return m_Arguments; }
      }

      public object Instance { get; set; }
      public DataTreeModel TreeModel { get; set; }
      public string JsonInstanceSample { get; set; }

      private ILexiconData m_Lexicon = null;
      public ILexiconData Lexicon
      {
         get { return m_Lexicon; }
      }

      public DataTreeEvent ManageNotification { get; set; } = null;

      /// <summary>
      /// Given information about the arguments, setup the data instance 
      /// context.
      /// </summary>
      public void SetupContext(AssetConsoleArgumentsInfo arguments)
      {
         m_Arguments = arguments;
         if (arguments.Lexicon == null || 
            String.IsNullOrWhiteSpace(arguments.Lexicon.LexiconId))
         {
            return;
         }
         m_Lexicon = LexiconHelper.GetLexiconDataInstance();
         var data = m_Lexicon.EnsureLoad(arguments);
      }

   }

}

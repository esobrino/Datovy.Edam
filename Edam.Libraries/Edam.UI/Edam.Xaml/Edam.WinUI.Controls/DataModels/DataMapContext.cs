using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetProject;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;
using Edam.Helpers;
using Edam.WinUI.Controls.DataModels;
using System.Collections.ObjectModel;
using Windows.Devices.Bluetooth.Advertisement;
using Edam.Data.Assets.AssetConsole;
using DocumentFormat.OpenXml.Office2019.Drawing.Model3D;
using Microsoft.UI.Xaml.Input;

namespace Edam.WinUI.Controls.DataModels
{

   public enum DataTreeEventType
   {
      Unknown = 0,
      ItemSelected = 1,
      DoubleTapped = 2,
      KeyPressed = 3
   }

   public class DataTreeEventArgs
   {
      public DataMapItemType MapType { get; set; }
      public DataTreeEventType Type { get; set; }
      public DataMapContext Context { get; set; }
      public KeyEventData KeyEventData { get; set; }
      public object DataItem { get; set; }
   }

   public delegate void DataTreeEvent(object sender, DataTreeEventArgs args);

   public class DataInstance
   {
      public AssetConsoleArgumentsInfo Arguments { get; set; }
      public object Instance { get; set; }
      public DataTreeModel TreeModel { get; set; }
      public string JsonInstanceSample { get; set; }

      public DataTreeEvent ManageNotification { get; set; } = null;
   }

   public class DataMapContext
   {

      private KeyEventData m_KeyEventData;
      public KeyEventData KeyEventData
      {
         get { return m_KeyEventData; }
      }
      public bool IsControlKeyPressed
      {
         get 
         { 
            return m_KeyEventData == null ? 
               false : m_KeyEventData.IsControlKeyPressed;
         }
      }

      public AssetMapUseCase UseCase { get; set; }

      public DataInstance Source { get; set; }
      public DataInstance Target { get; set; }

      public DataTreeEvent ManageNotification { get; set; }

      public DataMapContext()
      {
         UseCase = new AssetMapUseCase();
      }

      public void SetKeyEventData(KeyEventData data)
      {
         m_KeyEventData = data;
         if (ManageNotification != null)
         {
            DataTreeEventArgs args = new DataTreeEventArgs();
            args.Type = DataTreeEventType.KeyPressed;
            args.KeyEventData = data;
            args.Context = this;
            ManageNotification(this, args);
         }
      }

      public void SetKeyEventData(KeyRoutedEventArgs e)
      {
         SetKeyEventData(new KeyEventData(e));
      }

   }

}

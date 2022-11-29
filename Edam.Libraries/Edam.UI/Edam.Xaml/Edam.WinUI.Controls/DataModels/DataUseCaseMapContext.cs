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
using Edam.Data.Asset;

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
      public DataUseCaseMapContext Context { get; set; }
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

   /// <summary>
   /// Data Use Case Map Context to identify left (A) and right (B) sources.
   /// </summary>
   public class DataUseCaseMapContext
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

      public AssetUseCaseMap m_UseCase { get; set; }
      public AssetUseCaseMap UseCase
      {
         get { return m_UseCase; }
      }

      public DataInstance Source { get; set; }
      public DataInstance Target { get; set; }

      public DataTreeEvent ManageNotification { get; set; }

      public DataUseCaseMapContext(NamespaceInfo ns)
      {
         m_UseCase = new AssetUseCaseMap(ns);
      }

      /// <summary>
      /// Is given URI same as current context URI?
      /// </summary>
      /// <param name="ns">namespace with URI to compare</param>
      /// <returns>true is returned if same</returns>
      public bool IsSameContext(NamespaceInfo ns)
      {
         if (Source == null)
         {
            return false;
         }
         return Source.Arguments.Namespace.Uri.AbsolutePath ==
            ns.Uri.AbsolutePath;
      }

      /// <summary>
      /// Notify a Key pressed event.
      /// </summary>
      /// <param name="data"></param>
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

      /// <summary>
      /// Notify a Key pressed event.
      /// </summary>
      /// <param name="e"></param>
      public void SetKeyEventData(KeyRoutedEventArgs e)
      {
         SetKeyEventData(new KeyEventData(e));
      }

      /// <summary>
      /// Setup Mapping given a MapItem that was configured in Arguments
      /// specifying source (A) and through the Parent Process Name
      /// fetch the details about the target.  If no Target has been identify
      /// it is assumed that it is self.
      /// </summary>
      /// <remarks>
      /// Find definition of the target within the Argumenrs JSON 
      /// "Process.MapItem" whose type is "Target" and using the 
      /// "ParentProcessName" find the Arguments of the target (B).
      /// 
      /// For example:
      /// 
      /// "Process": {
      ///    "RecordId": null,
      ///    "Name": "OC.Source.ToAssets",
      ///    "OrganizationId": "Datovy",
      ///    "OrganizationDomainUri": null,
      ///    "ProcedureName": "DdlImportToAssets",
      ///    "ProcedureTag": "DDL.DdlImportFileReader",
      ///    "SchemaType": 1,
      ///    "MapItem": [
      ///       {
      ///          "Type": "Target",
      ///          "Name": "",
      ///          "ParentProcessName": "OC.Target.ToAssets"
      ///       }
      ///    ]
      /// }
      /// 
      /// </remarks>
      /// <param name="context">use case map context to set</param>
      /// <returns>updated context specifying the Target is returned</returns>
      public static DataUseCaseMapContext SetUpMapping(
         DataUseCaseMapContext context)
      {
         // get map-item from current project arguments...
         var mapItems = context.Source.Arguments.Process.MapItem;
         if (mapItems == null || mapItems.Count == 0)
         {
            // try to load self
            var selfArgs = ProjectContext.GetArgumentsByProcessName(
               context.Source.Arguments.Process.Name);
            context.Target.Arguments = selfArgs;
            return selfArgs == null ? null : context;
         }

         // try to find target item
         DataMapItemInfo item = null;
         foreach (var m in mapItems)
         {
            if (m.Type == DataMapItemType.Target)
            {
               item = m;
               break;
            }
         }
         if (item == null)
         {
            return null;
         }

         // item was found... setup target arguments
         var args = ProjectContext.GetArgumentsByProcessName(
            item.ParentProcessName);
         context.Target.Arguments = args;
         return context;
      }

   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using Windows.Devices.Bluetooth.Advertisement;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Controls;
using Newtonsoft.Json.Serialization;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Data.AssetSchema;
using Edam.Data.AssetMapping;
using Edam.InOut;
using Edam.WinUI.Controls.ViewModels;
using Edam.Helpers;
using Edam.WinUI.Controls.DataModels;
using Edam.Data.Assets.AssetConsole;
using DocumentFormat.OpenXml.Office2019.Drawing.Model3D;
using Edam.Data.Asset;
using DocumentFormat.OpenXml.Wordprocessing;
using DocumentFormat.OpenXml.EMMA;
using Edam.Data.Books;
using System.Data.SqlClient;
using Edam.Data.AssetUseCases;

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

   /// <summary>
   /// Data Use Case Map Context to identify left (A) and right (B) sources.
   /// </summary>
   public class DataMapContext : ObservableObject
   {

      #region -- 1.00 - Properties, and Fields declaration

      private string m_ContextId = Guid.NewGuid().ToString();
      public string ContextId
      {
         get { return m_ContextId; }
      }

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

      public AssetUseCaseMap m_UseCase;
      public AssetUseCaseMap UseCase
      {
         get { return m_UseCase; }
         set { m_UseCase = value; }
      }

      public DataInstance Source { get; set; }
      public DataInstance Target { get; set; }

      public DataTreeEvent ManageNotification { get; set; }

      public BookViewModel BookModel { get; set; }
      public ListView BookletViewList { get; set; }

      /// <summary>
      /// Source (Map) Items
      /// </summary>
      private ObservableCollection<MapItemInfo> m_SourceItems;
      public ObservableCollection<MapItemInfo> SourceItems
      {
         get { return m_SourceItems; }
         set
         {
            if (m_SourceItems != value)
            {
               m_SourceItems = value;
               OnPropertyChanged(nameof(SourceItems));
            }
         }
      }

      /// <summary>
      /// Target (Map) Items
      /// </summary>
      private ObservableCollection<MapItemInfo> m_TargetItems;
      public ObservableCollection<MapItemInfo> TargetItems
      {
         get { return m_TargetItems; }
         set
         {
            if (m_TargetItems != value)
            {
               m_TargetItems = value;
               OnPropertyChanged(nameof(TargetItems));
            }
         }
      }

      /// <summary>
      /// Selected Map Item Info / details
      /// </summary>
      public MapItemInfo SelectedItem { get; set; }

      public MapItemInfo SelectedSourceItem { get; set; }
      public MapItemInfo SelectedTargetItem { get; set; }

      public IMapLanguageInfo LanguageInstance { get; set; } =
         MapLanguageHelper.GetInstance();

      #endregion
      #region -- 1.50 - Constructure

      public DataMapContext()
      {
         m_UseCase = new AssetUseCaseMap();
         SourceItems = new ObservableCollection<MapItemInfo>();
         TargetItems = new ObservableCollection<MapItemInfo>();
      }

      #endregion
      #region -- 4.00 - Manage Context 

      /// <summary>
      /// Create context...
      /// </summary>
      /// <param name="context">previous context (optional) use null if unknown
      /// </param>
      /// <param name="source">source UI control instance</param>
      /// <param name="arguments">current arguments</param>
      public static DataMapContext CreateContext(
         DataMapContext context,
         Object source, AssetConsoleArgumentsInfo arguments)
      {
         DataMapContext newContext = null;

         // the source UI instance is always be the same regardless of context
         if (source == null)
         {
            if (context != null && context.Source != null)
            {
               source = context.Source.Instance;
            }
         }

         // create context... if needed.
         if (context == null ||
            context.Source.Arguments.NamespaceUri != arguments.NamespaceUri)
         {
            // try to find Use Case...
            var useCase = AssetUseCaseMap.FromUriVersion(
               arguments.NamespaceUri, context == null ? 
                  null : context.UseCase.Name, arguments.ProjectVersionId);

            // Use Case was not found in storage
            DataInstance sourceInstance = new DataInstance
            {
               Arguments = ProjectContext.Arguments,
               Instance = source
            };

            newContext = new DataMapContext()
            {
               Source = sourceInstance,
               Target = new DataInstance()
            };
            newContext.UseCase.SetNamespace(arguments.Namespace);

            if (useCase != null)
            {
               newContext.UseCase = useCase;
            }

            newContext.UseCase.Project = arguments.Project;
            newContext.UseCase.SourceUriText = arguments.NamespaceUri;
         }
         else
         {
            newContext = context;
         }

         return newContext;
      }

      /// <summary>
      /// Based on current project arguments, setup use case...
      /// </summary>
      /// <param name="arguments"></param>
      public DataMapContext SetupUseCase(
         AssetConsoleArgumentsInfo arguments)
      {
         // init context if current project is not in context...
         var context = CreateContext(this, Source.Instance, Source.Arguments);

         return context;
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

      #endregion
      #region -- 4.00 - Key Event Support

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

      #endregion
      #region -- 4.00 - Tree (Source or Target) ItemSelected Support

      /// <summary>
      /// Get Map Item
      /// </summary>
      /// <param name="instance">source or target instance</param>
      /// <param name="name">item name</param>
      /// <param name="path">item path</param>
      /// <returns>instance of MapItemInfo is returned</returns>
      public MapItemInfo GetMapItem(
         DataInstance instance, string name, string path, 
         MapItemInfo item = null)
      {
         MapItemInfo e = item ?? new MapItemInfo();
         e.Name = name;
         e.Path = path;
         string dpath = LanguageInstance.GetPath(path);
         e.DisplayPath = dpath;
         e.DisplayFullPath = LanguageInstance.Join(
            instance.TreeModel.RootName, dpath);
         return e;
      }

      /// <summary>
      /// Refresh the (Map) Items lists...
      /// </summary>
      public void RefreshMapItems(
         ObservableCollection<MapItemInfo> items, List<MapItemInfo> source,
         DataInstance instance)
      {
         items.Clear();
         foreach(var sitem in source)
         {
            GetMapItem(instance, sitem.Name, sitem.Path, sitem);
            items.Add(sitem);
         }
      }

      /// <summary>
      /// An item in a view tree has been selected.
      /// </summary>
      /// <remarks>
      /// See the AssetMapItemViewMode for details.
      /// </remarks>
      /// <param name="type">identify if it is the source or target tree</param>
      /// <param name="item">the item that has been selected</param>
      public void SetSelectedMapItem(
         DataMapItemType type, MapItemInfo item)
      {
         ObservableCollection<MapItemInfo> items = null;
         List<MapItemInfo> mapItems = null;
         DataInstance instance = null;
         switch(type)
         {
            case DataMapItemType.Source:
               SelectedSourceItem = item;
               mapItems = UseCase.SelectedMapItem.SourceElement;
               items = SourceItems;
               instance = Source;
               break;
            case DataMapItemType.Target:
               SelectedTargetItem = item;
               mapItems = UseCase.SelectedMapItem.TargetElement;
               items = TargetItems;
               instance = Target;
               break;
            default:
               break;
         }

         SelectedItem = item;

         // refresh side panel Map Source and Target Items
         RefreshMapItems(items, mapItems, instance);

         // clear existing Book/Booklet items and add those for selected item
         BookModel.Model.ClearAll();

         // try to find matching item.ItemId == Booklet...ReferenceId item
         UseCase.Book.SelectedBooklet = null;
         BookModel.Model.SelectedBooklet = null;
         int bcount = UseCase.Book.Items.Count;
         int ccount;
         for (var i = 0; i <  bcount; i++)
         {
            var booklet = UseCase.Book.Items[i];
            ccount = booklet.Items.Count;

            for (var c = 0; c < ccount; c++)
            {
               var cell = booklet.Items[c];
               foreach(var mapItem in mapItems)
               {
                  if (cell.ReferenceId == mapItem.ItemId)
                  {
                     UseCase.Book.SelectedBooklet = booklet;
                     BookModel.Model.SelectedBooklet = booklet;

                     var ctrlCell = BookModel.Model.AddControl(
                        BookModel, cell.CellType, cell.ReferenceId, cell);
                  }
               }
            }
         }
      }

      #endregion
      #region -- 4.00 - Setup Use Case

      /// <summary>
      /// Refresh Tree given a Use Case going through all nodes and finding all
      /// mapped items.
      /// </summary>
      /// <param name="map">use case map information</param>
      /// <param name="tree">data tree model</param>
      public void RefreshTree(
         AssetUseCaseMap map, DataTreeModel tree, bool isSource = false)
      {
         List<MapItemInfo> list;
         foreach (var item in map.Items)
         {
            list = isSource ? item.SourceElement : item.TargetElement;
            foreach (var itemElement in list)
            {
               var node = DataTreeModel.Find(tree, itemElement.Path);
               if (node != null)
               {
                  node.IsVisited = true;
               }
            }
         }
      }

      /// <summary>
      /// Given a Use Case file path information or URI or resource details 
      /// set context.
      /// </summary>
      /// <param name="fileDetails">file detaqils</param>
      public void SetUseCaseContext(
         FileDetailInfo fileDetails, BookViewModel model)
      {
         BookModel = model;

         if (fileDetails == null)
         {
            return;
         }

         UseCase = AssetUseCaseMap.FromFile(fileDetails.Path);

         // update tree controls with use case information
         DataTreeModel.ClearVisited(Source.TreeModel);
         DataTreeModel.ClearVisited(Target.TreeModel);

         RefreshTree(UseCase, Source.TreeModel, true);
         RefreshTree(UseCase, Target.TreeModel);

         DataTreeModel.SetVisitedCount(Source.TreeModel);
         DataTreeModel.SetVisitedCount(Target.TreeModel);
      }

      /// <summary>
      /// Get Use Case Folder Path...
      /// </summary>
      /// <returns>returns the path</returns>
      public static string GetUseCaseFolderPath()
      {
         return ProjectContext.ProjectFolderPath + "/" +
            AssetUseCaseLog.GetUseCasesFolderName();
      }

      /// <summary>
      /// Save Use Case
      /// </summary>
      /// <param name="currentContext"></param>
      /// <returns></returns>
      public static DataMapContext SaveUseCase(
         DataMapContext currentContext)
      {
         // make sure we are in current project use case environement context
         var context = currentContext.SetupUseCase(
            ProjectContext.CurrentProject.CurrentArguments);

         if (String.IsNullOrWhiteSpace(context.UseCase.Name))
         {
            context.UseCase.Name = "UC_" + Guid.NewGuid().ToString();
         }

         string pfolder = GetUseCaseFolderPath();
         AssetUseCaseMap.ToFile(context.UseCase, pfolder,
            context.UseCase.SourceUriText, context.UseCase.VersionId);

         return context;
      }

      /// <summary>
      /// Prepare Use Case Report.
      /// </summary>
      /// <param name="currentContext"></param>
      public static void PrepareUseCaseReport(
         DataMapContext currentContext)
      {
         // make sure we are in current project use case environement context
         var context = currentContext.SetupUseCase(
            ProjectContext.CurrentProject.CurrentArguments);

         string pfolder = GetUseCaseFolderPath();
         var args = ProjectContext.CurrentProject.CurrentArguments;

         AssetUseCaseMap.ToUseCaseReport(args, pfolder);
      }

      #endregion
      #region -- 4.00 - Setup A and B Trees mapping resources...

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
      public static DataMapContext SetUpMapping(
         DataMapContext context)
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

      #endregion

   }

}


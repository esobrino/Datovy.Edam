using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Microsoft.UI.Xaml;

// -----------------------------------------------------------------------------
using Edam.Diagnostics;
using Edam.DataObjects.ViewModels;
using app = Edam.Application;
using Edam.DataObjects.ReferenceData;
using System.Collections.ObjectModel;
using Edam.DataObjects.Data;
using Edam.UI.DataModel.ReferenceData;
using Edam.WinUI.Controls.DataModels;
using uiapp = Edam.WinUI.Controls.Application;

using Edam.WinUI.Controls.Projects;
using Edam.WinUI.Controls.ReferenceLists;
using UIApp = Edam.UI.App;
using Windows.UI.Core;
using Windows.System;
using Windows.Storage;
using DocumentFormat.OpenXml.Wordprocessing;
using Edam.Data;
using System.IO;
using CommunityToolkit.WinUI.UI.Controls;
using Edam.Application;

namespace Edam.WinUI.Controls.Application
{

   // Looking for: FilePath or AbsolutePath or FileURI?
   //    find those in: ConfigurationHelper

   public class ApplicationHelper
   {

      #region -- 1.00 - Constants Properties and Fields

      public const string HOME_CONTROL = "HomeControl";
      private const string PROJECT_VIEW = "ProjectView";
      private const string REFERENCE_LIST_VIEW = "ReferenceListView";

      // TODO: put license in config file
      public const string REFERENCE_DATA = "Reference Data";

      public static string HomeControl { get; set; }

      private static IMenu m_ApplicationMenuControl;
      public static IMenu ApplicationMenuControl
      {
         get { return m_ApplicationMenuControl; }
      }

      private static Window m_MainWindow;
      public static Window MainWindow
      {
         get { return m_MainWindow; }
      }

      private static ApplicationLog m_ApplicationLog;
      public static ApplicationLog ApplicationLog
      {
         get { return m_ApplicationLog; }
      }

      public static ProjectDataModel ProjectInfo { get; set; }

      private static ObservableCollection<ReferenceDataTemplateInfo>
         m_ReferenceDataTemplates;
      public static ObservableCollection<ReferenceDataTemplateInfo> 
         ReferenceDataTemplates
      {
         get { return m_ReferenceDataTemplates; }
      }

      #endregion
      #region -- 4.00 - Helper methods, id home control, menu options... others

      /// <summary>
      /// Get Home Control stating what is the location of "Home" when user 
      /// selects the "Home" button.
      /// </summary>
      /// <returns>instance of an UIElement control is returned</returns>
      public static UIElement GetHomeControl()
      {
         HomeControl = app.AppSettings.GetSectionString(
            uiapp.ApplicationHelper.HOME_CONTROL);
         UIElement control = null;
         switch (HomeControl)
         {
            case REFERENCE_LIST_VIEW:
               control = new ReferenceListViewControl();
               break;
            default:
            case PROJECT_VIEW:
               var item = ApplicationHelper.Find(MenuOption.Projects);
               if (item == null)
               {
                  control = new ProjectViewerControl();
               }
               else
               {
                  control = item.Instance as UIElement;
               }
               break;
         }
         return control;
      }

      /// <summary>
      /// Every application has a single "Menu Control" interface.  The app 
      /// should call this method to set the shared menu control for the app.
      /// </summary>
      /// <param name="item">menu control instance</param>
      public static void SetApplicationMenuControl(IMenu item)
      {
         m_ApplicationMenuControl = item;
      }

      public static void PinLogin(object state)
      {
         GotoEventArgs a = new GotoEventArgs();
         a.MenuOption = MenuOption.PinLogin;
         a.State = state;
         m_ApplicationMenuControl.Goto(m_ApplicationMenuControl, a);
      }

      public static void ResetApplication()
      {
         // review data sources...
         UIApp.AppSettings.VerifySetConnectionString();

         // reset app now....
         GotoEventArgs a = new GotoEventArgs();
         a.MenuOption = MenuOption.ResetApplication;
         m_ApplicationMenuControl.Goto(m_ApplicationMenuControl, a);
      }

      public static void SetMenuOption(MenuOption option)
      {
         GotoEventArgs a = new GotoEventArgs();
         a.MenuOption = app.Session.IsUserLogged ? option : MenuOption.Login;
         m_ApplicationMenuControl.Goto(m_ApplicationMenuControl, a);
      }

      public static IMenuItem Find(MenuOption option)
      {
         return m_ApplicationMenuControl.Find(option);
      }

      #endregion
      #region -- 4.00 - Login and Logout

      public static void LoginApplication()
      {
         GotoEventArgs a = new GotoEventArgs();
         a.MenuOption = MenuOption.Login;
         m_ApplicationMenuControl.Goto(m_ApplicationMenuControl, a);
         Edam.Application.Session.LogoutUser();
      }

      public static void LogoutApplication()
      {
         GotoEventArgs a = new GotoEventArgs();
         a.MenuOption = MenuOption.Logout;
         m_ApplicationMenuControl.Goto(m_ApplicationMenuControl, a);
         Edam.Application.Session.LogoutUser();
      }

      #endregion
      #region -- 4.00 - Manage file templates...

      /// <summary>
      /// Load File Templates...
      /// </summary>
      /// <returns>Returns the loaded File Templates</returns>
      public static ResultsLog<List<ReferenceDataTemplateInfo>>
         LoadFileTemplates()
      {
         ResultsLog<List<ReferenceDataTemplateInfo>> results = 
            new ResultsLog<List<ReferenceDataTemplateInfo>>();
         string folderPath =
            app.AppSettings.GetString("ReferenceDataTemplatesFolder");
         if (String.IsNullOrWhiteSpace(folderPath))
         {
            // TODO: put label in resources...
            results.Failed("Didn't found Templates Folder as expected.");
            return results;
         }
         try
         {
            // add default templates
            m_ReferenceDataTemplates = 
               new ObservableCollection<ReferenceDataTemplateInfo>();
            ReferenceDataTemplateInfo t = new ReferenceDataTemplateInfo();

            t.Metadata = new ReferenceDataTemplateMetadata
            {
               TemplateName = "Reference Data",
               TemplateURI =
               "http://www.datovy.com/referencedata/template/" +
               "referencedata/v0r0",
               TemplateVersionId = "v0r0"
            };

            m_ReferenceDataTemplates.Add(t);

            // add file templates
            var reader = new ReferenceDataTemplateFileReader();
            results.Data = reader.FromFolder(folderPath);

            foreach(var i in results.Data)
            {
               m_ReferenceDataTemplates.Add(i);
            }

            results.Succeeded();
         }
         catch(Exception ex)
         {
            results.Failed(ex);
         }
         return results;
      }

      #endregion
      #region -- 4.00 - Manage Application Folders

      /// <summary>
      /// Get the Application Installed Location.
      /// </summary>
      /// <returns>Installed location is returned</returns>
      public static string GetApplicationInstalledLocation()
      {
         StorageFolder localFolder = 
            Windows.ApplicationModel.Package.Current.InstalledLocation;
         return localFolder.Path;
      }

      public static string GetLocalFolder()
      {
         StorageFolder localFolder = ApplicationData.Current.LocalFolder;
         return localFolder.Path;
      }

      public static void MoveToApplicationInstalledLocation()
      {
         string path = GetApplicationInstalledLocation();
         Directory.SetCurrentDirectory(path);
      }

      #endregion
      #region -- 4.00 - Connection String resolution

      /// <summary>
      /// Get Reference Data Connection String By (Default) Key.
      /// </summary>
      /// <remarks>
      /// Find the default reference data here:
      /// 
      /// "ReferenceData": {
      ///    "ConnectionStringKey": "RefDatalocal"
      /// },
      /// 
      /// Upon application initialization and after it has been installed and
      /// executed for the first time, check if this connection string is 
      /// available and ask for it if can't be found.
      /// </remarks>
      /// <returns>the connection string is returned</returns>
      public static string GetReferenceDataConnectionStringByKey()
      {
         string kstring = ReferenceDataHelper.GetConnectionStringKey();
         DataSourceInfo dataSource = DataSources.GetDataSource(kstring);
         return dataSource.ConnectionString;
      }

      #endregion
      #region -- 4.00 - Application Initialization support

      /// <summary>
      /// First time initialization of the application.
      /// </summary>
      public static void InitializeApplication()
      {
         string ilocation = GetApplicationInstalledLocation();

         // setup Code Editor path
         ViewModels.CodeEditorViewModel.GetDefaultCodeEditorUri(ilocation);

         // setup default project
         Data.AssetProject.Project.SetDefaultFullPath(ilocation);

         // setup app working directory
         MoveToApplicationInstalledLocation();

         app.Session.SessionId = Guid.NewGuid().ToString();
         app.Session.OrganizationId = AppSettings.GetDefaultOrganizationId();
         Edam.Security.SecuredKeysVault.OpenVault();
         Edam.WinUI.Helpers.DependencyInjectionHelper.
            InitializeDependencyInjectionService();
         app.Session.MessageBox = new Dialogs.DialogMessageBox();
      }

      /// <summary>
      /// First time initialization of the main window in the application.
      /// </summary>
      /// <param name="mainWindow"></param>
      public static void InitializeApplication(Window mainWindow)
      {
         m_MainWindow = mainWindow;
         ApplicationHelper.LoadFileTemplates();
         LocalDocumentStorageHelper.InitializeAll();
      }

      #endregion

   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

// -----------------------------------------------------------------------------
using config = Edam.Data.AssetManagement.Helpers.ConfigurationHelper;
using prj = Edam.Data.AssetProject;
using Edam.Data.Asset.Services;
using app = Edam.Application;
using Edam.Application;
using Edam.Data.Asset;

namespace Edam.Test.Library.Application
{

   public class ApplicationHelpers
   {
      public const string EDAM_STUDIO = "Edam.Studio";

      #region -- 4.00 - Manage Application Folders

      /// <summary>
      /// Get the Application Installed Location.
      /// </summary>
      /// <returns>Installed location is returned</returns>
      public static string GetApplicationInstalledLocation()
      {
         string consolePath =
            AppSettings.GetString(config.ASSET_CONSOLE_PATH);
         string fullPath = 
            (String.IsNullOrWhiteSpace(consolePath) ?
               "c:/prjs/" : consolePath);
         return config.GetAbsoluteAppDataPath(fullPath);
      }

      /// <summary>
      /// Get Application Data Location.
      /// </summary>
      /// <returns>the "MyDocuments" folder path is returned</returns>
      public static string GetApplicationDataLocation()
      {
         return Environment.GetFolderPath(
            Environment.SpecialFolder.MyDocuments);
      }

      #endregion

      /// <summary>
      /// Initialize Application (must be called once upon app start-up).
      /// </summary>
      public static void InitializeApplication()
      {
         // prepare AppData folder and create/copy AppData folder...
         AppData.InitializeAppData(EDAM_STUDIO);
         AppData.InitializeAppDataCopy(
            GetApplicationInstalledLocation() + AppData.APPLICATION_DATA);

         // setup default project
         prj.Project.SetDefaultFullPath();

         var appDataLocation = GetApplicationDataLocation();

         app.Session.SessionId = Guid.NewGuid().ToString();
         Edam.Security.SecuredKeysVault.OpenVault();
         DependencyInjectionHelper.InitializeDependencyInjectionService();
         ProjectConsole.Initialize();
         prj.Project.SetProjectsDirectory();
      }

   }

}

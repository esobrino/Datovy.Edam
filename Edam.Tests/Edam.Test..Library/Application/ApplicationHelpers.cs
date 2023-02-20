using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

// -----------------------------------------------------------------------------
using config = Edam.Data.AssetManagement.Helpers.ConfigurationHelper;
using Edam.Data.AssetProject;
using Edam.Data.Asset.Services;
using app = Edam.Application;
using Edam.Application;

namespace Edam.Test.Library.Application
{

   public class ApplicationHelpers
   {

      #region -- 4.00 - Manage Application Folders

      /// <summary>
      /// Get the Application Installed Location.
      /// </summary>
      /// <returns>Installed location is returned</returns>
      public static string GetApplicationInstalledLocation()
      {
         return Project.SetDefaultFullPath(String.Empty);;
      }

      public static string GetApplicationDataLocation()
      {
         return Environment.GetFolderPath(
            Environment.SpecialFolder.MyDocuments);
      }

      public static void MoveToApplicationInstalledLocation()
      {
         string path = GetApplicationInstalledLocation();
         Directory.SetCurrentDirectory(path);
      }

      #endregion

      public static void InitializeApplication()
      {
         // setup app working directory
         MoveToApplicationInstalledLocation();

         // setup app data folder
         AppData.SetFolderPath(GetApplicationDataLocation());

         var appDataLocation = GetApplicationDataLocation();

         app.Session.SessionId = Guid.NewGuid().ToString();
         Edam.Security.SecuredKeysVault.OpenVault();
         DependencyInjectionHelper.InitializeDependencyInjectionService();
         ProjectConsole.Initialize();
         Project.SetProjectsDirectory();
      }

   }

}

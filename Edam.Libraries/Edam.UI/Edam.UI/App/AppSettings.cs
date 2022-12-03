using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

// -----------------------------------------------------------------------------
using Edam.Serialization;
using Edam.Data.AssetProject;
using app = Edam.Application;
using Microsoft.UI.Xaml.Media;

namespace Edam.UI.App
{

   /// <summary>
   /// Manage App and UI-Settings...
   /// </summary>
   public class AppSettings : app.IAppSettings
   {
      private static EdamSettings EdamSettings = null;

      public const string TYPE_POSTFIX = "_Type";
      public const string DOCUMENT_POSTFIX = "_Document";
      public const string EDAM_SETTINGS_FILENAME_KEY = "EdamSettingsFileName";

      static AppSettings()
      {
         FromJson();
      }

      /// <summary>
      /// Get Type Postfix default or as found in settings.
      /// </summary>
      /// <returns>Postfix value is returned</returns>
      public string GetTypePostfix()
      {
         if (EdamSettings != null)
         {
            return EdamSettings.Schema.Defaults.TypePostfix;
         }
         return TYPE_POSTFIX;
      }

      /// <summary>
      /// Get Document Postfix default or as found in settings.
      /// </summary>
      /// <returns>Postfix value is returned</returns>
      public string GetDocumentPostfix()
      {
         if (EdamSettings != null)
         {
            return EdamSettings.Schema.Defaults.DocumentPostfix;
         }
         return DOCUMENT_POSTFIX;
      }

      /// <summary>
      /// Get Console Path where application data is found.
      /// </summary>
      /// <returns>path is returned</returns>
      public static string GetConsolePath()
      {
         if (EdamSettings != null)
         {
            return EdamSettings.App.ConsolePath;
         }
         return Project.GetProjectsPath(false, true);
      }

      /// <summary>
      /// Get Settings Path to re
      /// </summary>
      /// <returns>Settings Paht is returned</returns>
      public static string GetSettingsPath()
      {
         string fname = app.AppSettings.GetSectionString(
            EDAM_SETTINGS_FILENAME_KEY);
         return GetConsolePath() + fname;
      }

      /// <summary>
      /// Get URI list for all entries of given type.
      /// </summary>
      /// <param name="type">URI type to search</param>
      /// <returns>uri list of given type is returned</returns>
      public static List<UriItemInfo> GetUriList(UriType type)
      {
         if (EdamSettings.App.UriList == null)
         {
            return new List<UriItemInfo>();
         }
         return EdamSettings.App.UriList.FindAll((x) => x.Type == type);
      }

      /// <summary>
      /// Get EdamSettings from the JSON file.
      /// </summary>
      /// <param name="jsonFilePath">JSON file path</param>
      /// <returns>instance of EdamSettings is returned</returns>
      public static EdamSettings FromJson(string jsonFilePath = null)
      {
         string fpath = String.IsNullOrWhiteSpace(jsonFilePath) ?
            GetSettingsPath() : jsonFilePath;
         EdamSettings setts = null;
         if (File.Exists(fpath))
         {
            string jsonText = File.ReadAllText(fpath);
            setts = JsonSerializer.Deserialize<EdamSettings>(jsonText);
         }
         EdamSettings = setts;
         return setts;
      }

      /// <summary>
      /// To JSON file.
      /// </summary>
      /// <param name="settings">settings to store as JSON</param>
      /// <param name="jsonFilePath">file path for the JSON file</param>
      public static void ToJson(
         object settings, string jsonFilePath = null)
      {
         string fpath = String.IsNullOrWhiteSpace(jsonFilePath) ?
            GetSettingsPath() : jsonFilePath;

         EdamSettings edamSettings = settings as EdamSettings;
         if (edamSettings == null)
         {
            return;
         }

         var jsonText = JsonSerializer.Serialize<EdamSettings>(edamSettings);
         if (jsonText != null)
         {
            File.WriteAllText(fpath, jsonText);
         }
      }

   }

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

// -----------------------------------------------------------------------------
using config = Edam.Data.AssetManagement.Helpers.ConfigurationHelper;
using Edam.Data.AssetManagement;
using Edam.Application;
using Edam.Diagnostics;
using Edam.InOut;
using Edam.Data.AssetConsole;

namespace Edam.Data.AssetProject
{

   public class Project
   {

      public const string ARCHIVE = "Archive";
      public const string PROJECTS = "Projects";
      public const string ARGUMENTS = "Arguments";
      public const string DOCUMENTS = "Documents";
      public const string SAMPLES = "Samples";
      public const string FILES = "Files";
      public const string TEXT_MAPS = "TextMaps";
      public const string USE_CASES = "UseCases";
      public const string LIBRARIES = "Libraries";
      public const string NOTEBOOKS = "Notebooks";

      public const string DEFAULT_DATA_TEXT_MAP_KEY =
         "EditorLanguageMapFileName";

      private static bool m_Initialized = false;

      /// <summary>
      /// Initialize Project...
      /// </summary>
      public static void InitializeProject()
      {
         string cdir = config.GetAbsolutePath(
            AppSettings.GetString(config.ASSET_CONSOLE_PATH));
         Directory.SetCurrentDirectory(cdir);
         m_Initialized = true;
      }

      /// <summary>
      /// Get Projects full Path...
      /// </summary>
      /// <returns></returns>
      public static string GetProjectsPath(
         bool getRelativePath = false, bool onlyPath = false)
      {
         string consolePath = config.GetAbsolutePath(
            AppSettings.GetString(config.ASSET_CONSOLE_PATH));
         if (onlyPath)
         {
            return consolePath;
         }
         return (getRelativePath ? "./" : consolePath) + PROJECTS + "/";
      }

      /// <summary>
      /// Get Projects full Path...
      /// </summary>
      /// <returns></returns>
      public static string GetTextMapPath(bool getRelativePath = false)
      {
         string consolePath = config.GetAbsolutePath(
            AppSettings.GetString(config.ASSET_CONSOLE_PATH));
         return (getRelativePath ? "." : consolePath) + TEXT_MAPS + "/";
      }

      /// <summary>
      /// Set Projects Directory with given Path, if no path is specified
      /// </summary>
      /// <param name="projectsPath">project path to set directory too, if none
      /// is provided then the GetProjectsPath() will be used instead</param>
      /// <returns>results log is returned.  the results.Data contains the 
      /// setted current directory</returns>
      public static ResultsLog<string> SetProjectsDirectory(
         string projectsPath = null)
      {
         ResultsLog<string> results = new Diagnostics.ResultsLog<string>();
         try
         {
            Directory.SetCurrentDirectory(
               String.IsNullOrWhiteSpace(projectsPath) ?
                  GetProjectsPath() : projectsPath + PROJECTS + "/");
            results.Data = Directory.GetCurrentDirectory();
            results.Succeeded();
         }
         catch(Exception ex)
         {
            results.Failed(ex);
         }
         return results;
      }

      /// <summary>
      /// Create Project using given name.
      /// </summary>
      /// <param name="name">project name</param>
      /// <param name="useProject">true to move to the directory if it exists,
      /// else create directory and move there</param>
      /// <returns>results are returned.  The results.ResultValueObject contains
      /// the file-path of the newly created project</returns>
      public static ResultLog CreateProject(
         string name, bool useProject = false)
      {
         if (!m_Initialized)
         {
            InitializeProject();
         }

         ResultLog results = new ResultLog();
         string currentDirectory = null;
         try
         {
            currentDirectory = Directory.GetCurrentDirectory();
            string pname = Text.Convert.ToTitleCase(name).Replace(" ", "");

            // if project names exists just return...
            string fpath = currentDirectory +
               AppSettings.GetString(config.ASSET_PROJECTS_PATH) + name;
            if (Directory.Exists(fpath))
            {
               if (useProject)
               {
                  Directory.SetCurrentDirectory(fpath);
               }
               else
               {
                  results.Failed(EventCode.ObjectExists);
               }

               return results;
            }

            // create directories
            Directory.CreateDirectory(fpath);
            Directory.SetCurrentDirectory(fpath);

            Directory.CreateDirectory(ARCHIVE);
            Directory.CreateDirectory(ARGUMENTS);
            Directory.CreateDirectory(DOCUMENTS);
            Directory.CreateDirectory(FILES);
            Directory.CreateDirectory(SAMPLES);
            Directory.CreateDirectory(USE_CASES);
            Directory.CreateDirectory(LIBRARIES);

            // copy start-up template...
            string src = AppSettings.GetString(
               config.ASSET_ARGUMENTS_TEMPLATE_PATH);
            string templateFineName = Path.GetFileName(src);
            string targetFileName = 
               fpath + "/" + ARGUMENTS + "/" + pname + "." + templateFineName;
            File.Copy(currentDirectory + "/" + src, targetFileName);

            results.ResultValueObject = fpath;
            results.Succeeded();
         }
         catch(Exception ex)
         {
            results.Failed(ex);
         }
         finally
         {
            if (!useProject)
            {
               Directory.SetCurrentDirectory(currentDirectory);
            }
         }

         return results;
      }

      /// <summary>
      /// Get all Projects as found in the Projects default folder.
      /// </summary>
      /// <returns>instance of FolderFileItemInfo is returned with all 
      /// projects and file/folder artifacts</returns>
      public static FolderFileItemInfo GetProjectItems()
      {
         ResultsLog<string> results = SetProjectsDirectory();
         if (!results.Success)
         {
            return null;
         }
         return FolderFileReader.GetFolderFileInfo(results.Data);
      }

      /// <summary>
      /// Get a single project file/folder artifacts...
      /// </summary>
      /// <param name="rootFilePath">name of project</param>
      /// <returns>instance of FolderFileItemInfo is returned with requested 
      /// project and file/folder artifacts</returns>
      public static FolderFileItemInfo GetProjectItems(string rootFilePath)
      {
         string cdir = Directory.GetCurrentDirectory();

         ResultsLog<string> results = SetProjectsDirectory(rootFilePath);
         if (!results.Success)
         {
            return null;
         }

         FolderFileItemInfo finfo = null;
         try
         {
            finfo = FolderFileReader.GetFolderFileInfo(results.Data);
         }
         catch (Exception ex)
         {
            results.Failed(ex);
         }
         finally
         {
            Directory.SetCurrentDirectory(cdir);
         }

         return finfo;
      }

      /// <summary>
      /// Get Data Text Map...
      /// </summary>
      /// <param name="mapKey">configured map-key (check appSettings)</param>
      /// <returns>instance of DataTextMap is returrned</returns>
      public static DataTextMap GetDataTextMapByKey(string mapKey = null)
      {
         string key = mapKey == null ? DEFAULT_DATA_TEXT_MAP_KEY : mapKey;
         string fileName = AppSettings.GetSectionString(key);
         if (fileName == null)
         {
            return new DataTextMap();
         }
         DataTextMap map = null;
         try
         {
            string filePath = GetTextMapPath() + fileName;
            map = DataTextMap.FromFile(filePath);
         }
         catch(Exception ex)
         {
            
         }
         finally
         {
            if (map == null)
            {
               map = new DataTextMap();
            }
         }
         return map;
      }

   }

}

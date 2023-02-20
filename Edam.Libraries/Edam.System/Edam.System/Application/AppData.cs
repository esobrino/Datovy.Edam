using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

using Edam.Diagnostics;

namespace Edam.Application
{

   public class AppData
   {

      private static string m_FolderPath;

      public static string FolderPath
      {
         get { return m_FolderPath; }
      }

      /// <summary>
      /// Set Folder Path.
      /// </summary>
      /// <param name="folderPath">folder path</param>
      public static void SetFolderPath(string folderPath)
      {
         m_FolderPath = m_FolderPath ?? folderPath;
      }

      private static void DirectoryCopy(
         string sourceDirName, string destDirName, bool copySubDirs)
      {
         DirectoryInfo dir = new DirectoryInfo(sourceDirName);
         DirectoryInfo[] dirs = dir.GetDirectories();

         // If the source directory does not exist, throw an exception.
         if (!dir.Exists)
         {
            throw new DirectoryNotFoundException(
                "Source directory does not exist or could not be found: "
                + sourceDirName);
         }

         // If the destination directory does not exist, create it.
         if (!Directory.Exists(destDirName))
         {
            Directory.CreateDirectory(destDirName);
         }


         // Get the file contents of the directory to copy.
         FileInfo[] files = dir.GetFiles();

         foreach (FileInfo file in files)
         {
            // Create the path to the new copy of the file.
            string temppath = Path.Combine(destDirName, file.Name);

            // Copy the file.
            file.CopyTo(temppath, false);
         }

         // If copySubDirs is true, copy the subdirectories.
         if (copySubDirs)
         {

            foreach (DirectoryInfo subdir in dirs)
            {
               // Create the subdirectory.
               string temppath = Path.Combine(destDirName, subdir.Name);

               // Copy the subdirectories.
               DirectoryCopy(subdir.FullName, temppath, copySubDirs);
            }
         }
      }

      /// <summary>
      /// Copy given source folder into the AppData folder.
      /// </summary>
      /// <param name="sourceFolderPath">source folder path</param>
      /// <returns>result log instance is returned</returns>
      public static ResultLog CopyFolder(string sourceFolderPath)
      {
         ResultLog resultLog = new ResultLog();
         if (Directory.Exists(sourceFolderPath))
         {
            resultLog.Succeeded();
            return resultLog;
         }

         try
         {
            DirectoryCopy(sourceFolderPath, m_FolderPath, true);
            resultLog.Succeeded();
         }
         catch (Exception ex)
         {
            resultLog.Failed(ex);
         }
         return resultLog;
      }

   }

}

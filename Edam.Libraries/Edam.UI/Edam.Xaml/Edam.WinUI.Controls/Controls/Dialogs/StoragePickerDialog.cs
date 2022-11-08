using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

using Microsoft.UI.Xaml;
using Windows.Storage.Pickers;
using Windows.Storage;

// -----------------------------------------------------------------------------
using Edam.WinUI.Controls.Application;

namespace Edam.WinUI.Controls.Dialogs
{

   public static class WinUiHelper
   {
      public static bool InitializePicker(FileOpenPicker picker)
      {
         if (Window.Current == null)
         {
            WinRT.Interop.InitializeWithWindow.Initialize(
               picker, GetActiveWindow());
            return true;
         }
         return false;
      }

      public static bool InitializePicker(FolderPicker picker)
      {
         if (Window.Current == null)
         {
            WinRT.Interop.InitializeWithWindow.Initialize(
               picker, GetActiveWindow());
            return true;
         }
         return false;
      }

      public static bool InitializePicker(FileSavePicker picker)
      {
         if (Window.Current == null)
         {
            WinRT.Interop.InitializeWithWindow.Initialize(
               picker, GetActiveWindow());
            return true;
         }
         return false;
      }

      [ComImport, Guid("3E68D4BD-7135-4D10-8018-9FB6D9F33FA1"), 
         InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
      public interface IInitializeWithWindow
      {
         void Initialize([In] IntPtr hwnd);
      }

      [DllImport("user32.dll", ExactSpelling = true, CharSet = CharSet.Auto, 
         PreserveSig = true, SetLastError = false)]
      public static extern IntPtr GetActiveWindow();
   }

   /// <summary>
   /// Provide access to Supported Storage Pickers...
   /// </summary>
   public class StoragePickerDialog
   {

      private static void SetupFileTypeFilters(
         IList<string> pickerItems, List<string> items)
      {
         if (items == null || items.Count == 0)
         {
            pickerItems.Add("*");
         }
         else
         {
            pickerItems.Clear();
            foreach(var i in items)
            {
               pickerItems.Add(i);
            }
         }
      }

      /// <summary>
      /// Open File Picker and return list of files
      /// </summary>
      public static async void MultiFilesPickerAsync(IStorageInfo info)
      {
         FileOpenPicker picker = new();
         picker.SuggestedStartLocation = PickerLocationId.ComputerFolder;
         SetupFileTypeFilters(picker.FileTypeFilter, info.FileTypeFilter);

         if (WinUiHelper.InitializePicker(picker))
         {
            var files = await picker.PickMultipleFilesAsync();
            
            if (files != null)
            {
               info.StorageItem = new InOut.FolderFileItemInfo();
               foreach (var file in files.ToList())
               {
                  info.StorageItem.AddFile(file.Path, null);
               }

               if (info.CallBack != null)
               {
                  info.Result = info.StorageItem;
                  info.CallBack(info);
               }
               //var text = await FileIO.ReadTextAsync(file);
               //MessageDialog dlg = new(text);
               //await dlg.ShowAsync();
            }
         }
      }

      /// <summary>
      /// Open File Picker and return one file.
      /// </summary>
      public static async void SilgleFilePickerAsync(IStorageInfo info)
      {
         FileOpenPicker picker = new();
         picker.SuggestedStartLocation = PickerLocationId.ComputerFolder;
         SetupFileTypeFilters(picker.FileTypeFilter, info.FileTypeFilter);

         if (WinUiHelper.InitializePicker(picker))
         {
            var file = await picker.PickSingleFileAsync();

            if (file != null)
            {
               if (info.CallBack != null)
               {
                  info.CallBack(info);
               }
               //var text = await FileIO.ReadTextAsync(file);
               //MessageDialog dlg = new(text);
               //await dlg.ShowAsync();
            }
         }
      }

      /// <summary>
      /// Open File Picker and return one file.
      /// </summary>
      public static async void SavePickerAsync(IStorageInfo info)
      {
         FileSavePicker picker = new();
         picker.SuggestedStartLocation = PickerLocationId.ComputerFolder;

         if (WinUiHelper.InitializePicker(picker))
         {
            var file = await picker.PickSaveFileAsync();

            if (file != null)
            {
               if (info.CallBack != null)
               {
                  info.CallBack(info);
               }
               //var text = await FileIO.ReadTextAsync(file);
               //MessageDialog dlg = new(text);
               //await dlg.ShowAsync();
            }
         }
      }

      /// <summary>
      /// Open File Picker and return one file.
      /// </summary>
      public static async void FolderPickerAsync(IStorageInfo info)
      {
         FolderPicker picker = new();
         picker.SuggestedStartLocation = PickerLocationId.ComputerFolder;
         SetupFileTypeFilters(picker.FileTypeFilter, info.FileTypeFilter);

         if (WinUiHelper.InitializePicker(picker))
         {
            var folder = await picker.PickSingleFolderAsync();

            if (folder != null)
            {
               if (info.CallBack != null)
               {
                  info.CallBack(info);
               }
               //var text = await FileIO.ReadTextAsync(file);
               //MessageDialog dlg = new(text);
               //await dlg.ShowAsync();
            }
         }
      }

   }

}

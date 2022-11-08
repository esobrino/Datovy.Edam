using System;
using Microsoft.Extensions.DependencyInjection;

// -----------------------------------------------------------------------------
using Edam.Application;
using Edam.DataObjects.ReferenceData;
using Edam.UI.DataModel.ReferenceData;
using Edam.WinUI.Controls.Application;
using Edam.Data.AssetSchema;
using helper = Edam.WinUI.Helpers;
using Edam.InOut;
using Edam.Data.Schema.ImportExport;
using Edam.B2b;
using UIApp = Edam.UI.App;

namespace Edam.WinUI.Helpers
{

   public class DependencyInjectionHelper
   {
      public static void InitializeDependencyInjectionService()
      {
         DependencyService.Collection.Add(
            new ServiceDescriptor(
               typeof(IFileHelper), (IFileHelper)(new helper.FileHelper())));
         DependencyService.Collection.Add(
            new ServiceDescriptor(
               typeof(IReferenceDataTemplateReader),
                  (IReferenceDataTemplateReader)
                     (new ReferenceDataTemplateFileReader())));
         DependencyService.Collection.Add(
            new ServiceDescriptor(
               typeof(IApplicationResource),
                  (IApplicationResource)
                     (new ApplicationResource())));
         DependencyService.Compile();

         AppAssembly.RegisterType(AssetResourceHelper.ASSET_B2B_EDI_FILE_READER,
            typeof(EdiFileReader), "EdiToAssets");
         AppAssembly.RegisterType(
            AssetResourceHelper.ASSET_APP_SETTINGS,
            typeof(UIApp.AppSettings), "AppSettings");
         AppAssembly.RegisterType(
            AssetResourceHelper.ASSET_DDL_IMPORT_FILE_READER,
            typeof(DdlImportReader), "DdlImportToAssets");
         AppAssembly.RegisterType(
            AssetResourceHelper.ASSET_ROW_BUILDER_NAME,
            typeof(Edam.Xml.OpenXml.ExcelRowBuilder));
      }
   }

}

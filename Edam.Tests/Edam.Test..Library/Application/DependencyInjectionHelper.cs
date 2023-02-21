﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;

// -----------------------------------------------------------------------------
using Edam.Application;
using Edam.DataObjects.ReferenceData;
using Edam.Data.AssetSchema;
using Edam.Data.AssetMapping;
using Edam.Data.AssetConsole;
using Edam.InOut;
using Edam.B2b;
using Edam.Data.Schema.ImportExport;

namespace Edam.Test.Library.Application
{

   public class DependencyInjectionHelper
   {

      public static void InitializeDependencyInjectionService()
      {
         //DependencyService.Collection.Add(
         //   new ServiceDescriptor(
         //      typeof(IApplicationResource),
         //         (IApplicationResource)
         //            (new ApplicationResource())));
         //DependencyService.Compile();

         AppAssembly.RegisterType(AssetResourceHelper.ASSET_B2B_EDI_FILE_READER,
            typeof(EdiFileReader), "EdiToAssets");
         AppAssembly.RegisterType(
            AssetResourceHelper.ASSET_DDL_IMPORT_FILE_READER,
            typeof(DdlImportReader),
            AssetConsoleProcedure.DdlImportToAssets.ToString());
         AppAssembly.RegisterType(
            AssetResourceHelper.ASSET_ROW_BUILDER_NAME,
            typeof(Edam.Xml.OpenXml.ExcelRowBuilder));
      }

   }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// -----------------------------------------------------------------------------
using Edam.Data.AssetConsole;
using Edam.Xml.OpenXml;
using Edam.Data.Asset;
using Edam.Application;
using Edam.Diagnostics;
using Edam.Data.AssetSchema;
using Edam.Data.AssetManagement;
using Edam.DataObjects.Models;
using Edam.Data.Schema.DataDefinitionLanguage;
using ObjAssets = Edam.DataObjects.Assets;
using Edam.Data.Assets.AssetSchema;

namespace Edam.Data.Schema.ImportExport
{

   public class DdlImportReader : IDataAssets
   {
      private DataTextMap m_Mapper;
      private AssetConsoleArgumentsInfo m_Arguments;

      private string m_VersionId
      {
         get { return m_Arguments.Project.VersionId; }
      }

      public List<string> GetFileList(AssetConsoleArgumentsInfo arguments)
      {
         var uriList = UriResourceInfo.GetUriList(
           arguments.UriList, UriResourceType.xsd);
         return null;
      }

      public IResultsLog ToDatabase(AssetConsoleArgumentsInfo arguments)
      {
         var uriList = UriResourceInfo.GetUriList(
           arguments.UriList, UriResourceType.xsd);
         foreach (var i in uriList)
         {
            
         }

         return null;
      }

      public List<AssetData> ToAssetData(
         AssetProperties assetProperties, List<DdlImportItemInfo> items,
         NamespaceList namespaces, string rootName)
      {
         if (items == null || items.Count == 0)
         {
            return null;
         }

         var header = items[0];

         String guidText = Guid.NewGuid().ToString();
         NamespaceInfo ns = namespaces == null || namespaces.Count == 0 ?
            new NamespaceInfo(guidText, "http://" + guidText) : namespaces[0];

         SortedDictionary<string, DdlAsset> dassets = 
            new SortedDictionary<string, DdlAsset>();

         DdlAsset dasset = null, previousAsset = null;

         ElementPropertyInfo xproperty;
         ElementPropertyInfo entityProperty;

         int resourceCount = 0;
         int schemaCount = 1;

         foreach (var item in items)
         {
            item.OrdinalNo = ++resourceCount;

            entityProperty = assetProperties.Find(
               item.TableSchema, item.TableName, String.Empty,
               ElementPropertyType.Description);

            // is element mapped to an external property?
            xproperty = assetProperties.Find(
               item.TableSchema, item.TableName, item.ColumnName,
               ElementPropertyType.ExternalReference);

            if (!dassets.TryGetValue(item.TableSchema, out dasset))
            {
               if (previousAsset != null)
               {
                  previousAsset.PrepareAdditionalColumns();
               }

               dasset = new DdlAsset(header, namespaces, ns, m_Mapper,
                  item.TableSchema, m_VersionId, schemaCount);
               dasset.asset.CatalogName = item.TableCatalog;
               previousAsset = dasset;

               dassets.Add(item.TableSchema, dasset);
               schemaCount++;
            }

            // this is a new table definition
            if (dasset == null || 
               item.TableName != previousAsset.originalTableName)
            {
               previousAsset.PrepareAdditionalColumns();
               dasset.PrepareTableDefinition(item, item.TableName);
               dasset.originalTableName = item.TableName;

               if (entityProperty != null)
               {
                  dasset.UpdateEntityProperty(entityProperty);
               }
               //continue;
            }

            // prepare/add table column definition
            var celement = dasset.PrepareColumnDefinition(item);
            if (xproperty != null)
            {
               DdlAsset.UpdateEntityProperty(xproperty, celement);
            }
         }

         if (dasset != null)
         {
            dasset.PrepareAdditionalColumns();
         }

         // add property bags of last items for each ddl asset...
         List<AssetData> assets = new List<AssetData>();
         foreach (var i in dassets)
         {
            i.Value.AddPropertyBag();
            assets.Add(i.Value.asset);
         }

         // merge assets...
         AssetData assetData = AssetData.Merge(assets, header.TableCatalog,
            header.TableCatalog, "schemaName", "description", "title", ns,
            AssetType.Schema, m_VersionId);

         // prepare catalog document...
         var documentItems = PrepareCatalogDocument(header, dassets, ns);
         foreach (var item in documentItems)
         {
            assetData.Add(item);
         }

         assets.Clear();
         assets.Add(assetData);

         return assets;
      }

      private AssetDataElementList PrepareCatalogDocument(
         DdlImportItemInfo header,
         SortedDictionary<string, DdlAsset> asset, NamespaceInfo ns)
      {
         var appSettings = AppAssembly.FetchInstance(
            AssetResourceHelper.ASSET_APP_SETTINGS) as IAppSettings;
         string typePostfix = appSettings == null ? 
            String.Empty : appSettings.GetTypePostfix();

         // prepare root element
         AssetDataElementList documentList =
            new AssetDataElementList(ns, AssetType.Schema, m_VersionId);

         // add document type
         string rootElementName = header.TableCatalog + typePostfix;
         var documentSchema = DdlAsset.PrepareTypeDefinition(
            String.Empty, rootElementName, header.TableCatalog, ns.Prefix,
            Session.OrganizationId, ns);
         documentSchema.InclusionType = DataElementInclusionType.Exclude;
         documentList.Add(documentSchema);
         AssetDataElementList list = 
            new AssetDataElementList(ns, AssetType.Schema, m_VersionId);

         // prepare type that include all registered schemas... add child types
         foreach (var schema in asset.Values)
         {
            // add schema type
            string tName = schema.asset.SchemaName + typePostfix;
            var parentSchema = DdlAsset.PrepareTypeDefinition(
               String.Empty, tName, schema.asset.SchemaName, schema.ns.Prefix,
               Session.OrganizationId, schema.ns);
            parentSchema.InclusionType = DataElementInclusionType.Exclude;
            list.Add(parentSchema);

            // prepare an entry per schema table... as an element
            foreach (var table in schema.Tables)
            {
               var item = schema.PrepareElementDefinition(
                  parentSchema, table.Item as DdlImportItemInfo, true);
               item.MaxOccurrence = int.MaxValue;
               item.InclusionType = DataElementInclusionType.Exclude;
               list.Add(item);
            }

            DdlImportItemInfo itm = new DdlImportItemInfo();
            itm.TableSchema = String.Empty;
            itm.ColumnName = schema.ns.Prefix + ":" + schema.asset.SchemaName;
            itm.DataType = parentSchema.DataType;
            itm.TableName = schema.asset.SchemaName;
            itm.CharacterMaximumLength = 0;

            var ditem = schema.PrepareElementDefinition(
               documentSchema, itm, true);
            ditem.Domain = ns.Prefix;
            ditem.InclusionType = DataElementInclusionType.Exclude;
            documentList.Add(ditem);
         }

         // prepare root and document elements...
         DdlAsset rootAsset = new DdlAsset(
            header, null, ns, null, null, m_VersionId, 0);

         // add schema type
         var rootSchema = DdlAsset.PrepareTypeDefinition(
            String.Empty, header.TableCatalog, header.TableCatalog, ns.Prefix,
            Session.OrganizationId, ns);
         //list.Add(rootSchema);

         // add schema as a child of document
         DdlImportItemInfo ritm = new DdlImportItemInfo();
         ritm.TableSchema = String.Empty;
         ritm.ColumnName = rootSchema.ElementName;
         ritm.DataType = rootSchema.DataType;
         ritm.TableName = rootSchema.ElementQualifiedName.OriginalName;
         ritm.CharacterMaximumLength = 0;

         var rootDocument = rootAsset.PrepareElementDefinition(
            null, ritm, true, true);
         rootDocument.Domain = ns.Prefix;
         documentList.Add(rootDocument);

         // add document element declaration
         //fitm.TableName = rootAsset.asset.CatalogName;
         //var root = rootAsset.PrepareElementDefinition(null, fitm, true, true);
         //documentList.Add(root);

         list.AddRange(documentList);

         return list;
      }

      public IResultsLog ToAsset(AssetConsoleArgumentsInfo arguments)
      {
         m_Arguments = arguments;

         IResultsLog resultsLog = new ResultLog();

         List<DdlImportItemInfo> rows = new List<DdlImportItemInfo>();
         NamespaceList namespaces = new NamespaceList();
         namespaces.Add(arguments.Namespace);

         m_Mapper = DataTextMap.FromFile(arguments);

         var uriList = UriResourceInfo.GetUriList(
           arguments.UriList, UriResourceType.xlsx);
         foreach (var fname in uriList)
         {
            var docList = ExcelDocumentReader.ReadDocument(
               fname, "Documentation");
            AssetProperties doc = docList.Success ?
               AssetProperties.GetInstance(docList.Data) : 
                  new AssetProperties(
                     new List<ElementPropertyInfo>());

            var results = ExcelDocumentReader.ReadDocument(
               fname, arguments.Domain.DomainId);
            if (results.Success)
            {
               int cnt;
               foreach(var list in results.Data)
               {
                  cnt = 0;
                  foreach (var item in list)
                  {
                     if (String.IsNullOrWhiteSpace(item))
                     {
                        cnt++;
                     }
                  }
                  if (list.Count == cnt)
                  {
                     break;
                  }
                  rows.Add(new DdlImportItemInfo(list));
               }

               // remove header row
               if (rows.Count > 0)
               {
                  rows.RemoveAt(0);
               }

               // prepare Asset Data definitions (one per schema)
               var assets = ToAssetData(doc, rows, namespaces,
                  arguments.RootElementName);

               if (assets != null)
               {
                  if (arguments.AssetDataItems == null)
                  {
                     arguments.AssetDataItems = new AssetDataList();
                  }
                  foreach(var a in assets)
                  {
                     a.Namespaces.Add(NamespaceInfo.GetW3CNamespace());
                  }
                  arguments.AssetDataItems.AddRange(assets);
               }
            }
         }
         resultsLog.Succeeded();
         return resultsLog;
      }

   }

}

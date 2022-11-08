using System;
using System.Collections.Generic;
using System.Xml.Serialization;
using System.Runtime.Serialization;

// -----------------------------------------------------------------------------
// Open Knowledge (c) 2010 - 2015.  Kifv3r0.
// Upra Framework prepared by Eduardo Sobrino, PR.Net

using Edam.Application;
using Settings = Edam.Application.AppSettings;
using Keys = Edam.Application.Defaults.AppSettingsKeys;
//using ServiceConfig = Edam.Services.ServicesSession;
using Encryptor = Edam.Security.Cryptography.Encryptor;

namespace Edam.Data
{

   public enum DbAuthenticationMethod
   {
      Unknown = 0,
      SqlAuthentication = 1,
      NtAuthentication = 2
   }

   /// <summary>
   /// Provide for the management of DataSources
   /// </summary>
   [ XmlRoot("DatabaseResources") ]
   public class DataSources
   {
      
      [XmlIgnoreAttribute]
      public DataSourceInfo SelectedDataSource { get; set; }

      [XmlArray("DataSources")]
      [XmlArrayItem("Source")]
      public List<DataSourceInfo> Sources { get; set; }

      public DataSourceInfo this[String keyId]
      {
         get { return Find(keyId); }
         set { Add(value.KeyId, value); }
      }

      /// <summary>
      /// Get default application database key.  Use it to retrieve the default
      /// connection string as defined in the App.config file.
      /// </summary>
      /// <returns>key is returned</returns>
      public static String GetDefaultApplicationDatabaseKey()
      {
         return Settings.GetSectionString(Keys.DefaultDbKeyId);
      }

      /// <summary>
      /// Get defualt database key.  Use it to retrieve the default data source
      /// in the DataSources collection.
      /// </summary>
      /// <returns>key is returned</returns>
      public static String GetDefaultDatabaseKey()
      {
         return Settings.GetSectionString(Keys.DefaultDbKeyId);
      }

      /// <summary>
      /// Get Default connection string...
      /// </summary>
      /// <param name="sources"></param>
      /// <returns></returns>
      public static string GetDefaultConnectionString(
         DataSources sources = null)
      {
         string k = GetDefaultDatabaseKey();
         if (String.IsNullOrWhiteSpace(k))
         {
            return null;
         }
         string connectionString = null;
         var ds = sources == null ? Session.GetDataSource(k) :
            sources.Find(k);
         if (ds == null)
         {
            connectionString = Settings.GetConnectionString(k);
            if (sources != null)
            {
               sources.Add(k, new DataSourceInfo()
               {
                  ConnectionString = connectionString
               });
            }
         }
         return connectionString;
      }

      /// <summary>
      /// Initialize Register with Config file Default Data Source...
      /// </summary>
      /// <returns>true is returned if initialize as expected</returns>
      public Boolean InitializeWithConfigFile()
      {
         String appKey = GetDefaultApplicationDatabaseKey();
         String key = GetDefaultDatabaseKey();

         DataSourceInfo s = DataSourceInfo.GetConnectionString(appKey); ;
         if (s != null)
            return true;

         if (Sources.Count > 0)
            s = Find(key);
         if (s != null)
            return true;

         if (appKey == key)
         {
            s = new DataSourceInfo();

            String host = Settings.GetString(Keys.DefaultDbHost);
            String catalog = Settings.GetString(Keys.DefaultDbCatalog);

            s.ConnectionString = DataSourceInfo.GetConnectionString(
               host, catalog);
            Add(key, s);
            return true;
         }

         s = DataSourceInfo.GetDefaultDataSource();
         if (s != null)
         {
            Add(appKey, s);
            return true;
         }

         return false;
      }

      public DataSources()
      {
         Sources = new List<DataSourceInfo>();
      }

      /// <summary>
      /// Add a new DataSource with given info...
      /// </summary>
      /// <param name="keyId">Key Id.</param>
      /// <param name="dataSource">instance of data source to add</param>
      public void Add(String keyId, DataSourceInfo dataSource)
      {
         if (String.IsNullOrEmpty(keyId) || dataSource == null)
            throw new Exception(
               "DataSources::Add: key or dat-source not supplied");
         Sources.Add(dataSource);
         SelectedDataSource = dataSource;
      }  // end of Add

      /// <summary>
      /// Find a DataSource by key...
      /// </summary>
      /// <param name="keyId">Key Id.</param>
      /// <returns>if found an instance of DataSourceInfo is returned
      /// </returns>
      public DataSourceInfo Find(String keyId)
      {
         if (String.IsNullOrEmpty(keyId))
            return null;
         if (Sources == null || Sources.Count <= 0)
            return null;
         return Sources.Find(x => x.KeyId == keyId);
      }  // end of Find

      /// <summary>
      /// Get the connection string given the key.
      /// </summary>
      /// <param name="key">(Optional) connection string key.</param>
      /// <param name="fromAppConfig">(Optional) true if the string 
      /// should be fetched from the app.config file, else false
      /// (default: false)</param>
      /// <returns>the connection string for key is returned</returns>
      public static String GetConnectionString(String key = null,
         bool fromAppConfig = false)
      {
         var k = String.IsNullOrWhiteSpace(key) ?
            GetDefaultDatabaseKey() : key;
         if (fromAppConfig)
         {
            return Settings.GetConnectionString(k);
         }

         DataSourceInfo source = Application.Session.GetDataSource(k);
         var cs = source == null ? null : source.GetConnectionString();
         if (source == null || String.IsNullOrWhiteSpace(cs))
            cs = Settings.GetConnectionString(k);
         return cs;
      }

      public static DataSourceInfo GetDataSource(String key)
      {
         DataSourceInfo ds = null;
         string cstring = Settings.GetConnectionString(key);
         if (String.IsNullOrWhiteSpace(cstring))
         {
            return ds;
         }
         else
         {
            ds = new DataSourceInfo();
            ds.ConnectionString = cstring;
         }
         return ds;
      }

#if DATA_SUPPORT_

      /// <summary>
      /// Store given list into a file using given path.
      /// </summary>
      /// <param name="filePath">file path.</param>
      /// <param name="list">list of data sources</param>
      public static void ToFile(String filePath,
         DataSources sources, Boolean encrypt = false)
      {
         String errMessage = null;
         String xmlDoc = null;
         try
         {
            xmlDoc = Serialization.Serialize.ToXmlString(sources);
            if (encrypt)
               xmlDoc = Encryptor.Encrypt(xmlDoc);
            System.IO.File.WriteAllText(filePath, xmlDoc);
         }
         catch (Exception ex)
         {
            errMessage = ex.Message;
         }
      }

      /// <summary>
      /// Register Default Data Source...
      /// </summary>
      public void RegisterDefaultDataSource()
      {
         if (!InitializeWithApplicationServicesConfig())
            InitializeWithConfigFile();
      }

      /// <summary>
      /// Initialize with the application services configuration if any was 
      /// provided.
      /// </summary>
      /// <returns>true is returned if initialize as expected</returns>
      public Boolean InitializeWithApplicationServicesConfig()
      {
         if ((ServiceConfig.Configurations.DataSources != null) &&
             (ServiceConfig.Configurations.DataSources.Count > 0))
         {
            String key = GetDefaultDatabaseKey();
            Sources = ServiceConfig.Configurations.DataSources;
            SelectedDataSource = Find(key);
            if (SelectedDataSource == null)
               SelectedDataSource = Sources[0];
            return true;
         }
         return false;
      }

      /// <summary>
      /// Store data into the given file path.
      /// </summary>
      /// <param name="filePath">file path to store data into.</param>
      public void ToFile(String filePath)
      {
         ToFile(filePath, this);
      }

      /// <summary>
      /// Get the connection string given the key.
      /// </summary>
      /// <param name="key">(Optional) connection string key.</param>
      /// <param name="fromAppConfig">(Optional) true if the string 
      /// should be fetched from the app.config file, else false
      /// (default: false)</param>
      /// <returns>the connection string for key is returned</returns>
      public static String GetConnectionString(String key = null,
         bool fromAppConfig = false)
      {
         var k = String.IsNullOrWhiteSpace(key) ?
            GetDefaultDatabaseKey() : key;
         if (fromAppConfig)
         {
            return System.Configuration.ConfigurationManager.
               ConnectionStrings[k].ConnectionString;
         }

         DataSourceInfo source = Application.Session.GetDataSource(k);
         var cs = source == null ? null : source.GetConnectionString();
         if (source == null || String.IsNullOrWhiteSpace(cs))
            cs = System.Configuration.ConfigurationManager.
               ConnectionStrings[k].ConnectionString;
         return cs;
      }

#endif

   }

}



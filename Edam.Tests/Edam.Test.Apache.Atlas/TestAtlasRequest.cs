using static System.Net.WebRequestMethods;

using System.Diagnostics;

using Edam.Test.Library.Project;
using Edam.InOut;
using Edam.Application;
using Edam.Connector.Atlas;
using Edam.Connector.Atlas.Library;
using Edam.Data.AssetSchema;
using Edam.Test.Library.Application;
using Edam.Data.AssetConsole;
using Edam.Net;
using Edam.Net.Web;
using System.Text.Json.Nodes;
using Newtonsoft.Json.Linq;

namespace Edam.Test.Apache.Atlas
{

   [TestClass]
   public class TestAtlasRequest
   {
      public const string BASE_URI = "http://192.168.1.178:21000";
      public const string USER_ID = "admin";
      public const string USER_PASSWORD = "admin";

      /// <summary>
      /// Get HTTP Request Information for Atlas
      /// </summary>
      /// <returns></returns>
      public static HttpRequestInfo GetRequestInfo()
      {
         HttpRequestInfo r = new HttpRequestInfo();
         r.BaseUri = BASE_URI;
         r.UserID = USER_ID;
         r.UserSecret = USER_PASSWORD;
         return r;
      }

      [TestInitialize]
      public void InitializeEnvironment()
      {
         ApplicationHelpers.InitializeApplication();
         Debug.Print("Initialized...");
      }

      /*
      [TestMethod]
      public void TestRequest()
      {
         AtlasHttpClient client = new AtlasHttpClient(
            BASE_URI, clientId: USER_ID, clientSecret: USER_PASSWORD);
         var result = client.Search(null, null);

      }
      */

      [TestMethod]
      public void TestRegisterAsset()
      {
         ItemBaseInfo item = ProjectHelper.GetProjectItem(
            "Projects/Datovy.HC.RVCT/" +
            "Arguments/0001.HC.RVCT.ToAssets.Args.json");
         var presults = ProjectHelper.ProcessItem(item);

         Assert.IsNotNull(presults);

         // prepare Atlas message
         var elist = 
            presults.ResultValueObject as AssetConsoleArgumentsInfo;

         Assert.IsNotNull(elist);

         var ilist = elist.AssetDataItems;
         var items = EntityHelper.CreateEntity(ilist);

         Assert.IsNotNull(items);

         string jDefinitions = null;
         string jInstances = null;
         TypeDataItem? titem = null;

         foreach (var i in items)
         {
            titem = i.Tag as TypeDataItem;
            if (titem != null && titem.Definition != null)
            {
               jDefinitions = titem.Definition.ToJson();
               jInstances = titem.Instance.ToJson();
            }
         }

         HttpRequestInfo request = GetRequestInfo();
         AtlasHttpClient client = new AtlasHttpClient(request);
         client.Upsert(
            "/api/atlas/v2/types/typedefs", titem.Definition);
         string resultData = client.Data;

      }
   }

}

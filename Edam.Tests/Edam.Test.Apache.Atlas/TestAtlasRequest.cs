using static System.Net.WebRequestMethods;

using Edam.Test.Library.Project;
using Edam.InOut;
using Edam.Application;
using Edam.Connector.Atlas;
using Edam.Connector.Atlas.Library;
using Edam.Data.AssetSchema;
using Edam.Test.Library.Application;
using System.Diagnostics;
using Edam.Data.AssetConsole;

namespace Edam.Test.Apache.Atlas
{

   [TestClass]
   public class TestAtlasRequest
   {
      public const string BASE_URI = "http://192.168.1.178:21000";
      public const string USER_ID = "admin";
      public const string USER_PASSWORD = "admin";

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
         var ilist = elist.AssetDataItems;
         var items = EntityHelper.CreateEntity(ilist);

         foreach(var i in items)
         {
            EntityDataItem? titem = i.Tag as EntityDataItem;
            if (titem != null && titem.Definition != null)
            {
               var jdef = titem.Definition.ToJson();
               var jins = titem.Instance.ToJson();
            }
         }
      }
   }

}

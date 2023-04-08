using Edam.Connector.Atlas;
using static System.Net.WebRequestMethods;

namespace Edam.Test.Apache.Atlas
{
   [TestClass]
   public class TestAtlasRequest
   {
      [TestMethod]
      public void TestRequest()
      {
         string baseUri = "http://192.168.1.178:21000";
         AtlasHttpClient client = new AtlasHttpClient(
            baseUri, clientId: "admin", clientSecret: "admin");
         var result = client.Search(null, null);

      }
   }
}

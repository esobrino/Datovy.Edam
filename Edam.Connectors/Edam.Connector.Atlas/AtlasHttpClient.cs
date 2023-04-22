using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Edam.Net.Web;
using Edam.Text;

namespace Edam.Connector.Atlas
{

   public enum AtlasSearchType
   {
      unknown = 0,
      basic = 1,
      advance = 2
   }

   public enum AtlasRequestType
   {
      unknown = 0,
      _ALL_ENTITY_TYPES = 1,
      Asset = 2,
      AtlasServer = 3,
      DataSet = 4,
      Path = 5,
      Process = 6,

      kafka_topic
   }

   public enum AtlasSearchClasificationType
   {
      unknown = 0,
      _CLASSIFIED = 1,
      _NOT_CLASSIFIED = 2,
      _ALL_CLASSIFICATION_TYPES = 3
   }

   public class AtlasHttpClient
   {

      private WebApiClient m_Client;

      public AtlasHttpClient(string baseUri = null, 
         string clientId = null, string clientSecret = null)
      {
         try
         {
            m_Client = new WebApiClient(
               baseUri, clientId: clientId, clientSecret: clientSecret);
         }
         catch (Exception ex)
         {
            Console.WriteLine(ex.Message);
         }
      }


      /*
      public object Search(string searchByText, string searchTerm,
         AtlasSearchClasificationType classificationType = 
            AtlasSearchClasificationType.unknown,
         AtlasRequestType? requestType = AtlasRequestType._ALL_ENTITY_TYPES,
         AtlasSearchType? searchType = AtlasSearchType.basic)
      {
         QueryStringBuilder sb = new QueryStringBuilder();

         sb.Add("type", requestType.ToString());
         if (classificationType != AtlasSearchClasificationType.unknown)
         {
            sb.Add("tag", classificationType.ToString());
         }
         sb.Add("searchType", searchType.ToString());
         sb.Add("offset", 0.ToString());
         sb.Add("limit", 25.ToString());
         //sb.Add("term", searchTerm);

         string queryString = sb.ToString();
         string apiRequest = "/api/atlas/v2" + queryString;

         //var resultText = m_Client.GetDataAsText("/api/atlas/v2/types/typedef/name/hive_table");
         //var resultText = m_Client.GetDataAsText("/api/atlas/v2/types/typedefs");");
         //var resultText = m_Client.GetDataAsText("/api/atlas/v2/search/attribute?attrName=createTime&typeName=_ALL_ENTITY_TYPES");
         //var resultText = m_Client.GetDataAsText("/api/atlas/v2/glossary");
         var resultText = m_Client.GetDataAsText("/api/atlas/v2/search/dsl?typeName=Entity");

         return null;
      }
       */

   }

}

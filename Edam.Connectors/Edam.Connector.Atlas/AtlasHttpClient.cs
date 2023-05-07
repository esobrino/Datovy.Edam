using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Edam.Net;
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

   public class AtlasHttpClient : IDisposable
   {

      private HttpRequestInfo m_HttpRequestInfo;
      private WebApiClient m_Client;

      public string Data
      {
         get { return m_Client.Data; }
      }

      public bool Success
      {
         get { return m_Client.Success; }
      }

      public AtlasHttpClient(HttpRequestInfo request)
      {
         m_HttpRequestInfo = request;
         SetHttpClient(request);
      }

      /// <summary>
      /// Given HTTP request information setup the HTTP Client.
      /// </summary>
      /// <param name="request">request details</param>
      public void SetHttpClient(HttpRequestInfo request)
      {
         m_HttpRequestInfo = request;
         try
         {
            m_Client = new WebApiClient(request);
         }
         catch (Exception ex)
         {
            Console.WriteLine(ex.Message);
         }
      }

      /// <summary>
      /// Update resource identified in the URI and QueryString
      /// </summary>
      /// <param name="requestUri">URI / QueryString</param>
      /// <param name="data">new updated data</param>
      public void Put(string requestUri, object data)
      {
         m_Client.Put(requestUri, data);
      }

      /// <summary>
      /// Insert and Update data...  Calls Update (PUT) upon Insert conflict.
      /// </summary>
      /// <param name="requestUri">resource URI</param>
      /// <param name="data">data to put/update</param>
      public void Upsert(string requestUri, object data)
      {
         m_Client.Post(requestUri, data);
         switch(m_Client.Response.StatusCode)
         {
            case System.Net.HttpStatusCode.Conflict:
               Put(requestUri, data);
               break;
            case System.Net.HttpStatusCode.NotFound:
               break;
            case System.Net.HttpStatusCode.OK:
            default:
               break;
         }
      }

      /// <summary>
      /// Release allocated resources.
      /// </summary>
      public void Dispose() 
      {
         if (m_Client != null)
         {
            m_Client.Dispose();
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

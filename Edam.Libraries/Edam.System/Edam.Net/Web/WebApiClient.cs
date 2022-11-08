using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Text;
//using Newtonsoft.Json;

// -----------------------------------------------------------------------------
using Edam.Application.Resources;
using Edam.Serialization;

namespace Edam.Net.Web
{

   /// <summary>
   /// Helper for Web-Api / RESTfull (GET, POST, PUT DELETE) calls.
   /// </summary>
   public class WebApiClient : IDisposable
   {

      private String m_ServerUri;
      private HttpResponseMessage m_Response;
      private HttpClient m_Client;
      private Edam.Diagnostics.ResultLog m_Results = 
         new Diagnostics.ResultLog();
      private WebApiContentType m_ContentType = WebApiContentType.Unknown;

      public String Data { get; set; }
      public Edam.Diagnostics.ResultLog Results
      {
         get { return m_Results; }
      }

      public HttpRequestHeaders Headers
      {
         get { return m_Client.DefaultRequestHeaders; }
      }

      /// <summary>
      /// Initilize client.
      /// </summary>
      /// <param name="uri">URI</param>
      /// <param name="client">prepared HttpClient</param>
      /// <param name="accept">accept Content Type</param>
      /// <param name="contentType">Content Type</param>
      private void Initialize(String uri, HttpClient client,
         WebApiContentType accept = WebApiContentType.ApplicationJson,
         WebApiContentType contentType = WebApiContentType.ApplicationJson)
      {

         m_Results = new Diagnostics.ResultLog();
         m_ServerUri = uri;

         //HttpClientHandler chandler = new HttpClientHandler
         //{
         //   ClientCertificateOptions = ClientCertificateOption.Manual
         //};

         m_Client = client ?? new HttpClient();
         m_Client.BaseAddress = new Uri(m_ServerUri);
         
         if (client == null)
            m_Client.DefaultRequestHeaders.Accept.Clear();
         m_ContentType = contentType;

         if (accept == WebApiContentType.ApplicationJson)
            m_Client.DefaultRequestHeaders.Accept.Add(
               new MediaTypeWithQualityHeaderValue("application/json"));
         else
         if (accept == WebApiContentType.TextPlain)
            m_Client.DefaultRequestHeaders.Add("Accept", "text/plain");
      }

      /// <summary>
      /// Initialize HttpClient with given server URI.
      /// </summary>
      /// <param name="uri">server URI (e.g. http://localhost:8080/) </param>
      public WebApiClient(String uri,
         WebApiContentType accept = WebApiContentType.ApplicationJson,
         WebApiContentType contentType = WebApiContentType.ApplicationJson)
      {
         Initialize(uri, null, accept, contentType);
      }

      public WebApiClient(String uri, HttpClient client,
         WebApiContentType accept = WebApiContentType.ApplicationJson,
         WebApiContentType contentType = WebApiContentType.ApplicationJson)
      {
         Initialize(uri, client, accept, contentType);
      }

      public static void AddBasicAuthentication(
         HttpRequestMessage request, string clientId, string clientSecret)
      {
         var authenticationString = $"{clientId}:{clientSecret}";
         var base64EncodedAuthenticationString =
            System.Convert.ToBase64String(
               System.Text.ASCIIEncoding.UTF8.GetBytes(authenticationString));
         request.Headers.Authorization = new AuthenticationHeaderValue(
            "Basic", base64EncodedAuthenticationString);
      }

      /// <summary>
      /// Get Data Object from JSON.
      /// </summary>
      /// <typeparam name="T">type of data-object to return</typeparam>
      /// <param name="jsonData">JSON data</param>
      /// <returns>instance of type T is returned</returns>
      public T GetDataObjectFromJson<T>(String jsonData = null)
      {
         if (string.IsNullOrWhiteSpace(jsonData))
            jsonData = Data;
         T data =  JsonSerializer.Deserialize<T>(jsonData);
         return data;
      }

      /// <summary>
      /// GET data asynchronously. 
      /// </summary>
      /// <param name="requestUri">request URI (e.g. api/products/1)</param>
      /// <returns>Task is returned</returns>
      public async Task GetAsync(String requestUri)
      {
         m_Response = await m_Client.GetAsync(requestUri).ConfigureAwait(
            continueOnCapturedContext: false);
         Data = await m_Response.Content.ReadAsStringAsync();
      }

      /// <summary>
      /// GET JSON data asynchronously and return the instance of T. 
      /// </summary>
      /// <param name="requestUri">request URI (e.g. api/products/1)</param>
      /// <returns>T is returned, null if some issue was found</returns>
      public T GetDataFromJson<T>(String requestUri)
      {
         m_Results.Clear();
         T data = default(T);
         try
         {
            GetAsync(requestUri).Wait();
            data = GetDataObjectFromJson<T>(Data);
            m_Results.Succeeded();
         }
         catch (Exception ex)
         {
            m_Results.Failed(ex);
         }
         return data;
      }

      /// <summary>
      /// Get data as Text...
      /// </summary>
      /// <param name="requestUri">(optional) request URI (e.g. api/products)
      /// </param>
      /// <returns>result as Text</returns>
      public String GetDataAsText(String requestUri = null)
      {
         String uri = (requestUri == null) ? String.Empty : requestUri;
         m_Results.Clear();
         try
         {
            GetAsync(uri).Wait();
            m_Results.Succeeded();
         }
         catch (Exception ex)
         {
            m_Results.Failed(ex);
         }
         return Data;
      }

      /// <summary>
      /// Get HTTP Content
      /// </summary>
      /// <typeparam name="T">object type</typeparam>
      /// <param name="content">content instance of T</param>
      /// <returns>HttpContent is returned</returns>
      public static HttpContent GetHttpContent<T>(T content)
      {
         String jsonString = JsonSerializer.Serialize(content);
         HttpContent httpContent = new StringContent(jsonString,
            UTF8Encoding.UTF8, Strings.HttpContentTypes.ApplicationJson);
         return httpContent;
      }

      /// <summary>
      /// POST data asynchronously. 
      /// </summary>
      /// <param name="requestUri">request URI (e.g. api/products)</param>
      /// <returns>Task is returned</returns>
      public async Task PostAsync(String requestUri)
      {
         if (m_ContentType == WebApiContentType.ApplicationJson)
         {
            m_Response = await m_Client.PostAsync(requestUri, null);
            Data = await m_Response.Content.ReadAsStringAsync();
         }
         else
         if (m_ContentType == WebApiContentType.ApplicationFormUrlEncoded)
         {
            HttpRequestMessage req =
               new HttpRequestMessage(HttpMethod.Post, requestUri);
            //m_Response = await m_Client.SendAsync(req);
            //Data = await m_Response.Content.ReadAsStringAsync();
            var task = m_Client.SendAsync(req).ContinueWith((taskAndMessage) =>
            {
               m_Response = taskAndMessage.Result;
               var dataTask = m_Response.Content.ReadAsStringAsync();
               dataTask.Wait();
               Data = dataTask.Result;
            });
            task.Wait();
         }
      }

      /// <summary>
      /// POST data asynchronously. 
      /// </summary>
      /// <param name="requestUri">request URI (e.g. api/products)</param>
      /// <param name="payload">data to post</param>
      /// <returns>Task is returned</returns>
      public async Task PostAsync<T>(String requestUri, T payload)
      {
         HttpContent content = GetHttpContent<T>(payload);
         if (m_ContentType == WebApiContentType.ApplicationJson)
         {
            m_Response = await m_Client.PostAsync(requestUri, content);
            Data = await m_Response.Content.ReadAsStringAsync();
         }
         else
         if (m_ContentType == WebApiContentType.ApplicationFormUrlEncoded)
         {
            HttpRequestMessage req =
               new HttpRequestMessage(HttpMethod.Post, requestUri);
            req.Content = new StringContent(payload.ToString(),
               Encoding.UTF8, "application/x-www-form-urlencoded");
            //m_Response = await m_Client.SendAsync(req);
            //Data = await m_Response.Content.ReadAsStringAsync();
            var task = m_Client.SendAsync(req).ContinueWith((taskAndMessage) =>
               {
                  m_Response = taskAndMessage.Result;
                  var dataTask = m_Response.Content.ReadAsStringAsync();
                  dataTask.Wait();
                  Data = dataTask.Result;
               });
            task.Wait();
         }
      }

      /// <summary>
      /// POST data asynchronously. 
      /// </summary>
      /// <param name="requestUri">request URI (e.g. api/products)</param>
      /// <param name="payload">data to post</param>
      /// <returns>Task is returned</returns>
      public void Post<T>(String requestUri, T payload)
      {
         HttpContent content = GetHttpContent<T>(payload);
         if (m_ContentType == WebApiContentType.ApplicationJson)
         {
            var t = m_Client.PostAsync(requestUri, content);
            t.Wait();
            if (t.Status == TaskStatus.RanToCompletion)
            {
               m_Response = t.Result;
               var tread = m_Response.Content.ReadAsStringAsync();
               tread.Wait();
               if (tread.Status == TaskStatus.RanToCompletion)
               {
                  Data = tread.Result;
               }
            }
         }
      }

      /// <summary>
      /// POST data and get JSON data asynchronously and return the instance of T. 
      /// </summary>
      /// <param name="requestUri">request URI (e.g. api/products/1)</param>
      /// <param name="requestData">request Data as string</param>
      /// <returns>T is returned, null if some issue was found</returns>
      public T PostAndGetDataFromJson<T>(String requestUri, String requestData)
      {
         m_Results.Clear();
         T data = default(T);
         try
         {
            PostAsync<String>(requestUri, requestData).Wait();
            data = GetDataObjectFromJson<T>(Data);
            m_Results.Succeeded();
         }
         catch (Exception ex)
         {
            m_Results.Failed(ex);
         }
         return data;
      }

      /// <summary>
      /// PUT data asynchronously. 
      /// </summary>
      /// <param name="requestUri">request URI (e.g. api/products/1)</param>
      /// <param name="payload">data to put (update)</param>
      /// <returns>Task is returned</returns>
      public async Task PutAsync<T>(String requestUri, T payload)
      {
         HttpContent content = GetHttpContent<T>(payload);
         m_Response = await m_Client.PutAsync(requestUri, content);
      }

      /// <summary>
      /// DELETE data asynchronously. 
      /// </summary>
      /// <param name="requestUri">request URI (e.g. api/products/1)</param>
      /// <param name="payload">data to delete</param>
      /// <returns>Task is returned</returns>
      public async Task DeleteAsync(String requestUri)
      {
         m_Response = await m_Client.DeleteAsync(requestUri);
      }
      
      /// <summary>
      /// Clean up resources...
      /// </summary>
      public void Dispose()
      {
         if (m_Client != null)
            m_Client.Dispose();
         m_Client = null;
      }

   }

}

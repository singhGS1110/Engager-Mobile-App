using EngagerMobile.Mariteam.ApplicationCore.Entities.General;
using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.Common.Constants;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Services.Notifications
{
    public class NotificationService
    {
        protected int MaxResponseContentBufferSize = 256000;

        public async Task<IEnumerable<Notification>> GetNotifications(Int64 userId)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.GET_NOTIFICATIONS);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("userId", UserConfigs.USER_ID.ToString()),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(20);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                    if (response.IsSuccessStatusCode)
                    {
                        IEnumerable<Notification> notifications = new List<Notification>();

                        string responseContent = await response.Content.ReadAsStringAsync();
                        try
                        {
                            notifications = JsonConvert.DeserializeObject<IEnumerable<Notification>>(responseContent);
                        }
                        catch (Exception ex)
                        {

                        }


                        return notifications.ToList();
                    }

                    return new List<Notification>();
                }
            }
            catch (Exception ex)
            {
                return new List<Notification>();
            }
        }

        public async Task<int> GetNotificationCount()
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.GET_NOTIFICATION_COUNT);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("userId", UserConfigs.USER_ID.ToString()),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(20);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                    if (response.IsSuccessStatusCode)
                    {
                        string responseContent = await response.Content.ReadAsStringAsync();
                        try
                        {
                             var result = JsonConvert.DeserializeObject<ApiResult>(responseContent);

                            //if (apiResults == null)
                            //{
                            //    return 0;
                            //}

                            //var result = apiResults.FirstOrDefault();


                            if (result.Id == 200)
                            {
                                return Convert.ToInt32(result.Value);
                            }
                        }
                        catch (Exception ex)
                        {
                            return 0;
                        }
                    }
                    else
                    {
                        return 0;
                    }

                    return 0;
                }
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public async Task<bool> AcknowledgeNotification(Int64 notificationId)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.ACKNOWLEDGE_NOTIFICATIONS);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("NotificationId", notificationId.ToString()),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(20);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);


                    if (response.IsSuccessStatusCode)
                    {
                        string responseContent = await response.Content.ReadAsStringAsync();

                        ApiResult result = JsonConvert.DeserializeObject<ApiResult>(responseContent);

                        if (result == null)
                        {
                            return false;
                        }

                        if (result.Id == 200)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}

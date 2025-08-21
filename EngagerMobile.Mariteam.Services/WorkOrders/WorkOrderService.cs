using EngagerMobile.Mariteam.ApplicationCore.Cris;
using EngagerMobile.Mariteam.ApplicationCore.Entities.General;
using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.Common.Constants;
using Newtonsoft.Json;
using Plugin.Geolocator.Abstractions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Services.WorkOrders
{
    public class WorkOrderService
    {
        protected int MaxResponseContentBufferSize = 256000;

        public async Task<WorkOrder> GetOrderBySJId(Int64 serviceJobId)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.GET_WORKORDER_BY_SJID);

                    var formContent = new FormUrlEncodedContent(new[]
    {
                    new KeyValuePair<string,string>("serviceJobId", serviceJobId.ToString()),
                    new KeyValuePair<string, string>("userId", UserConfigs.USER_ID.ToString()),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);                                       

                    if (response.IsSuccessStatusCode)
                    {
                        try
                        {
                            string responseContent = await response.Content.ReadAsStringAsync();

                            WorkOrder apiResult = JsonConvert.DeserializeObject<WorkOrder>(responseContent);

                            return apiResult;
                        }
                        catch (Exception ex)
                        {
                            return new WorkOrder();
                        }
                    }

                    return new WorkOrder();
                }
            }
            catch(Exception ex)
            {
                return null;
            }
        }

        public async Task<WorkOrder> GetOrderByWOId(Int64 workOrderId)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.GET_WORKORDER_BY_WOID);

                    var formContent = new FormUrlEncodedContent(new[]
    {
                    new KeyValuePair<string,string>("workOrderId", workOrderId.ToString()),
                    new KeyValuePair<string, string>("userId", UserConfigs.USER_ID.ToString()),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                    if (response.IsSuccessStatusCode)
                    {
                        try
                        {
                            string responseContent = await response.Content.ReadAsStringAsync();

                            WorkOrder apiResult = JsonConvert.DeserializeObject<WorkOrder>(responseContent);

                            return apiResult;
                        }
                        catch (Exception ex)
                        {
                            return new WorkOrder();
                        }
                    }

                    return new WorkOrder();
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public async Task<IEnumerable<WorkOrder>> Get(WorkOrderCri aCri)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.GET_WORKORDERS);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("userId", UserConfigs.USER_ID.ToString()),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                    if (response.IsSuccessStatusCode)
                    {
                        IEnumerable<WorkOrder> workOrders = new List<WorkOrder>();

                        string responseContent = await response.Content.ReadAsStringAsync();
                        try
                        {
                            workOrders = JsonConvert.DeserializeObject<IEnumerable<WorkOrder>>(responseContent);
                        }
                        catch (Exception ex)
                        {

                        }


                        return workOrders.ToList();
                    }

                    return new List<WorkOrder>();
                }
            }
            catch(Exception ex)
            {
                return new List<WorkOrder>();
            }
        }

        public async Task<bool> Acknowledge(Int64 serviceJobId)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.ACKNOWLEDGE_WORKORDER);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("serviceJobId", serviceJobId.ToString()),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                    });

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                    if (response.IsSuccessStatusCode)
                    {
                        string responseContent = await response.Content.ReadAsStringAsync();

                        IEnumerable<ApiResult> apiResults = JsonConvert.DeserializeObject<IEnumerable<ApiResult>>(responseContent);

                        if (apiResults == null)
                        {
                            return false;
                        }

                        var result = apiResults.FirstOrDefault();

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
            catch(Exception ex)
            {
                return false;
            }
        }

        public async Task<bool> BeginTask(Int64 serviceJobId, Position position)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.BEGIN_TASK);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("serviceJobId", serviceJobId.ToString()),
                    new KeyValuePair<string, string>("longitude", position.Longitude.ToString()),
                    new KeyValuePair<string, string>("latitude", position.Latitude.ToString()),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                    });

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                    if (response.IsSuccessStatusCode)
                    {
                        string responseContent = await response.Content.ReadAsStringAsync();

                        IEnumerable<ApiResult> apiResults = JsonConvert.DeserializeObject<IEnumerable<ApiResult>>(responseContent);

                        if (apiResults == null)
                        {
                            return false;
                        }

                        var result = apiResults.FirstOrDefault();

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
            catch(Exception ex)
            {
                return false;
            }
        }

        public async Task<IEnumerable<RankEntity>> GetRanks()
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.GET_RANKS);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                    });

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    try
                    {
                        HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                        if (response.IsSuccessStatusCode)
                        {
                            string responseContent = await response.Content.ReadAsStringAsync();

                            IEnumerable<RankEntity> rankModels = JsonConvert.DeserializeObject<IEnumerable<RankEntity>>(responseContent);

                            return rankModels.ToList();
                        }
                        else
                        {
                            return new List<RankEntity>();
                        }

                    }

                    catch (Exception ex)
                    {
                        return null;
                    }
                }
            }
            catch(Exception ex)
            {
                return null;
            }
        }

        public async Task<bool> EndTask(Int64 serviceJobId, Position position, Int64 rankId, string signatureName, string pickUpPax, string standByDate, string standByTime, string reason)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.END_TASK);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("serviceJobId", serviceJobId.ToString()),
                    new KeyValuePair<string, string>("longitude", position.Longitude.ToString()),
                    new KeyValuePair<string, string>("latitude", position.Latitude.ToString()),
                    new KeyValuePair<string, string>("userId", UserConfigs.USER_ID.ToString()),
                    new KeyValuePair<string, string>("rankId", rankId.ToString()),
                    new KeyValuePair<string, string>("signatureName", signatureName.ToString()),
                    new KeyValuePair<string, string>("pickUpPax", pickUpPax.ToString()),
                    new KeyValuePair<string, string>("standByDate", standByDate),
                    new KeyValuePair<string, string>("standByTime", standByTime),
                    new KeyValuePair<string, string>("reason", reason),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                    if (response.IsSuccessStatusCode)
                    {
                        string responseContent = await response.Content.ReadAsStringAsync();

                        IEnumerable<ApiResult> apiResults = JsonConvert.DeserializeObject<IEnumerable<ApiResult>>(responseContent);

                        if (apiResults == null)
                        {
                            return false;
                        }

                        var result = apiResults.FirstOrDefault();

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
            catch(Exception ex)
            {
                return false;
            }
        }
    }
}

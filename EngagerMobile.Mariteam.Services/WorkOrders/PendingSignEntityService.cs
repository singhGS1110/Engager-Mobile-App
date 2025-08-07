using EngagerMobile.Mariteam.ApplicationCore.Cris;
using EngagerMobile.Mariteam.ApplicationCore.Entities.General;
using EngagerMobile.Mariteam.ApplicationCore.Entities.WorkOrders;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.Common.Constants;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Services.WorkOrders
{
    public class PendingSignEntityService
    {
        protected int MaxResponseContentBufferSize = 256000;

        public async Task<IEnumerable<PendingSignEntity>> Get(PendingSignEntityCri aCri)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.GET_PENDINGSIGNMODELS);

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

                            IEnumerable<PendingSignEntity> pendingSignModels = JsonConvert.DeserializeObject<IEnumerable<PendingSignEntity>>(responseContent);

                            return pendingSignModels.ToList();
                        }
                        else
                        {
                            return new List<PendingSignEntity>();
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

        public async Task<bool> Save(CompletedPendingSignEntity aEntity)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.SUBMIT_PENDINGSIGNMODEL);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("checklistIds", aEntity.checklistIds),
                    new KeyValuePair<string, string>("additionStops", aEntity.additionalStops),
                    new KeyValuePair<string, string>("disposals", aEntity.disposals),
                    new KeyValuePair<string, string>("waitingTime", aEntity.waitingTime),
                    new KeyValuePair<string, string>("meetingServiceIds", aEntity.meetingServiceIds),
                    new KeyValuePair<string, string>("customDetentionId", aEntity.customDetentionId),
                    new KeyValuePair<string, string>("remark", aEntity.remark),
                    new KeyValuePair<string, string>("pickupPax", aEntity.pickupPax),
                    new KeyValuePair<string, string>("serviceJobId", aEntity.serviceJobId),
                    new KeyValuePair<string, string>("tripFees", aEntity.tripFees.ToString()),
                    new KeyValuePair<string, string>("isMSIncluded", aEntity.isMSIncluded.ToString()),
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

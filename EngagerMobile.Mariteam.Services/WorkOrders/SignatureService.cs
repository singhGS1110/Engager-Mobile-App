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
    public class SignatureService
    {
        private int MaxResponseContentBufferSize = 256000;

        public async Task<bool> Save(Signature aEntity)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    MultipartFormDataContent content = new MultipartFormDataContent();

                    ByteArrayContent baContent = new ByteArrayContent(aEntity.signatureFile);

                    StringContent serviceJobId = new StringContent(aEntity.serviceJobId.ToString());
                    StringContent userId = new StringContent(UserConfigs.USER_ID.ToString());
                    StringContent signatureName = new StringContent(aEntity.signatureName);
                    StringContent parentCompanyId = new StringContent(UserConfigs.PARENTCOMPANY_ID.ToString());
                    StringContent api = new StringContent(ApiConstants.KEY);

                    content.Add(baContent, "File", serviceJobId + ".png");
                    content.Add(serviceJobId, "serviceJobId");
                    content.Add(userId, "userId");
                    content.Add(signatureName, "signatureName");
                    content.Add(parentCompanyId, "ParentCompanyId");
                    content.Add(api, ApiConstants.TOKEN_NAME);

                    var uri = UrlConstants.GetUri(UrlConstants.SUBMIT_SIGNATURE);

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    var response = await httpClient.PostAsync(uri, content);

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

        //SaveV2
        public async Task<bool> SaveWithPassengerId(Signature aEntity)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    MultipartFormDataContent content = new MultipartFormDataContent();

                    ByteArrayContent baContent = new ByteArrayContent(aEntity.signatureFile);

                    StringContent serviceJobId = new StringContent(aEntity.serviceJobId.ToString());
                    StringContent userId = new StringContent(UserConfigs.USER_ID.ToString());
                    StringContent signatureName = new StringContent(aEntity.signatureName);
                    StringContent signerPassengerId = new StringContent(aEntity.PassengerId.ToString());
                    StringContent parentCompanyId = new StringContent(UserConfigs.PARENTCOMPANY_ID.ToString());
                    StringContent api = new StringContent(ApiConstants.KEY);

                    content.Add(baContent, "File", serviceJobId + ".png");
                    content.Add(serviceJobId, "serviceJobId");
                    content.Add(userId, "userId");
                    content.Add(signatureName, "signatureName");
                    content.Add(signerPassengerId, "signerPassengerId");
                    content.Add(parentCompanyId, "ParentCompanyId");
                    content.Add(api, ApiConstants.TOKEN_NAME);

                    var uri = UrlConstants.GetUri(UrlConstants.SUBMIT_SIGNATURE_WITH_PASSENGER);

                    httpClient.Timeout = TimeSpan.FromSeconds(60);

                    var response = await httpClient.PostAsync(uri, content);

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
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}

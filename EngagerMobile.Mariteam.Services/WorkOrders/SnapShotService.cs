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
    public class SnapShotService
    {
        private int MaxResponseContentBufferSize = 256000;

        public async Task<bool> Save(SnapShot sEntity)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    MultipartFormDataContent content = new MultipartFormDataContent();

                    ByteArrayContent baContent = new ByteArrayContent(sEntity.snapShotFile);

                    StringContent fileName = new StringContent(sEntity.filename);
                    StringContent serviceJobId = new StringContent(sEntity.serviceJobId.ToString());
                    StringContent fileDescription = new StringContent(sEntity.description.ToString());
                    StringContent userId = new StringContent(UserConfigs.USER_ID.ToString());
                    StringContent parentCompanyId = new StringContent(UserConfigs.PARENTCOMPANY_ID.ToString());
                    StringContent api = new StringContent(ApiConstants.KEY);

                    content.Add(baContent, "File", sEntity.filename + ".jpg");
                    content.Add(fileName, "fileName");
                    content.Add(fileDescription, "fileDescription");
                    content.Add(serviceJobId, "serviceJobId");
                    content.Add(userId, "userId");
                    content.Add(parentCompanyId, "ParentCompanyId");
                    content.Add(api, ApiConstants.TOKEN_NAME);

                    var uri = UrlConstants.GetUri(UrlConstants.UPLOAD_SNAPSHOT);

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
    }
}

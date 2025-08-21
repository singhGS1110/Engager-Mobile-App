using EngagerMobile.Mariteam.ApplicationCore.Cris;
using EngagerMobile.Mariteam.ApplicationCore.Entities.General;
using EngagerMobile.Mariteam.ApplicationCore.Models;
using EngagerMobile.Mariteam.Common.Configs;
using EngagerMobile.Mariteam.Common.Constants;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Services.Users
{
    public class UserService
    {
        protected int MaxResponseContentBufferSize = 256000;

        User currentUser;

        public async Task<User> Exist(UserCri userCri, string Token)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.LOGIN);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("userName", userCri.UserName),
                    new KeyValuePair<string, string>("password", userCri.Password),
                    new KeyValuePair<string, string>("fcmId", Token ),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(40);

                    HttpResponseMessage response = await httpClient.PostAsync(uri, formContent);

                    if (response.IsSuccessStatusCode)
                    {
                        string responseContent = await response.Content.ReadAsStringAsync();

                        IEnumerable<ApiResult> apiResults = JsonConvert.DeserializeObject<IEnumerable<ApiResult>>(responseContent);

                        if (apiResults == null)
                        {
                            return null;
                        }

                        var result = apiResults.FirstOrDefault();

                        if (result == null)
                        {
                            return null;
                        }

                        if (result.Id == 200)
                        {
                            currentUser = new User()
                            {
                                User_Id = result.UserId,
                                ParentCompany_Id = result.ParentCompanyId,
                                Name = result.CurrentUserName,
                                UserName = userCri.UserName,
                                Password = userCri.Password,
                                isSignedIn = true
                            };

                            UserConfigs.USER_ID = currentUser.User_Id;
                            UserConfigs.Name = currentUser.Name;
                            UserConfigs.PARENTCOMPANY_ID = currentUser.ParentCompany_Id;

                            return currentUser;
                        }
                        else
                        {
                            return null;
                        }
                    }

                    return null;
                }
                throw new NotImplementedException();
            }
            catch(Exception ex)
            {
                return null;
            }
            
        }

        public async Task<bool> LogOut(string userName)
        {
            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.MaxResponseContentBufferSize = MaxResponseContentBufferSize;

                    var uri = UrlConstants.GetUri(UrlConstants.LOGOUT);

                    var formContent = new FormUrlEncodedContent(new[]
                    {
                    new KeyValuePair<string,string>("userName", userName),
                    new KeyValuePair<string, string>("ParentCompanyId", UserConfigs.PARENTCOMPANY_ID.ToString()),
                    new KeyValuePair<string, string>(ApiConstants.TOKEN_NAME, ApiConstants.KEY)
                });

                    httpClient.Timeout = TimeSpan.FromSeconds(20);

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

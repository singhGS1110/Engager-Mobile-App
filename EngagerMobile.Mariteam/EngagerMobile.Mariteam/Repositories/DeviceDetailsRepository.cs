using EngagerMobile.Mariteam.ApplicationCore.Models;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Repositories
{
    public class DeviceDetailsRepository
    {
        private SQLiteAsyncConnection connAsync;

        public string StatusMessage { get; set; }


        public DeviceDetailsRepository(string dbPath)
        {
            connAsync = new SQLiteAsyncConnection(dbPath);
            connAsync.CreateTableAsync<DeviceDetails>().Wait();
        }

        public async Task AddDeviceDetailsAsync(DeviceDetails details)
        {
            int result = 0;
            try
            {
                result = await connAsync.InsertAsync(details);

                StatusMessage = string.Format("{0} record(s) added [Id: {1})", result, details.devToken);
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("Failed to add user Id: {0}. Error: {1}", details.devToken, ex.Message);
            }
        }

        public async Task<DeviceDetails> GetDeviceDetailsAsync(Int64 Id)
        {
            try
            {
                DeviceDetails details = await connAsync.Table<DeviceDetails>().Where(x => x.Id.Equals(Id)).FirstOrDefaultAsync();
                if (!(details == null))
                {
                    return details;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("No Token. {0}", ex.Message);
                return null;
            }
        }

    }
}

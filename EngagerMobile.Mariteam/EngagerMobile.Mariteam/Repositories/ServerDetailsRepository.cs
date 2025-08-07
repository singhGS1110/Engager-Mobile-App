using EngagerMobile.Mariteam.ApplicationCore.Models;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Repositories
{
    public class ServerDetailsRepository
    {
        private SQLiteAsyncConnection connAsync;
        private ServerDetails currentDetail;

        public string StatusMessage { get; set; }


        public ServerDetailsRepository(string dbPath)
        {
            connAsync = new SQLiteAsyncConnection(dbPath);
            connAsync.CreateTableAsync<ServerDetails>().Wait();
        }

        public async Task AddServerDetailsAsync(ServerDetails details)
        {
            int result = 0;
            try
            {
                UpdateServerInUseStatusAsync();

                result = await connAsync.InsertAsync(details);

                StatusMessage = string.Format("{0} record(s) added [Id: {1})", result, details.IP);
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("Failed to add user Id: {0}. Error: {1}", details.IP, ex.Message);
            }
        }

        public async Task UpdateServerDetailsAsync(ServerDetails details)
        {
            int result = 0;
            try
            {
                UpdateServerInUseStatusAsync();

                result = await connAsync.UpdateAsync(details);

                StatusMessage = string.Format("{0} record(s) updated [Id: {1})", result, details.IP);
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("Failed to update user Id: {0}. Error: {1}", details.IP, ex.Message);
            }

        }

        public async Task<ServerDetails> GetServerDetailsByIPAsync(string IP)
        {
            try
            {
                ServerDetails details = await connAsync.Table<ServerDetails>().Where(x => x.IP.Equals(IP)).FirstOrDefaultAsync();
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
                StatusMessage = string.Format("No such User. {0}", ex.Message);
                return null;
            }
        }

        public async void UpdateServerInUseStatusAsync()
        {
            currentDetail = await connAsync.Table<ServerDetails>().Where(x => x.inUse == true).FirstOrDefaultAsync();

            if (!(currentDetail == null))
            {
                currentDetail.inUse = false;
            }

            await connAsync.UpdateAsync(currentDetail);
        }

        public async Task<ServerDetails> GetCurrentServerAsync()
        {
            try
            {
                return await connAsync.Table<ServerDetails>().Where(x => x.inUse == true).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("No Logged In User. {0}", ex.Message);
            }

            return new ServerDetails() { inUse = false };

        }
    }
}

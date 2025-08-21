using EngagerMobile.Mariteam.ApplicationCore.Models;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Repositories
{
    public class WorkOrderStatusRepository
    {
        private SQLiteAsyncConnection connAsync;

        private WorkOrderStatus currentStatus;

        public string StatusMessage { get; set; }

        public WorkOrderStatusRepository(string dbPath)
        {
            connAsync = new SQLiteAsyncConnection(dbPath);
            connAsync.CreateTableAsync<WorkOrderStatus>().Wait();
        }

        public async Task AddWorkOrderStatusAsync(WorkOrderStatus woStatus)
        {
            int result = 0;
            try
            {
                result = await connAsync.InsertAsync(woStatus);

                StatusMessage = string.Format("{0} record(s) added [Id: {1})", result, woStatus.WorkOrderId);
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("Failed to add user Id: {0}. Error: {1}", woStatus.WorkOrderId, ex.Message);
            }
        }

        public async Task UpdateWorkOrderStatusAsync(WorkOrderStatus woStatus)
        {
            int result = 0;
            try
            {
                result = await connAsync.UpdateAsync(woStatus);

                StatusMessage = string.Format("{0} record(s) updated [Id: {1})", result, woStatus.WorkOrderId);
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("Failed to update user Id: {0}. Error: {1}", woStatus.WorkOrderId, ex.Message);
            }

        }

        public async Task<WorkOrderStatus> GetWorkOrderStatusByIdAsync(Int64 woId, Int64 sjId)
        {
            try
            {
                WorkOrderStatus woStatus = await connAsync.Table<WorkOrderStatus>().Where(x => x.WorkOrderId == woId && x.serviceJobId == sjId ).FirstOrDefaultAsync();
                if (!(woStatus == null))
                {
                    return woStatus;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("No such Work Order. {0}", ex.Message);
                return null;
            }
        }

        public async Task UpdateCustomerSignatureState(Int64 woId, Int64 sjId)
        {
            currentStatus = await connAsync.Table<WorkOrderStatus>().Where(x => x.WorkOrderId == woId && x.serviceJobId == sjId).FirstOrDefaultAsync();

            if (currentStatus == null)
            {
                return;
            }

            currentStatus.isSignedByCustomer = true;

            await connAsync.UpdateAsync(currentStatus);
        }
    }
}

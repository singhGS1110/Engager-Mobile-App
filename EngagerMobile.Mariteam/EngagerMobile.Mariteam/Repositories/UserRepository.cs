using EngagerMobile.Mariteam.ApplicationCore.Models;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Repositories
{
    public class UserRepository
    {
        private SQLiteAsyncConnection connAsync;
        public string StatusMessage { get; set; }

        public UserRepository(string dbPath)
        {
            connAsync = new SQLiteAsyncConnection(dbPath);
            connAsync.CreateTableAsync<User>().Wait();
        }

        public async Task AddUserAsync(User user)
        {
            int result = 0;
            try
            {
                result = await connAsync.InsertAsync(user);

                StatusMessage = string.Format("{0} record(s) added [Id: {1})", result, user.User_Id);
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("Failed to add user Id: {0}. Error: {1}", user.User_Id, ex.Message);
            }
        }

        public async Task UpdateUserAsync(User user)
        {
            int result = 0;
            try
            {
                result = await connAsync.UpdateAsync(user);

                StatusMessage = string.Format("{0} record(s) updated [Id: {1})", result, user.User_Id);
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("Failed to update user Id: {0}. Error: {1}", user.User_Id, ex.Message);
            }

        }

        public async Task<User> GetUserByIdAsync(Int64 User_Id)
        {
            try
            {
                User user = await connAsync.Table<User>().Where(x => x.User_Id == User_Id).FirstOrDefaultAsync();
                if (!(user == null))
                {
                    return user;
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

        public async Task<User> GetLoggedInUserAsync()
        {
            try
            {
                return await connAsync.Table<User>().Where(x => x.isSignedIn == true).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {
                StatusMessage = string.Format("No Logged In User. {0}", ex.Message);
            }

            return new User() { isSignedIn = false };

        }
    }
}

using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Services
{
    public abstract class AbstractService<T, C>
    {
        // This amount is very important and should not be changed.

        protected int MaxResponseContentBufferSize = 256000;

        public abstract Task<bool> Exist(C aCri);

        public abstract Task<IEnumerable<T>> Get(C aCri);

        public abstract Task<T> GetById(int id);

        public abstract Task<T> Save(T aEntity);

        public abstract Task<bool> Delete(T aEntity);
    }
}

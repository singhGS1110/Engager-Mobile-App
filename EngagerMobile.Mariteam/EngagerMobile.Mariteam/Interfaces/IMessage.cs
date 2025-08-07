using System;
using System.Collections.Generic;
using System.Text;

namespace EngagerMobile.Mariteam.Interfaces
{
    public interface IMessage
    {
        void LongAlert(string messsage);
        void ShortAlert(string message);
    }
}

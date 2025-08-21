using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace EngagerMobile.Mariteam.Common.Utility
{
    public class ImageManipulator
    {
        public static byte[] ConvertStreamToByteArray(Stream input)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                input.CopyTo(ms);
                return ms.ToArray();
            }
        }
    }
}

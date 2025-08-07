using Plugin.Geolocator;
using Plugin.Geolocator.Abstractions;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EngagerMobile.Mariteam.Services.GeoLocation
{
    public class GeoLocationService
    {
        public GeoLocationService()
        { }

        public async Task<Position> GetCurrentLocation()
        {
            var locator = CrossGeolocator.Current;

            var position = await locator.GetPositionAsync(TimeSpan.FromSeconds(10));

            return position;
        }
    }
}

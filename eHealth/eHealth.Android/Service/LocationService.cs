using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace eHealth.Services
{
    public class LocationService
    {
        public async Task<Location> GetLocationAsync()
        {
            try
            {
                var status = await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();
                if (status != PermissionStatus.Granted)
                {
                    status = await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
                }

                if (status == PermissionStatus.Granted)
                {
                    var location = await Geolocation.GetLastKnownLocationAsync();
                    if (location != null)
                    {
                        return location;
                    }
                    else
                    {
                        var request = new GeolocationRequest(GeolocationAccuracy.Medium);
                        location = await Geolocation.GetLocationAsync(request);

                        if (location != null)
                        {
                            return location;
                        }
                    }
                }
                else
                {
                    throw new Exception("Location permission denied");
                }
            }
            catch (FeatureNotSupportedException fnsEx)
            {
                Console.WriteLine(fnsEx.Message);
            }
            catch (FeatureNotEnabledException fneEx)
            {
                Console.WriteLine(fneEx.Message);
            }
            catch (PermissionException pEx)
            {
                Console.WriteLine(pEx.Message);
            }
            return null;
        }

        public async Task<string> GetLocationDescriptionAsync(Location location)
        {
            try
            {
                var placemarks = await Geocoding.GetPlacemarksAsync(location);
                var placemark = placemarks?.FirstOrDefault();
                if (placemark != null)
                {
                    return $"{placemark.Thoroughfare}, {placemark.Locality}, {placemark.AdminArea}, {placemark.CountryName}";
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error getting location description: {ex.Message}");
            }
            return "Unknown location";
        }
    }
}

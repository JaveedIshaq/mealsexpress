import 'package:geolocator/geolocator.dart';
import 'package:mealexpressapp/Repostries/geolcation/base_geolocation_repostry.dart';

class GeoLocationRepository extends BaseGeoLocationRepository {
  GeoLocationRepository();

  @override
  Future<Position> getCurrentLocation() async {
// Check if location permission is granted
    bool isLocationPermissionGranted =
        await Geolocator.checkPermission() == LocationPermission.always ||
            await Geolocator.checkPermission() == LocationPermission.whileInUse;

    if (isLocationPermissionGranted) {
      // Location permission already granted, proceed with getting location

      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } else {
      // Location permission not granted, request permission from the user
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse) {
        // Location permission granted, proceed with getting location
        return await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
      } else {
        // Location permission denied by the user, handle accordingly
        throw Exception();
      }
    }
  }
}

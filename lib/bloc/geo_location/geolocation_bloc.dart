// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';

import '../../Repostries/geolcation/geolocation_repostry.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeoLocationRepository _geoLocationRepository;

  GeolocationBloc({required GeoLocationRepository geoLocationRepository})
      : _geoLocationRepository = geoLocationRepository,
        super(GeolocationLoading()) {
    on<LoadGeoLocation>(_mapLoadGeoLocationState);
  }

  void _mapLoadGeoLocationState(
    GeolocationEvent event,
    Emitter<GeolocationState> emit,
  ) async {
    emit(GeolocationLoading());
    try {
      final Position position =
          await _geoLocationRepository.getCurrentLocation();

      print("Position:$position");

      emit(GeolocationLoaded(position: position));
    } on Exception catch (e) {
      print("$e");
      emit(GeolocationError());
    }
  }
}

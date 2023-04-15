// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealexpressapp/bloc/geo_location/geolocation_bloc.dart';
import 'package:mealexpressapp/widgets/gmaps.dart';

import '../../widgets/location_search_box.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';

  const LocationScreen({super.key});
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const LocationScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            // constraints: BoxConstraints.expand(),

            child: BlocBuilder<GeolocationBloc, GeolocationState>(
              builder: (context, state) {
                print("####### state is $state");
                if (state is GeolocationLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GeolocationLoaded) {
                  return GMaps(
                      lat: state.position.latitude,
                      lan: state.position.latitude);
                } else {
                  return const Center(
                    child: Text('Something went wrong.'),
                  );
                }
              },
            )),
        Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 100,
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.red,
                    size: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: LocationSearchBox()),
                ],
              ),
            )),
        Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor),
                  onPressed: () {},
                  child: const Text('Save')),
            )),
      ],
    ));
  }
}

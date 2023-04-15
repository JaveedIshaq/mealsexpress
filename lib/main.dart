import 'package:flutter/material.dart';
import 'package:mealexpressapp/Config/theme.dart';
import 'package:mealexpressapp/Repostries/geolcation/geolocation_repostry.dart';
import 'package:mealexpressapp/Screens/location/location_screen.dart';
import 'package:mealexpressapp/bloc/geo_location/geolocation_bloc.dart';

import 'Config/app_router.dart';
import 'Screens/home_screen/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<GeoLocationRepository>(
              create: (_) => GeoLocationRepository()),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => GeolocationBloc(
                    geoLocationRepository:
                        context.read<GeoLocationRepository>())
                  ..add(LoadGeoLocation())),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food Delivery',
            theme: theme(),
            onGenerateRoute: AppRouter.onGenerateRoute,
            initialRoute: LocationScreen.routeName,
          ),
        ));
  }
}


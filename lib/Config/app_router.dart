import 'package:flutter/material.dart';
import 'package:mealexpressapp/Screens/baskte/basket_screen.dart';
import 'package:mealexpressapp/Screens/check_out/check_out_screen.dart';
import 'package:mealexpressapp/Screens/filter/filter_screen.dart';
import 'package:mealexpressapp/Screens/resturant_details/resturant_details.dart';
import 'package:mealexpressapp/Screens/resturant_listning/resturant_listning_screen.dart';
import 'package:mealexpressapp/Screens/voucher/voucher_screen.dart';

import '../Screens/delivery_time/delivery_time_screen.dart';
import '../Screens/home_screen/home_screen.dart';
import '../Screens/location/location_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckOutScreen.routeName:
        return CheckOutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case ResturantListningScreen.routeName:
        return ResturantListningScreen.route();
      case ResturantDetailsScreen.routeName:
        return ResturantDetailsScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();

        break;
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('error'),
        ),
      ),
      settings: RouteSettings(name: '/error'),
    );
  }
}

import 'package:flutter/material.dart';
class ResturantListningScreen extends StatelessWidget {
  static  const String routeName = '/resturantlistning';
  static Route  route(){
    return MaterialPageRoute(builder: (_)=>ResturantListningScreen(),
        settings: RouteSettings(name: routeName)
    );


  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

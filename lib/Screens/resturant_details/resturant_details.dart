import 'package:flutter/material.dart';
class ResturantDetailsScreen extends StatelessWidget {
  static  const String routeName = '/resturantdetails';
  static Route  route(){
    return MaterialPageRoute(builder: (_)=>ResturantDetailsScreen(),
        settings: RouteSettings(name: routeName)
    );


  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

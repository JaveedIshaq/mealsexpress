import 'package:flutter/material.dart';
class FilterScreen extends StatelessWidget {
  static  const String routeName = '/filter';
  static Route  route(){
    return MaterialPageRoute(builder: (_)=>FilterScreen(),
        settings: RouteSettings(name: routeName)
    );


  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

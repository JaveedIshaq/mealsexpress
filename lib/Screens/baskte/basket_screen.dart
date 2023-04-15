import 'package:flutter/material.dart';
class BasketScreen extends StatelessWidget {

  static  const String routeName = '/basket';
  static Route  route(){
    return MaterialPageRoute(builder: (_)=>BasketScreen(),
        settings: RouteSettings(name: routeName)
    );


  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

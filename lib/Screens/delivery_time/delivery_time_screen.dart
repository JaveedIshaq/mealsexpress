import 'package:flutter/material.dart';
class DeliveryTimeScreen extends StatelessWidget {

  static  const String routeName = '/deliverytime';
  static Route  route(){
    return MaterialPageRoute(builder: (_)=>DeliveryTimeScreen(),
        settings: RouteSettings(name: routeName)
    );


  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

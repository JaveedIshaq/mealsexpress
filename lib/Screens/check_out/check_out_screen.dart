import 'package:flutter/material.dart';
class CheckOutScreen extends StatelessWidget {

  static  const String routeName = '/check_out';
  static Route  route(){
    return MaterialPageRoute(builder: (_)=>CheckOutScreen(),
        settings: RouteSettings(name: routeName)
    );


  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GMaps extends StatelessWidget {
  const GMaps({Key? key, required this.lat, required this.lan}) : super(key: key);
  final double lat;
  final double lan;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
        myLocationEnabled: true,
        initialCameraPosition:
        CameraPosition(target: LatLng(lat, lan), zoom: 5),
      ),
    );
  }
}

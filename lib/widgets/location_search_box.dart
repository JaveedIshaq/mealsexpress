import 'package:flutter/material.dart';
class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Enter Your Location',
            suffixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.only(left: 20, bottom: 5, top: 5),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white)
            )
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildRestaurantPersonalInfo extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String name;
  final String location;
  BuildRestaurantPersonalInfo({
    required this.screenWidth,
    required this.screenHeight,
    required this.name,
    required this.location,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: screenHeight*0.03),
        Text(
          name,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize:screenWidth*0.065,
              color: Color(0xFF1D3062)),
        ),
        SizedBox(height: screenHeight*0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.grey,
              size: screenWidth*0.065,
            ),
            Text(
              location,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.045,
                  color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}

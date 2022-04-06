import 'package:flutter/material.dart';

class BuildRestaurantCardInfo extends StatelessWidget {
  final String restaurantName;
  final String type;
  final String date;
  final double screenWidth;
  final double screenHeight;

  BuildRestaurantCardInfo({
    required this.restaurantName,
    required this.type,
    required this.date,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: screenHeight*0.01),
        Text(restaurantName,
          style: TextStyle(
              color: const Color(0xFF233467),
              fontFamily: 'Montserrat',
              fontSize: screenWidth*0.04
          ),
        ),
        SizedBox(height: screenHeight*0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(type,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Montserrat',
                fontSize: screenWidth*0.03,
              ),
            ),
            Text(date,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Montserrat',
                fontSize: screenWidth*0.03,
              ),
            ),
          ],
        )
      ],
    );
  }
}

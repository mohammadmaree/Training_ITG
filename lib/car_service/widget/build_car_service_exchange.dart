import 'package:flutter/material.dart';

class BuildCarServiceExchange extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String name;
  BuildCarServiceExchange({
    required this.screenWidth,
    required this.screenHeight,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.refresh, size: screenWidth*0.09, color: const Color(0xFF434C68).withOpacity(0.4)),
        SizedBox(width: screenWidth*0.025),
        Text(name,
          style: TextStyle(
              color: const Color(0xFF434C68).withOpacity(0.7),
              fontWeight: FontWeight.bold,
              fontSize: screenWidth*0.04,
              fontFamily: 'Oswald'
          ),),
        SizedBox(width: screenWidth*0.15),
        Icon(
            Icons.arrow_forward,
            size: screenWidth*0.09,
            color: Color(0xFF434C68).withOpacity(0.4),
        ),
      ],
    );
  }
}

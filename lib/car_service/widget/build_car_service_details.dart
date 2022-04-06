import 'package:flutter/material.dart';

class BuildCarServiceDetails extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String name;
  final String type;
  BuildCarServiceDetails({
    required this.screenWidth,
    required this.screenHeight,
    required this.name,
    required this.type,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,
          style: TextStyle(
              fontFamily: 'Oswald',
              fontSize: screenWidth*0.04,
              fontWeight: FontWeight.bold
          ),
        ),
        Text(type,
          style: TextStyle(
              fontFamily: 'Oswald',
              fontSize: screenWidth*0.02,
              fontWeight: FontWeight.bold,
              color: Color(0xFF434C68)
          ),
        ),
        SizedBox(height: screenHeight*0.05),
      ],
    );
  }
}

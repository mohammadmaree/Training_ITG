import 'package:flutter/material.dart';

class BuildCarServiceAppBar extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildCarServiceAppBar({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Icon(
            Icons.camera_alt,
            color: Color(0xFFEEB139),
            size: screenWidth*0.05,
          ),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Text(
            'Your Current Vehicle',
            style: TextStyle(
                color: Color(0xFF434C68).withOpacity(0.7),
                fontSize: screenWidth*0.06,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cabin',
                letterSpacing: 0.05
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}

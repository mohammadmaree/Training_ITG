import 'package:flutter/material.dart';

class BuildFurnitureDetailsHome extends StatelessWidget {

  final double screenHeight;
  final double screenWidth;
  final String title;
  final String text;
  BuildFurnitureDetailsHome({
    required this.screenHeight,
    required this.screenWidth,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: screenHeight*0.02),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: screenWidth*0.08,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: screenHeight*0.01),
        Padding(
          padding: EdgeInsets.only(left: screenHeight*0.02),
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: screenWidth*0.07,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

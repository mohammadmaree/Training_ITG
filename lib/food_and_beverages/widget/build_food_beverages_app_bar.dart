import 'package:flutter/material.dart';

class BuildFoodBeveragesAppBar extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildFoodBeveragesAppBar({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: screenWidth*0.02,
          right:screenWidth*0.02,
          child: Container(
            height: screenWidth*0.11,
            width: screenWidth*0.11,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth*0.11),
                color: Colors.white),
            child: Center(
              child: Icon(Icons.menu,size: screenWidth*0.065),
            ),
          ),
        ),
        Positioned(
          top: screenWidth*0.025,
          right: screenWidth*0.025,
          child: Container(
            height: screenWidth*0.03,
            width: screenWidth*0.03,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Color(0xFFFD3664)),
          ),
        ),
      ],
    );
  }
}

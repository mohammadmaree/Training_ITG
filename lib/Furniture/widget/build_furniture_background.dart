import 'package:flutter/material.dart';

class BuildFurnitureBackground extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final int color;
  BuildFurnitureBackground({
    required this.screenHeight,
    required this.screenWidth,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight*0.34,
          width: double.infinity,
          color: Color(color),
        ),
        Positioned(
          bottom: screenHeight*0.1,
          right: screenWidth*0.4,
          child: Container(
            height: screenHeight*0.45,
            width: screenHeight*0.45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth*0.7,),
                color: Color(color)
                    .withOpacity(0.4)),
          ),
        ),
        Positioned(
          bottom: screenHeight*0.15,
          left: screenWidth*0.45,
          child: Container(
              height: screenHeight*0.35,
              width: screenHeight*0.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth*0.55,),
                  color: Color(color)
                      .withOpacity(0.5))),
        ),
      ],
    );
  }
}

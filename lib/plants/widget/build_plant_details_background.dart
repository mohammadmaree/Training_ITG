import 'package:flutter/material.dart';

class BuildPlantDetailsBackground extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final int color;
  BuildPlantDetailsBackground({
    required this.screenWidth,
    required this.screenHeight,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(color: Color(color)),
        ),
        Positioned(
          top: screenHeight / 2,
          child: Container(
            height: screenHeight / 2,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenWidth*0.05),
                  topRight: Radius.circular(screenWidth*0.05),
                ),
                color: Colors.white
            ),
          ),

        ),
      ],
    );
  }
}

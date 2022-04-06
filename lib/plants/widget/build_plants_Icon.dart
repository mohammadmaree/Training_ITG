import 'package:flutter/material.dart';

class BuildPlantIcon extends StatelessWidget {
  final IconData icon;
  final int borderColor;
  final int color;
  final double screenWidth;
  final double screenHeight;

  BuildPlantIcon({
    required this.icon,
    required this.borderColor,
    required this.color,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height:screenWidth*0.085,
      width: screenWidth*0.085,
      decoration: BoxDecoration(
          border: Border.all(
              color: Color(borderColor),
              style: BorderStyle.solid,
              width: 0.5),
          borderRadius: BorderRadius.circular(screenWidth*0.01,),
          color: Color(color)),
      child: Icon(icon,
          color: Colors.white.withOpacity(0.4), size: screenWidth*0.06,),
    );
  }
}

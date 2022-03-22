import 'package:flutter/material.dart';

class BuildFurnitureSearch extends StatelessWidget {
  final String text;
  final IconData icon;
  final int color;
  final double screenHeight;
  final double screenWidth;
  BuildFurnitureSearch({
    required this.text,
    required this.icon,
    required this.color,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(screenWidth*0.02),
        child: TextFormField(
            decoration:  InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                    icon,
                    color: Color(color),
                    size: screenWidth*0.09),
                contentPadding:
                EdgeInsets.only(left: screenWidth*0.05, top: screenHeight*0.1),
                hintText: text,
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize:screenWidth*0.05,
                    fontFamily: 'Quicksand'))),
      ),
    );
  }
}

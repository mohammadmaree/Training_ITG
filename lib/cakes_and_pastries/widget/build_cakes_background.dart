import 'package:flutter/material.dart';

class BuildCakesBackground extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final int mainColor;
  final int secondColor;
  final String text1;
  final String text2;

  BuildCakesBackground({
    required this.screenWidth,
    required this.screenHeight,
    required this.mainColor,
    required this.secondColor,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight*0.34,
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(screenHeight*0.1)),
              color:  Color(mainColor)),
        ),
        Container(
          height: screenHeight*0.26,
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(screenHeight*0.09)),
              color:  Color(secondColor)),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight*0.05, left: screenWidth*0.04),
          child: Text(
            text1,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: screenWidth*0.075,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight*0.1, left: screenWidth*0.04),
          child: Text(
            text2,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: screenWidth*0.075,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

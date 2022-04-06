import 'package:flutter/material.dart';

class BuildCakesSearch extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String hintText;

  BuildCakesSearch({
    required this.screenWidth,
    required this.screenHeight,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:  screenHeight*0.22, left: screenWidth*0.04, right: screenWidth*0.1),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(screenWidth*0.07),
              bottomLeft: Radius.circular(screenWidth*0.015),
              topLeft: Radius.circular(screenWidth*0.015),
            )),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: screenHeight*0.016),
            hintText: hintText,
            hintStyle:
            TextStyle(
              fontFamily: 'Montserrat',
              fontSize: screenWidth*0.04,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: screenWidth*0.07,
            ),
          ),
        ),
      ),
    );
  }
}

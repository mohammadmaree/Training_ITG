import 'package:flutter/material.dart';

class BuildFoodBeveragesSearch extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String text;
  BuildFoodBeveragesSearch({
    required this.screenHeight,
    required this.screenWidth,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: screenHeight*0.42,
        left: screenWidth*0.05,
        right:screenWidth*0.05,
        child: Container(
            height: screenHeight*0.075,
            decoration: BoxDecoration(
                color: Color(0xFF262626),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(screenHeight*0.02),
                    bottomLeft: Radius.circular(screenHeight*0.02),
                    topLeft: Radius.circular(screenHeight*0.02),
                    topRight: Radius.circular(screenHeight*0.02))),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                      fontSize: screenWidth*0.04),
                  contentPadding: EdgeInsets.only(top: screenHeight*0.02),
                  prefixIcon: Icon(Icons.search, color: Colors.grey,size: screenWidth*0.07,)),
            )
        )
    );
  }
}

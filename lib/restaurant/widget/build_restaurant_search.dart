import 'package:flutter/material.dart';

class BuildRestaurantSearch extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String hintText;

  BuildRestaurantSearch({
    required this.screenWidth,
    required this.screenHeight,
    required this.hintText
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(screenWidth*0.05, screenHeight*0.04, screenWidth*0.05, screenHeight*0.02),
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(screenWidth*0.075),
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: screenWidth*0.07,
              ),
              contentPadding: EdgeInsets.only(left: 50.0, top: screenHeight*0.02),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize:screenWidth*0.045,
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildFoodListInfo extends StatelessWidget {
  final String text1;
  final String text2;
  final double screenHeight;
  final double screenWidth;
  BuildFoodListInfo({
    required this.screenWidth,
    required this.screenHeight,
    required this.text1,
    required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text1,
              style: TextStyle(
                fontSize: screenWidth*0.04,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              )),
          Text(text2,
              style: TextStyle(
                  fontSize: screenWidth*0.035,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF469469)))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildFoodBeveragesInfo extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildFoodBeveragesInfo({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: screenHeight*0.26,
            left: screenWidth*0.1,
            child: Column(
              children: <Widget>[
                Text('WELCOME TO',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: screenWidth*0.08,
                        fontWeight: FontWeight.w500,
                        color: Colors.white))
              ],
            )
        ),
        Positioned(
            top: screenHeight*0.32,
            left: screenWidth*0.1,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('TOKYO',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: screenWidth*0.115,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFD3664))),
                    Text(',',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize:screenWidth*0.1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(width: screenWidth*0.02,),
                    Text('JAPAN',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: screenWidth*0.115,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                )
              ],
            )
        ),
      ],
    );
  }
}

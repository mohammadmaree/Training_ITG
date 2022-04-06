
import 'package:flutter/material.dart';

class BuildNutritionPays extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  BuildNutritionPays({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: screenHeight*0.1,
          width: screenWidth*0.17,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey,
                style: BorderStyle.solid,
                width: 1.0),
            borderRadius: BorderRadius.circular(screenWidth*0.03),
          ),
          child: Center(
            child: Icon(Icons.search, color: Colors.black,size: screenWidth*0.065),
          ),
        ),
        Container(
          height: screenHeight*0.1,
          width: screenWidth*0.17,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey,
                style: BorderStyle.solid,
                width: 1.0),
            borderRadius: BorderRadius.circular(screenWidth*0.03),
          ),
          child: Center(
            child: Icon(Icons.shopping_basket, color: Colors.black,size: screenWidth*0.065),
          ),
        ),
        Container(
          height: screenHeight*0.1,
          width: screenWidth*0.28,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0),
              borderRadius: BorderRadius.circular(screenWidth*0.03),
              color: Color(0xFF1C1428)),
          child: Center(
              child: Text('Checkout',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: screenWidth*0.04))),
        )
      ],
    );
  }
}

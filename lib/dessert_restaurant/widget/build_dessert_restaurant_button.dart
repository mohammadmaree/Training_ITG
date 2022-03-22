import 'package:flutter/material.dart';

class BuildDessertRestaurantButton extends StatelessWidget {
  final String text;
  final String status;
  final IconData icon;
  final double screenHeight;
  final double screenWidth;
  BuildDessertRestaurantButton({
    required this.text,
    required this.status,
    required this.icon,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(screenWidth*0.02),
      elevation: 2.0,
      child: Container(
        height: screenWidth*0.16,
        width: screenWidth*0.19,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth*0.02)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              icon,
              color: status=='active'?Colors.red:Colors.grey,
              size:screenWidth*0.085,
            ),
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: screenWidth*0.045,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

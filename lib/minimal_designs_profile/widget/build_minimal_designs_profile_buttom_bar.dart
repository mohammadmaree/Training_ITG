import 'package:flutter/material.dart';

class BuildMinimalDesignsProfileButtomBar extends StatelessWidget {
final double screenWidth;
final double screenHeight;
BuildMinimalDesignsProfileButtomBar({
  required this.screenWidth,
  required this.screenHeight,
});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height:screenHeight*0.075,
          width: screenWidth*0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.grey.withOpacity(0.2)
          ),
          child: Center(
            child: Icon(
              Icons.arrow_back,
              size: screenWidth*0.08,
            ),
          ),
        ),
        Container(
          height:screenHeight*0.075,
          width: screenWidth*0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.black.withOpacity(0.7),
          ),
          child: Center(
              child: Text('FOLLOW',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.05,
                ),
              )
          ),
        )
      ],
    );
  }
}

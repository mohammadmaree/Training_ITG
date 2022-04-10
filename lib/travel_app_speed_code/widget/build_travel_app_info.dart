import 'package:flutter/material.dart';

class BuildTravelAppInfo extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildTravelAppInfo({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left:screenWidth*0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Where',
            style: TextStyle(
                fontFamily: 'Opensans',
                fontSize: screenWidth*0.13,
                color: Color(0xFFFD6F4F)),
          ),
          Text(
            'will you go',
            style: TextStyle(
              fontFamily: 'Opensans',
              fontSize: screenWidth*0.13,
            ),
          ),
          Text(
            'today',
            style: TextStyle(
              fontFamily: 'Opensans',
              fontSize:screenWidth*0.13,
            ),
          )
        ],
      ),
    );
  }
}

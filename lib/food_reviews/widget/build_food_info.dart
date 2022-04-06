import 'package:flutter/material.dart';

class BuildFoodInfo extends StatelessWidget {
  final String name;
  final String followers;
  final double screenHeight;
  final double screenWidth;
  BuildFoodInfo({
    required this.screenWidth,
    required this.screenHeight,
    required this.name,
    required this.followers,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight*0.33,
      left: screenWidth*0.48,
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: screenWidth*0.04,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                followers,
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: screenWidth*0.035,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(width:screenWidth*0.04,),
          Container(
            height: screenWidth*0.1,
            width: screenWidth*0.18,
            decoration: BoxDecoration(
                color: const Color(0xFFEAF4EF),
                borderRadius: BorderRadius.circular(12.0)),
            child: Center(
              child: Text('Follow',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize:screenWidth*0.03,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF5A9776))),
            ),
          )
        ],
      ),
    );
  }
}

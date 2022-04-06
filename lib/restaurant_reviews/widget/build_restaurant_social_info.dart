import 'package:flutter/material.dart';

class BuildRestaurantSocialInfo extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String followers;
  final String following;
  final String tasteMaker;
  BuildRestaurantSocialInfo({
    required this.screenWidth,
    required this.screenHeight,
    required this.followers,
    required this.following,
    required this.tasteMaker,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height:  screenHeight*0.17,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.05),
      padding: EdgeInsets.only(top: screenHeight*0.055,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                followers,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth*0.045,
                    color: Colors.red),
              ),
              Text(
                'Followers',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize:screenWidth*0.045,
                    color: Colors.grey),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                following,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize:screenWidth*0.045,
                    color: Colors.red),
              ),
              Text(
                'Following',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth*0.045,
                    color: Colors.grey),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                tasteMaker,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize:screenWidth*0.045,
                    color: Colors.red),
              ),
              Text(
                'Taste Maker',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth*0.045,
                    color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}

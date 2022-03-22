import 'package:flutter/material.dart';

class BuildPostTravelDetail extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String name;
  final String time;
  final int numberOfImages;
  BuildPostTravelDetail({
    required this.screenWidth,
    required this.screenHeight,
    required this.name,
    required this.time,
    required this.numberOfImages,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05, top: screenHeight*0.025),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Maui Summer 2018',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth*0.045),
              ),
              SizedBox(height: screenHeight*0.05),
              Row(
                children: <Widget>[
                  Text(
                    '$name added $numberOfImages Photos',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'Montserrat',
                        fontSize: screenWidth*0.03),
                  ),
                  SizedBox(width: screenWidth*0.01),
                  Icon(
                    Icons.timer,
                    size: screenWidth*0.015,
                    color: Colors.black,
                  ),
                  SizedBox(width: screenWidth*0.01),
                  Text(
                    '$time ago',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontFamily: 'Montserrat',
                        fontSize: screenWidth*0.025),
                  )
                ],
              )
            ],
          ),
          SizedBox(width: screenWidth*0.05),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: screenWidth*0.02),
              InkWell(
                onTap: () {},
                child: Container(
                  height: screenWidth*0.06,
                  width: screenWidth*0.06,
                  child: Image.asset('assets/images/navarrow.png'),
                ),
              ),
              SizedBox(width: screenWidth*0.02),
              InkWell(
                onTap: () {},
                child: Container(
                  height: screenWidth*0.06,
                  width: screenWidth*0.06,
                  child: Image.asset('assets/images/chatbubble.png'),
                ),
              ),
              SizedBox(width: screenWidth*0.02),
              InkWell(
                onTap: () {},
                child: Container(
                  height: screenWidth*0.07,
                  width: screenWidth*0.07,
                  child: Image.asset('assets/images/fav.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

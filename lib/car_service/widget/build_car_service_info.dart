import 'package:flutter/material.dart';

class BuildCarServiceInfo extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildCarServiceInfo({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right:screenWidth*0.02,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                  Icons.card_travel,
                  size:screenWidth*0.075,
                  color: Color(0xFF434C68).withOpacity(0.4)),
              SizedBox(height: screenHeight*0.008),
              Text('19/24',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: screenWidth*0.05,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(width: 10.0),
          Column(
            children: <Widget>[
              Icon(
                  Icons.timer,
                  size:screenWidth*0.075,
                  color: const Color(0xFF434C68).withOpacity(0.4)),
              SizedBox(height: 5.0),
              Text('3.2',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: screenWidth*0.05,
                    fontWeight: FontWeight.bold
                ),
              )

            ],
          ),
          SizedBox(width: 10.0),
          Column(
            children: <Widget>[
              Icon(
                  Icons.network_cell,
                  size:screenWidth*0.075,
                  color: Color(0xFF434C68).withOpacity(0.4),
              ),
              SizedBox(height: 5.0),
              Text('443',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: screenWidth*0.05,
                    fontWeight: FontWeight.bold
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}

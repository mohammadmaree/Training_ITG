import 'package:flutter/material.dart';

class buildRestaurantImage extends StatelessWidget {

  final double screenWidth;
  final double screenHeight;
  final String image;

  buildRestaurantImage({
    required this.screenWidth,
    required this.screenHeight,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Container(
            height:screenHeight*0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)
            ),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: screenHeight*0.55, left: screenWidth*0.16),
            child: Column(
              children: <Widget>[
                Text('BEST OF',
                  style: TextStyle(
                      fontFamily: 'Timesroman',
                      fontSize: screenWidth*0.07,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text('THE DAY',
                  style: TextStyle(
                      fontFamily: 'Timesroman',
                      fontSize: screenWidth*0.07,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: screenHeight*0.02),
                Container(
                  height: screenHeight*0.008,
                  width: screenWidth*0.15,
                  color: Colors.orange,
                )
              ],
            )
        ),
      ],
    );
  }
}

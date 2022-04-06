import 'package:flutter/material.dart';

class BuildRestaurantCardImage extends StatelessWidget {
  final String image;
  final double screenWidth;
  final double screenHeight;
  final String rating;

  BuildRestaurantCardImage({
    required this.image,
    required this.rating,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height:screenHeight*0.13,
          width: screenWidth*0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
              )
          ),
        ),
        Positioned(
          top: screenHeight*0.09,
          left: screenWidth*0.25,
          child: Container(
              height:screenWidth*0.07,
              width: screenWidth*0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth*0.07,),
                  color: Colors.white
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.01,),
                  Text(rating,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: screenWidth*0.03,
                    ),
                  ),
                  Icon(Icons.star,
                    color: Colors.red,
                    size: screenWidth*0.03,
                  )
                ],
              )
          ),

        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class buildDessertRestaurantMainPhoto extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final double screenHeight;
  final double screenWidth;
  buildDessertRestaurantMainPhoto({
    required this.image,
    required this.text1,
    required this.text2,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: screenHeight*0.35,
              width: screenWidth*0.65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth*0.05),
                  image:DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Positioned(
              left: screenWidth*0.05,
              top:screenHeight*0.18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(text1,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Quicksand',
                        fontSize: screenWidth*0.07,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(text2,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: screenWidth*0.07,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BuildTravelImageProfile extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String image;

  BuildTravelImageProfile({
    required this.screenWidth,
    required this.screenHeight,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.1, left: screenWidth*0.05, right: screenWidth*0.05),
      child: Container(
          height: screenHeight*0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth*0.05),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover))),
    );
  }
}

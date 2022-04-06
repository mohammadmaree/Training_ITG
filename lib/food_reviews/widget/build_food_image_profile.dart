import 'package:flutter/material.dart';

class BuildFoodImageProfile extends StatelessWidget {
  final String image;
  final double screenHeight;
  final double screenWidth;
  BuildFoodImageProfile({
    required this.screenWidth,
    required this.screenHeight,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight*0.2,
      left: screenWidth*0.075,
      child: Container(
        height: screenWidth*0.37,
        width:screenWidth*0.37,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(screenWidth*0.37),
            image:  DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover)),
      ),
    );
  }
}

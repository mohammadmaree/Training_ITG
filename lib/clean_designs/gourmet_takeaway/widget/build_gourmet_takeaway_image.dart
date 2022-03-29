import 'package:flutter/material.dart';

class BuildGourmetTakeawayImage extends StatelessWidget {
  final String image;
  final double screenWidth;
  BuildGourmetTakeawayImage({
    required this.image,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: screenWidth,
      width: screenWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth),
          image:  DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover)),
    );
  }
}

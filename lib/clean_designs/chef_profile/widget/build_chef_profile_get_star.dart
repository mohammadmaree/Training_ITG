import 'package:flutter/material.dart';

class BuildChefProfileGetStar extends StatelessWidget {
  final int rating;
  final int index;
  final double screenHeight;
  final double screenWidth;
  BuildChefProfileGetStar({
    required this.rating,
    required this.index,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    if (rating >= index) {
      return Icon(
          Icons.star,
          color: Colors.yellow,
        size:screenWidth*0.065,
      );
    } else {
      return Icon(
          Icons.star,
          color: Colors.grey.withOpacity(0.5),
        size:screenWidth*0.065,
      );
    }
  }
}

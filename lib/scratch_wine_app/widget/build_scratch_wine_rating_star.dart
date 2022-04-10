import 'package:flutter/material.dart';

class BuildScratchWineRatingStar extends StatelessWidget {
  final int rating;
  final int index;
  final double screenWidth;

  BuildScratchWineRatingStar({
    required this.rating,
    required this.index,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    if (index <= rating) {
      return Icon(
        Icons.star,
        color: Color(0xFF199693),
        size: screenWidth*0.05,
      );
    } else {
      return Icon(
        Icons.star,
        color: Color(0xFFADDDDD),
        size: screenWidth*0.05,
      );
    }
  }
}

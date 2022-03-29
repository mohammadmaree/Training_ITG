import 'package:flutter/material.dart';

class BuildGourmetTakeawayRatedStar extends StatelessWidget {
  final int rating;
  final int index;
  final double screenWidth;
  final double screenHeight;
  BuildGourmetTakeawayRatedStar({
    required this.rating,
    required this.index,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    if (index <= rating) {
      return Icon(
          Icons.star,
          color: Colors.yellow[600],
        size:screenWidth*0.065,
      );
    } else {
      return Icon(
          Icons.star,
          color: Colors.grey,
        size:screenWidth*0.065,
      );
    }
  }
  }

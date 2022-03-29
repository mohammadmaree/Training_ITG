import 'package:flutter/material.dart';

class BuildGourmetTakeawayBorderFoodItem extends StatelessWidget {
  final double screenWidth;
  BuildGourmetTakeawayBorderFoodItem({
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(left:screenWidth),
      child: Container(
        height: 1.0,
        color: Colors.grey,
      ),
    );
  }
}

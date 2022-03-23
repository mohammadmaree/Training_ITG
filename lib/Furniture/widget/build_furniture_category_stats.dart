import 'package:flutter/material.dart';
class BuildFurnitureCategoryStats extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final IconData icon;
  final String text;
  BuildFurnitureCategoryStats({
    required this.screenHeight,
    required this.screenWidth,
    required this.icon,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          IconButton(
            icon: Icon(icon),
            color: Colors.white,
            iconSize: screenWidth*0.15,
            onPressed: () {},
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize:screenWidth*0.05,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

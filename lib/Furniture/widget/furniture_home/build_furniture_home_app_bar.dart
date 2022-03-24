import 'package:flutter/material.dart';

class BuildFurnitureHomeAppBar extends StatelessWidget {
  final String image;
  final IconData icon;
  final double screenHeight;
  final double screenWidth;
  BuildFurnitureHomeAppBar({
    required this.image,
    required this.icon,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: screenWidth*0.04),
        Container(
          alignment: Alignment.topLeft,
          height:screenWidth*0.15,
          width: screenWidth*0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth*0.15,),
              border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2.0),
              image:DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image))),
        ),
        SizedBox(
          width:screenWidth*0.65,
        ),
        Container(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: Icon(
              icon,
              size:screenWidth*0.1,
            ),
            onPressed: () {},
            color: Colors.white,
            iconSize:screenWidth*0.1,
          ),
        ),
        SizedBox(height: screenHeight*0.02),
      ],
    );
  }
}

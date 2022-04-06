import 'package:flutter/material.dart';

class BuildNutritionAppBar extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  BuildNutritionAppBar({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.015, left: screenWidth*0.02,right: screenWidth*0.02,bottom: screenHeight*0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back_ios,size:screenWidth*0.05),
            color: Colors.white,
            onPressed: () {},
            iconSize: screenWidth*0.05,
          ),
          Container(
              width: screenWidth*0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.filter_list,size: screenWidth*0.07),
                    color: Colors.white,
                    onPressed: () {},
                    iconSize: screenWidth*0.06,
                  ),
                  IconButton(
                    icon: Icon(Icons.menu,size: screenWidth*0.07),
                    color: Colors.white,
                    onPressed: () {},
                    iconSize: screenWidth*0.06,
                  )
                ],
              ))
        ],
      ),
    );
  }
}

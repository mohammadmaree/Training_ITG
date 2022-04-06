import 'package:flutter/material.dart';

class BuildFruitsAppBar extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String imageProfile;
  BuildFruitsAppBar({
    required this.screenHeight,
    required this.screenWidth,
    required this.imageProfile ,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: screenWidth*0.025, right: screenWidth*0.025, bottom: screenWidth*0.025, left: screenWidth*0.025),
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height:screenWidth*0.13,
            width: screenWidth*0.13,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth*0.13),
                image: DecorationImage(
                    image: AssetImage(imageProfile),
                    fit: BoxFit.cover)),
          ),
          IconButton(
            icon: Icon(
                Icons.menu,
              size:screenWidth*0.1,
            ),
            color: Colors.black,
            iconSize: screenWidth*0.1,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

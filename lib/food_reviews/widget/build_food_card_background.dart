import 'package:flutter/material.dart';

class BuildFoodCardBackground extends StatelessWidget {
  final String imgPath;
  final bool isFavorite;
  final double screenHeight;
  final double screenWidth;
  BuildFoodCardBackground({
    required this.imgPath,
    required this.isFavorite,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        Container(
          height: screenHeight*0.19,
          width: screenWidth*0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(screenWidth*0.04), topRight: Radius.circular(screenWidth*0.04)),
              image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: screenWidth*0.11,
              width: screenWidth*0.11,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth*0.11,),
                  color: Colors.white.withOpacity(0.5)
              ),
              child: Center(
                child: Icon(
                  Icons.favorite,
                  color:isFavorite?Colors.red:Colors.white,
                  size: screenWidth*0.07,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

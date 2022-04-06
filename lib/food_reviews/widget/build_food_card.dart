import 'package:first_projrct/food_reviews/widget/build_food_card_background.dart';
import 'package:flutter/material.dart';

class BuildFoodCard extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final double screenHeight;
  final double screenWidth;
  final bool isFavorite;
  BuildFoodCard({
    required this.imgPath,
    required this.foodName,
    required this.screenHeight,
    required this.screenWidth,
    required this.isFavorite,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 25.0, bottom: 10.0),
      child: Container(
          height: screenHeight*0.35,
          width: screenWidth*0.5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(screenWidth*0.04),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3.0,
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3.0
                )
              ]
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                BuildFoodCardBackground(
                  imgPath:imgPath,
                  isFavorite:isFavorite,
                  screenHeight:screenHeight,
                  screenWidth:screenWidth,
                ),
                SizedBox(height: screenHeight*0.01),
                Padding(
                  padding: EdgeInsets.only(left:screenWidth*0.02),
                  child: Text(foodName,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth*0.035
                    ),
                  ),
                ),
                SizedBox(height: screenHeight*0.01),
                Padding(
                  padding:  EdgeInsets.only(left:screenWidth*0.02),
                  child: Row(
                    children: <Widget>[
                      Text('Breakfast',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize:screenWidth*0.03,
                            color: Colors.grey.withOpacity(0.5)
                        ),
                      ),
                      SizedBox(width: screenWidth*0.02),
                      Text('Light food',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth*0.03,
                            color: Colors.grey.withOpacity(0.5)
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight*0.01),
                Padding(
                  padding: EdgeInsets.only(left:screenWidth*0.02),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow, size: screenWidth*0.035),
                      Icon(Icons.star, color: Colors.yellow, size: screenWidth*0.035),
                      Icon(Icons.star, color: Colors.yellow, size: screenWidth*0.035),
                      Icon(Icons.star, color: Colors.yellow, size: screenWidth*0.035),
                      Icon(Icons.star_border, color: Colors.grey, size: screenWidth*0.035),
                      SizedBox(width: screenWidth*0.02),
                      Text('4.5',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth*0.03,
                        ),
                      ),
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}

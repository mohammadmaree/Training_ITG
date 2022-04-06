import 'package:first_projrct/restaurant_reviews/widget/build_restaurant_card_image.dart';
import 'package:first_projrct/restaurant_reviews/widget/build_restaurant_card_info.dart';
import 'package:flutter/material.dart';

class BuildRestaurantCard extends StatelessWidget {
  final String restaurantName;
  final String type;
  final String date;
  final String rating;
  final String imgPath;
  final double screenWidth;
  final double screenHeight;

  BuildRestaurantCard({
    required this.restaurantName,
    required this.type,
    required this.date,
    required this.rating,
    required this.imgPath,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(screenWidth*0.02),
      height:screenWidth*0.4,
      width: screenWidth*0.4,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 3.0,
                spreadRadius: 3.0,
                color: Colors.grey.withOpacity(0.2)
            )
          ]
      ),
      child: Column(
        children: <Widget>[
          BuildRestaurantCardImage(
            image:imgPath,
            rating:rating,
            screenHeight:screenHeight,
            screenWidth:screenWidth,
          ),
          BuildRestaurantCardInfo(
            restaurantName:restaurantName,
            type:type,
            date:date,
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
        ],
      ),
    );
  }
}

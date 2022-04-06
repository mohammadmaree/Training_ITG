import 'package:first_projrct/restaurant_reviews/widget/build_restaurant_card.dart';
import 'package:flutter/material.dart';

class BuildRestaurants extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildRestaurants({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      padding: EdgeInsets.all(screenWidth*0.025),
      crossAxisSpacing: screenWidth*0.025,
      mainAxisSpacing: screenWidth*0.025,
      shrinkWrap: true,
      children: <Widget>[
        BuildRestaurantCard(
            restaurantName:'Tropical fruits',
            type:'Greyish day',
            date:'20-05-18',
            rating:'5',
            imgPath:'assets/images/tropic.jpg',
            screenWidth:screenWidth,
            screenHeight:screenHeight,
        ),
        BuildRestaurantCard(
          restaurantName:'Orange fruits',
          type:'Portugecis',
          date:'20-05-18',
          rating: '4',
          imgPath:'assets/images/oranges.jpg',
          screenWidth:screenWidth,
          screenHeight:screenHeight,
        ),
        BuildRestaurantCard(
          restaurantName:'Springfield',
          type:'States Dishes',
          date:'20-05-18',
          rating: '5',
          imgPath:'assets/images/berries.jpg',
          screenWidth:screenWidth,
          screenHeight:screenHeight,
        ),
        BuildRestaurantCard(
          restaurantName:'Breakfast Dine',
          type:'Costa Rica',
          date:'20-05-18',
          rating: '3',
          imgPath:'assets/images/almonds.jpg',
          screenWidth:screenWidth,
          screenHeight:screenHeight,
        ),
      ],
    );
  }
}

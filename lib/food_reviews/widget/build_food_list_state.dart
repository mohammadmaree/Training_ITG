import 'package:first_projrct/food_reviews/widget/build_food_card.dart';
import 'package:first_projrct/food_reviews/widget/build_food_list_info.dart';
import 'package:flutter/material.dart';

class BuildFoodListState  extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildFoodListState({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BuildFoodListInfo(
          text1:'Recommended',
          text2:'SEE ALL',
          screenHeight:screenHeight,
          screenWidth:screenWidth,
        ),
        Container(
            height: screenHeight*0.4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                BuildFoodCard(
                  imgPath:'assets/images/food1.jpg',
                  foodName:'Granola with fruits',
                  isFavorite: true,
                  screenHeight:screenHeight,
                  screenWidth:screenWidth,
                ),
                BuildFoodCard(
                  imgPath:'assets/images/food2.jpg',
                  foodName:'Bread with avocado',
                  isFavorite: false,
                  screenHeight:screenHeight,
                  screenWidth:screenWidth,
                ),
              ],
            ))
      ],
    );
  }
}

import 'package:first_projrct/clean_designs/gourmet_takeaway/widget/build_gourmet_takeaway_border_food_item.dart';
import 'package:first_projrct/clean_designs/gourmet_takeaway/widget/build_gourmet_takeaway_food_item.dart';
import 'package:flutter/material.dart';

class BuildGourmetTakeawayFoods extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildGourmetTakeawayFoods({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: screenHeight*0.02),
        BuildGourmetTakeawayFoodItem(
          dishName:'Chicken Chow Mein',
          imgPath:'assets/images/food1.jpg',
          description:'Chicken fried noodles is a delicious home-cooked dish made from chicken, fragrance and taste',
          calInfo:123,
          distance:23,
          cookingTime:23,
          rating:5,
          screenHeight:screenHeight,
          screenWidth:screenWidth,
        ),
        SizedBox(height: screenHeight*0.03),
        BuildGourmetTakeawayBorderFoodItem(
          screenWidth:screenWidth*0.35,
        ),
        SizedBox(height: screenHeight*0.02),
        BuildGourmetTakeawayFoodItem(
          dishName:'Beef vermicelli soup',
          imgPath:'assets/images/food1.jpg',
          description:'Beef vermicelli soup is a delicacy made of beef and vermicelli. It has rich nutrition and attractive color.',
          calInfo:123,
          distance:23,
          cookingTime:23,
          rating:4,
          screenHeight:screenHeight,
          screenWidth:screenWidth,
        ),
        SizedBox(height: screenHeight*0.03),
        BuildGourmetTakeawayBorderFoodItem(
          screenWidth:screenWidth*0.35,
        )
      ],
    );
  }
}

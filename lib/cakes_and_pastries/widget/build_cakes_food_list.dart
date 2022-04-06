import 'package:first_projrct/cakes_and_pastries/widget/build_cakes_food_card.dart';
import 'package:flutter/material.dart';

class BuildCakesFoodList  extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const BuildCakesFoodList({
    required this.screenWidth,
    required this.screenHeight
  });
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          BuildCakesFoodCard(
              imgPath: 'assets/images/steak.png',
              foodName:'Strawberry Cream Waffles',
              calCount:273,
              price: 0.7,
              hasMilk:false,
              screenWidth:screenWidth,
              screenHeight:screenHeight,
          ),
          BuildCakesFoodCard(
            imgPath: 'assets/images/steak.png',
            foodName:'Croissant blue berry fruit',
            calCount:241,
            price: 18.0,
            hasMilk:true,
            screenWidth:screenWidth,
            screenHeight:screenHeight,
          ),BuildCakesFoodCard(
            imgPath: 'assets/images/steak.png',
            foodName:'Strawberry Cream Waffles',
            calCount:1546,
            price: 18.0,
            hasMilk:true,
            screenWidth:screenWidth,
            screenHeight:screenHeight,
          ),
         ],
        scrollDirection: Axis.horizontal);
  }
}

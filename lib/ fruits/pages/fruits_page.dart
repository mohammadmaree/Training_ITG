import 'package:first_projrct/%20fruits/widget/build_fruits_food_card.dart';
import 'package:flutter/material.dart';

class FruitsPage  extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  List<String>images=['assets/images/picone.jpeg','assets/images/pictwo.jpeg','assets/images/picone.jpeg','assets/images/picthree.jpeg'];
  List<String>images2=['assets/images/picthree.jpeg','assets/images/picone.jpeg','assets/images/picone.jpeg','assets/images/picthree.jpeg'];
  List<String>names=['orange','orange','kiwi','banana'];
  List<String>prices=['0.25','0.75','0.25','0.75'];
  List<bool>isFavourite=[true,false,false,true];
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: screenWidth!*0.475,
              child: ListView.builder(
                shrinkWrap: true,
                  itemBuilder: (context, index) => BuildFruitsFoodCard(
                      image:images[index],
                      fruitName: names[index],
                      price:prices[index],
                      isFavourite:isFavourite[index],
                  ),
                itemCount: images.length,
              ),
            ),
            Container(
              width: screenWidth!*0.475,
              child: Padding(
                padding:EdgeInsets.only(top: screenWidth!*0.15),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => BuildFruitsFoodCard(
                    image:images2[index],
                    fruitName: names[index],
                    price:prices[index],
                    isFavourite:isFavourite[index],
                  ),
                  itemCount: images.length,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

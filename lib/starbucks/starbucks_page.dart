import 'package:first_projrct/starbucks/widget/build_starbucks_app_bar.dart';
import 'package:first_projrct/starbucks/widget/build_starbucks_coffee_item.dart';
import 'package:first_projrct/starbucks/widget/build_starbucks_item.dart';
import 'package:flutter/material.dart';

class StarbucksPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  List<String>starbucksItemNames=['All products','Espresso','Iced Tea'];
  List starbucksItemCounts=[59,17,20];

  List<String> images = ['assets/images/coffee.jpg','assets/images/coffee2.jpg','assets/images/coffee3.jpg'];
  List<String> productNames = ['Latte with Turmeric','Latte with Turmeric','Latte with Turmeric'];
  List<String> productTypes = ['Iced Coffee','Iced Coffee','Iced Coffee'];
  List<String> prices = ['2.99','2.99','2.99'];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        children: [
          BuildStarbucksAppBar(
            notification:'8',
            screenHeight:screenHeight!,
            screenWidth:screenWidth!,
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth!*0.04),
            child: Text(
              'Starbucks Coffee',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: screenWidth!*0.07,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
            child: Container(
              height: screenHeight!*0.18,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,index)=>
                    BuildStarbucksItem(
                      productName:starbucksItemNames[index],
                      count:starbucksItemCounts[index],
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!,
                    ),
                itemCount: starbucksItemNames.length,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0),
            child: Container(
              height: screenHeight! - 300.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,index)=>
                    BuildStarbucksCoffeeItem(
                      imgPath:images[index],
                      productName:productNames[index],
                      productType:productTypes[index],
                      price:prices[index],
                      screenHeight:screenHeight!,
                      screenWidth:screenWidth!,
                    ),
                itemCount: images.length,
              ),
            ),
          ),
        ]
      )
    );
  }
}

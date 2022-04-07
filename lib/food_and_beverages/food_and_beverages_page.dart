import 'package:first_projrct/food_and_beverages/widget/build_food_beverages_app_bar.dart';
import 'package:first_projrct/food_and_beverages/widget/build_food_beverages_background.dart';
import 'package:first_projrct/food_and_beverages/widget/build_food_beverages_info.dart';
import 'package:first_projrct/food_and_beverages/widget/build_food_beverages_menu_item.dart';
import 'package:first_projrct/food_and_beverages/widget/build_food_beverages_search.dart';
import 'package:flutter/material.dart';

class FoodAndBeveragesPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;
  List<IconData>icons=[Icons.fastfood,Icons.local_drink,Icons.local_drink,Icons.cake,Icons.cloud,Icons.restaurant,Icons.insert_chart,Icons.filter_tilt_shift,Icons.donut_small];
  List<String>titles=['BURGER','TEA','BEER','CAKE','COFFEE', 'MEAT','ICE','FISH','DONUTS'];
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.black,
      body:ListView(
        children: [
          Container(
            height:screenHeight!*0.52,
            width: screenWidth!,
            child: Stack(
              children: [
                BuildFoodBeveragesBackground(
                  image:'assets/images/tokyo.jpg',
                  title:'JAPAN',
                  screenHeight:screenHeight!,
                  screenWidth:screenWidth!,
                ),
                BuildFoodBeveragesAppBar(
                  screenHeight:screenHeight!,
                  screenWidth:screenWidth!,
                ),
                BuildFoodBeveragesInfo(
                  screenHeight:screenHeight!,
                  screenWidth:screenWidth!,
                ),
                BuildFoodBeveragesSearch(
                  text: 'Lets explore some food here...',
                  screenHeight:screenHeight!,
                  screenWidth:screenWidth!,
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight!*0.45,
            child:Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth!*0.04),
              child: GridView.builder(
                itemBuilder: (context, index) => BuildFoodBeveragesMenuItem(
                  foodName:titles[index],
                  iconData:icons[index],
                  screenHeight:screenHeight!,
                  screenWidth:screenWidth!,
                ),
                itemCount:9 ,
                scrollDirection: Axis.vertical,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing:screenWidth!*0.03,
                  mainAxisSpacing: screenHeight!*0.015,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

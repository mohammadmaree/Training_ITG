import 'package:first_projrct/Furniture/pages/furniture_stats_page.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_background.dart';
import 'package:first_projrct/Furniture/widget/furniture_home/build_furniture_categories_home.dart';
import 'package:first_projrct/Furniture/widget/furniture_home/build_furniture_details_home.dart';
import 'package:first_projrct/Furniture/widget/furniture_home/build_furniture_item_card.dart';
import 'package:first_projrct/Furniture/widget/furniture_home/build_furniture_search.dart';
import 'package:first_projrct/Furniture/widget/furniture_home/build_furniture_home_app_bar.dart';
import 'package:flutter/material.dart';


class FurnitureHomePage extends StatelessWidget {
  static String routeName = 'FurnitureHomePageRouteName';
  @override

  double? screenWidth;
  double? screenHeight;


  List<String>categoriesImages=[
    'https://raw.githubusercontent.com/rajayogan/flutterui-furnitureapp/master/assets/sofas.png',
    'https://raw.githubusercontent.com/rajayogan/flutterui-furnitureapp/master/assets/wardrobe.png',
    'https://raw.githubusercontent.com/rajayogan/flutterui-furnitureapp/master/assets/desk.png',
    'https://raw.githubusercontent.com/rajayogan/flutterui-furnitureapp/master/assets/dresser.png'
  ];

  List<String>categoriesNames=['Sofas','Wardrobe','Desk','Dresser'];

  List<String>itemImages=[
    'https://raw.githubusercontent.com/rajayogan/flutterui-furnitureapp/master/assets/ottoman.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutterui-furnitureapp/master/assets/anotherchair.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutterui-furnitureapp/master/assets/anotherchair.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutterui-furnitureapp/master/assets/ottoman.jpg'
  ];

  List<String>itemTitle=['FinnNavian','FinnNavian','FinnNavian','FinnNavian'];

  List<bool>isFavorites=[true,false,true,false];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return  ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        Column(
          children: [
            Stack(
              children: [
                BuildFurnitureBackground(
                  screenWidth:screenWidth!,
                  screenHeight:screenHeight!,
                  color:0xFFFDD148,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight!*0.03),
                    BuildFurnitureHomeAppBar(
                      screenHeight:screenHeight!,
                      screenWidth:screenWidth!,
                      image:'assets/images/engin.jpg',
                      icon: Icons.menu,
                    ),
                    SizedBox(height: screenHeight!*0.04),
                    BuildFurnitureDetailsHome(
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!,
                      title:'Hello , Pino',
                      text:'What do you want to buy?',
                    ),
                    SizedBox(height: screenHeight!*0.06),
                    BuildFurnitureSearch(
                      screenWidth:screenWidth!*0.9,
                      screenHeight:screenHeight!*0.2,
                      color:0xFFFEDF62,
                      icon:Icons.search,
                      text:'Search',
                    ),
                    SizedBox(height: screenHeight!*0.005),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight!*0.01),
            BuildFurnitureCategoriesHome(
              screenWidth:screenWidth!*0.9,
              screenHeight:screenHeight!*0.1,
              names: categoriesNames,
              images: categoriesImages,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount:itemImages.length,
              itemBuilder: (context, index) =>BuildFurnitureItemCard(
                screenHeight:screenHeight!*0.42,
                screenWidth:screenWidth!*0.95,
                title: itemTitle[index],
                image: itemImages[index],
               // isFavorite:isFavorites[index],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

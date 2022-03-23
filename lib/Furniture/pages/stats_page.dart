import 'package:first_projrct/Furniture/widget/build_furniture_app_bar.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_background.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_card_details.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_categories_home.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_categories_stats.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_list_item.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget{

  static String routeName = 'StatsPageRouteName';
  double? screenWidth;
  double? screenHeight;

  List<List<dynamic>>data=[
    ['Gift card',0xFFEC2522,Icons.account_box],
    ['Bank card',0xFFE89300,Icons.account_box],
    ['Replacement code',0xFFFB8662,Icons.grid_on],
    ['Consulting collection',0xFF33BBFF,Icons.pages],
    ['Customer service',0xFFECB800,Icons.person],
  ];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return ListView(
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
                    BuildFurnitureAppBar(
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!,
                      title:'Pino',
                      nAccount:'176****590',
                      icon:Icons.settings,
                      image:'assets/images/engin.jpg',
                    ),
                    SizedBox(height: screenHeight!*0.02),
                    BuildFurnitureCategoriesStats(
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!,
                    ),
                    SizedBox(height: screenHeight!*0.02),
                    Padding(
                      padding: EdgeInsets.all(screenWidth!*0.05),
                      child: GridView.count(
                        crossAxisCount: 2,
                        primary: false,
                        crossAxisSpacing: screenHeight!*0.02,
                        mainAxisSpacing: screenWidth!*0.04,
                        shrinkWrap: true,
                        children: [
                          BuildFurnitureCardDetails(
                            title:'Pending payment',
                            image:'assets/images/card.png',
                            valueCount:'5',
                            screenHeight:screenHeight!,
                            screenWidth:screenWidth!,
                          ),
                          BuildFurnitureCardDetails(
                            title: 'To be shipped',
                            image:'assets/images/box.png',
                            valueCount: '2',
                            screenHeight:screenHeight!,
                            screenWidth:screenWidth!,
                          ),
                          BuildFurnitureCardDetails(
                            title:'To be received',
                            image: 'assets/images/trucks.png',
                            valueCount: '8',
                            screenHeight:screenHeight!,
                            screenWidth:screenWidth!,
                          ),
                          BuildFurnitureCardDetails(
                            title:'Return / Replace',
                            image:'assets/images/returnbox.png',
                            valueCount:'0',
                            screenHeight:screenHeight!,
                            screenWidth:screenWidth!,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: screenHeight!*0.01),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  BuildFurnitureListItem(
                    screenHeight:screenHeight!,
                    screenWidth:screenWidth!,
                    title:data[index][0],
                    buttonColor: data[index][1],
                    icon:data[index][2],
                  ),
              itemCount: data.length,
            ),
          ],
        )
      ],
    );
  }
}

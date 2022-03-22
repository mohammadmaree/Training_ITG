import 'package:first_projrct/Furniture/widget/build_furniture_background_home.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_categories.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_item_card.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_search.dart';
import 'package:flutter/material.dart';


class FurnitureHome extends StatefulWidget {
  @override
  State<FurnitureHome> createState() => _FurnitureHomeState();
}

class _FurnitureHomeState extends State<FurnitureHome>with SingleTickerProviderStateMixin {

  TabController? controller;
  double? screenWidth;
  double? screenHeight;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller!.dispose();
    super.dispose();
  }

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
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Stack(
                children: [
                  BuildFurnitureBackgroundHome(
                    screenWidth:screenWidth!,
                    screenHeight:screenHeight!,
                    color:0xFFFDD148,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight!*0.03),
                      Row(
                        children: [
                          SizedBox(width: screenWidth!*0.04),
                          Container(
                            alignment: Alignment.topLeft,
                            height:screenWidth!*0.15,
                            width: screenWidth!*0.15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(screenWidth!*0.15,),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/engin.jpg',
                                    ))),
                          ),
                          SizedBox(
                            width:screenWidth!*0.65,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                size:screenWidth!*0.1,
                              ),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize:screenWidth!*0.1,
                            ),
                          ),
                          SizedBox(height: screenHeight!*0.02),
                        ],
                      ),
                      SizedBox(height: screenHeight!*0.04),
                      Padding(
                        padding: EdgeInsets.only(left: screenHeight!*0.02),
                        child: Text(
                          'Hello , Pino',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: screenWidth!*0.08,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: screenHeight!*0.01),
                      Padding(
                        padding: EdgeInsets.only(left: screenHeight!*0.02),
                        child: Text(
                          'What do you want to buy?',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: screenWidth!*0.07,
                              fontWeight: FontWeight.bold),
                        ),
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
              BuildFurnitureCategories(
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
                screenHeight:screenHeight!*0.3,
                screenWidth:screenWidth!*0.95,
                title: itemTitle[index],
                image: itemImages[index],
                isFavorite:isFavorites[index],
              ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(icon: Icon(
                    Icons.event_seat,
                  color: Colors.yellow,
                  size: screenWidth!*0.075,
                )),
            Tab(icon: Icon(
                Icons.timer,
                color: Colors.grey,
              size: screenWidth!*0.075,
            )),
            Tab(icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              size: screenWidth!*0.075,
            )),
            Tab(icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              size: screenWidth!*0.075,
            ))
          ],
        ),
      ),
    );
  }
}

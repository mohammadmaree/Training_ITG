import 'dart:html';

import 'package:first_projrct/Furniture/pages/furniture%20_home_page.dart';
import 'package:first_projrct/Furniture/pages/furniture%20_profile_page.dart';
import 'package:first_projrct/Furniture/pages/furniture_shopping_cart_page.dart';
import 'package:first_projrct/Furniture/pages/furniture_stats_page.dart';
import 'package:flutter/material.dart';

class FurnitureMain extends StatefulWidget {

  @override
  State<FurnitureMain> createState() => _FurnitureMainState();
}

class _FurnitureMainState extends State<FurnitureMain>with SingleTickerProviderStateMixin {
  TabController? controller;
  double? screenWidth;
  double? screenHeight;

  int currentIndex = 0;

  List<bool>active=[
    true,false,false,false
  ];

  List<Widget> bottomScreens = [
    FurnitureHomePage(),
    FurnitureStatsPage(),
    FurnitureShoppingCartPage(),
    FurnitureProfilePage(),
  ];
  void changeBottomIndex(int index) {
    setState(() {
      active[0]= false;
      active[1]= false;
      active[2]= false;
      active[3]= false;
      currentIndex = index;
      active[index]= true;

    });
  }

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

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: bottomScreens[currentIndex],
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          onTap: (index){
            changeBottomIndex(index);
          },
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(icon: Icon(
              Icons.event_seat,
              color: active[0]?Colors.yellow:Colors.grey,
              size: screenWidth!*0.075,
            )),
            Tab(icon: Icon(
              Icons.timer,
              color: active[1]?Colors.yellow:Colors.grey,
              size: screenWidth!*0.075,
            )),
            Tab(icon: Icon(
              Icons.shopping_cart,
              color: active[2]?Colors.yellow:Colors.grey,
              size: screenWidth!*0.075,
            )),
            Tab(icon: Icon(
              Icons.person_outline,
              color: active[3]?Colors.yellow:Colors.grey,
              size: screenWidth!*0.075,
            ))
          ],
        ),
      ),
    );
  }
}

//https://raw.githubusercontent.com/rajayogan/flutterui-productdescription/master/assets/otto2.jpeg
//https://raw.githubusercontent.com/rajayogan/flutterui-productdescription/master/assets/otto3.jpg
//https://raw.githubusercontent.com/rajayogan/flutterui-productdescription/master/assets/otto4.jpg
//https://raw.githubusercontent.com/rajayogan/flutterui-productdescription/master/assets/otto5.jpg
//https://raw.githubusercontent.com/rajayogan/flutterui-productdescription/master/assets/ottoman.jpg
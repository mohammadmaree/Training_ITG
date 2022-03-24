import 'package:first_projrct/Furniture/furniture_main.dart';
import 'package:first_projrct/Furniture/pages/furniture%20_home_page.dart';
import 'package:first_projrct/Furniture/pages/furniture_product_description_page.dart';
import 'package:first_projrct/Furniture/pages/furniture_shopping_cart_page.dart';
import 'package:first_projrct/Furniture/pages/furniture_stats_page.dart';
import 'package:first_projrct/cards/cards_page.dart';
import 'package:first_projrct/carousel/pages/carousel_page.dart';
import 'package:first_projrct/dessert_restaurant/pages/dessert_restaurant_home.dart';
import 'package:first_projrct/gcoaching/pages/home_page.dart';
import 'package:first_projrct/authentication/pages/login_page.dart';
import 'package:first_projrct/authentication/pages/profile_page.dart';
import 'package:first_projrct/restaurant/pages/restaurant_home.dart';
import 'package:first_projrct/authentication/pages/signup_page.dart';
import 'package:first_projrct/travelogram/pages/travelogram_home.dart';
import 'package:first_projrct/travelogram/pages/travelogram_profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const MyHomePage(),
      routes: {
        LoginPage.routeName : (ctx) => LoginPage(),
        SignupPage.routeName : (ctx) => SignupPage(),
        ProfilePage.routeName :(ctx) =>ProfilePage(),
        TravelogramProfilePage.routeName:(ctx)=>TravelogramProfilePage(),
        TravelogramHome.routeName:(ctx)=>TravelogramHome(),
        FurnitureHomePage.routeName:(ctx)=>FurnitureHomePage(),
        FurnitureStatsPage.routeName:(ctx)=>FurnitureStatsPage(),
        FurnitureProductDescriptionPage.routeName:(ctx)=>FurnitureProductDescriptionPage(),
      },
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FurnitureMain();
  }
}

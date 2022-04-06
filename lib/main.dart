import 'package:first_projrct/%20fruits/fruits_main.dart';
import 'package:first_projrct/Furniture/furniture_main.dart';
import 'package:first_projrct/Furniture/pages/furniture%20_home_page.dart';
import 'package:first_projrct/Furniture/pages/furniture_product_description_page.dart';
import 'package:first_projrct/Furniture/pages/furniture_shopping_cart_page.dart';
import 'package:first_projrct/Furniture/pages/furniture_stats_page.dart';
import 'package:first_projrct/cakes_and_pastries/cakes_and_pastries_page.dart';
import 'package:first_projrct/car_service/pages/car_service_page.dart';
import 'package:first_projrct/car_service/pages/rental_service_page.dart';
import 'package:first_projrct/cards/cards_page.dart';
import 'package:first_projrct/carousel/pages/carousel_page.dart';
import 'package:first_projrct/clean_designs/chef_profile/pages/chef_profile_page.dart';
import 'package:first_projrct/clean_designs/fashion_designs/pages/fashion_designs_page.dart';
import 'package:first_projrct/clean_designs/gourmet_takeaway/pages/gourmet_takeaway_page.dart';
import 'package:first_projrct/clean_designs/hairstylist/pages/hairstylist_page.dart';
import 'package:first_projrct/clean_designs/minimal/minimal_page.dart';
import 'package:first_projrct/currency_account/currency_account_main.dart';
import 'package:first_projrct/dessert_restaurant/pages/dessert_restaurant_home.dart';
import 'package:first_projrct/food_reviews/food_reviews_page.dart';
import 'package:first_projrct/gcoaching/pages/home_page.dart';
import 'package:first_projrct/authentication/pages/login_page.dart';
import 'package:first_projrct/authentication/pages/profile_page.dart';
import 'package:first_projrct/minimal_designs_profile/minimal_designs_profile_page.dart';
import 'package:first_projrct/mobile_shopping/pages/mobile_shopping_page.dart';
import 'package:first_projrct/nutrition_app/pages/nutrition_app_page.dart';
import 'package:first_projrct/plants/pages/plants_page.dart';
import 'package:first_projrct/restaurant/pages/restaurant_home.dart';
import 'package:first_projrct/authentication/pages/signup_page.dart';
import 'package:first_projrct/restaurant_reviews/restaurant_reviews_page.dart';
import 'package:first_projrct/scroll%20_effects/scroll_effects_page.dart';
import 'package:first_projrct/starbucks/starbucks_page.dart';
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
        CarServicePage.routeName:(ctx)=>CarServicePage(),
        RentalServicePage.routeName:(ctx)=>RentalServicePage(),
      },
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NutritionAppPage();
  }
}



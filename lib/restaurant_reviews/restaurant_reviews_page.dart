import 'package:first_projrct/restaurant_reviews/widget/build_restaurant_personal_info.dart';
import 'package:first_projrct/restaurant_reviews/widget/build_restaurant_photo_profile.dart';
import 'package:first_projrct/restaurant_reviews/widget/build_restaurant_social_info.dart';
import 'package:first_projrct/restaurant_reviews/widget/build_restaurants.dart';
import 'package:flutter/material.dart';

class RestaurantReviewsPage extends StatefulWidget {
  @override
  State<RestaurantReviewsPage> createState() => _RestaurantReviewsPageState();
}

class _RestaurantReviewsPageState extends State<RestaurantReviewsPage>with SingleTickerProviderStateMixin{
  double? screenWidth;
  double? screenHeight;
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }


  @override
  Widget build(BuildContext context) {
    screenWidth=MediaQuery.of(context).size.width;
    screenHeight=MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    List<Tab> tabs=[
      Tab(
        child: Text(
          'My Restaurants',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: screenWidth!*0.055,),
        ),
      ),
      Tab(
        child: Text(
          'My Wishlist',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: screenWidth!*0.055,),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Montserrat',
            fontSize: screenWidth!*0.05
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
          size: screenWidth!*0.05,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: screenWidth!*0.02),
            child: Icon(
              Icons.edit,
              color: Colors.grey,
              size: screenWidth!*0.05,
            ),
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          BuildRestaurantPhotoProfile(
            photoProfile:'assets/images/engin.jpg',
            icon:Icons.fastfood,
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
          ),
          BuildRestaurantPersonalInfo(
            name:'Chloe Hannouille',
            location:'Dhaka-Bangladesh',
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
          ),
          SizedBox(height: screenHeight!*0.03),
          BuildRestaurantSocialInfo(
            followers:'121k',
            following:'152',
            tasteMaker:'455',
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: const Color(0xFF33426F),
            isScrollable: true,
            unselectedLabelColor: const Color(0xFFB6BDC7),
            tabs:tabs,
          ),
          SizedBox(height: screenHeight!*0.015),
          Container(
              height: screenHeight! - 450.0,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  BuildRestaurants(
                    screenWidth:screenWidth!,
                    screenHeight:screenHeight!,
                  ),
                  BuildRestaurants(
                    screenWidth:screenWidth!,
                    screenHeight:screenHeight!,
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}

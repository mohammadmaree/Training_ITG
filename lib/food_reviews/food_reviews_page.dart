import 'package:first_projrct/food_reviews/widget/build_food_image_profile.dart';
import 'package:first_projrct/food_reviews/widget/build_food_info.dart';
import 'package:first_projrct/food_reviews/widget/build_food_list_state.dart';
import 'package:flutter/material.dart';

class FoodReviewsPage extends StatefulWidget {
  @override
  State<FoodReviewsPage> createState() => _FoodReviewsPageState();
}

class _FoodReviewsPageState extends State<FoodReviewsPage>with SingleTickerProviderStateMixin{

  double? screenWidth;
  double? screenHeight;
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }


  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    List<Tab> tabs=[
      Tab(
        child: Text(
          'Recipes',
          style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: screenWidth!*0.035),
        ),
      ),
      Tab(
        child: Text(
          'Gallery',
          style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: screenWidth!*0.035),
        ),
      ),
      Tab(
        child: Text(
          'Story',
          style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: screenWidth!*0.035),
        ),
      )
    ];
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Container(height: screenHeight!*0.45,),
              Container(
                height: screenHeight!*0.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/counter.jpg'),
                        fit: BoxFit.cover)),
              ),
              BuildFoodImageProfile(
                image:'assets/images/model.jpg',
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
              ),
              BuildFoodInfo(
                name:'Elisabeth',
                followers:'1,974 Followers',
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TabBar(controller: tabController,
              indicatorColor: const Color(0xFF469469),
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: tabs,
            ),
          ),
          Container(
            height: screenHeight! - 325.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                BuildFoodListState(
                  screenHeight:screenHeight!,
                  screenWidth:screenWidth!,
                ),
                BuildFoodListState(
                  screenHeight:screenHeight!,
                  screenWidth:screenWidth!,
                ),
                BuildFoodListState(
                  screenHeight:screenHeight!,
                  screenWidth:screenWidth!,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

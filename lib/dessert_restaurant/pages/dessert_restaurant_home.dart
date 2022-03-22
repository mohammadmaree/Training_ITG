import 'package:first_projrct/dessert_restaurant/widget/build_dessert_restaurant_button.dart';
import 'package:first_projrct/dessert_restaurant/widget/build_dessert_restaurant_food_card.dart';
import 'package:first_projrct/dessert_restaurant/widget/build_dessert_restaurant_main_photo.dart';
import 'package:flutter/material.dart';

class DessertRestaurantHome extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios,
            size: screenWidth!*0.08,
          ),
          onPressed: () {},
          iconSize:screenWidth!*0.08,
          color: Colors.black,
        ),
        title: Text(
            'Fine quality',
            style: TextStyle(
                color: Colors.black,
              fontSize:screenWidth!*0.07,
            )),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.search,
              size: screenWidth!*0.08,
            ),
            onPressed: () {},
            iconSize: screenWidth!*0.08,
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(screenWidth!*0.05),
                height: screenHeight!*0.42,
               // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDessertRestaurantMainPhoto(
                      screenHeight:screenHeight!,
                      screenWidth: screenWidth!,
                      image: 'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img4.jpg',
                      text1:'Honey Bread',
                      text2:'\$88',
                    ),
                    SizedBox(width: screenWidth!*0.01),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        BuildDessertRestaurantButton(
                          screenWidth:screenWidth!,
                          screenHeight: screenHeight!,
                          icon:Icons.favorite,
                          status: 'active',
                          text:'368',
                        ),
                        BuildDessertRestaurantButton(
                          screenWidth:screenWidth!,
                          screenHeight: screenHeight!,
                          icon:Icons.chat_bubble,
                          status: 'inActive',
                          text:'76',
                        ),
                        BuildDessertRestaurantButton(
                          screenWidth:screenWidth!,
                          screenHeight: screenHeight!,
                          icon:Icons.arrow_forward,
                          status: 'inActive',
                          text:'18',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight!*0.01),
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Text(
                  'Commodity',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize:screenWidth!*0.065,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: screenHeight!*0.02),
              GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.85,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  BuildDessertRestaurantFoodCard(
                    screenHeight:screenHeight!*0.35,
                    screenWidth:screenWidth!*0.5,
                    name:'Raspberry',
                    origin:'Italy',
                    cardImage:'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img2.jpg',
                    cardIndex:1,
                    commentCount:22,
                    likes:64,
                  ),
                  BuildDessertRestaurantFoodCard(
                    screenHeight:screenHeight!*0.35,
                    screenWidth:screenWidth!*0.5,
                    name:'Mousse',
                    origin:'China',
                    cardImage:'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img3.jpg',
                    cardIndex:2,
                    commentCount:22,
                    likes:64,
                  ),
                  BuildDessertRestaurantFoodCard(
                    screenHeight:screenHeight!*0.35,
                    screenWidth:screenWidth!*0.5,
                    name:'Cupcake',
                    origin:'Sweden',
                    cardImage:'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img4.jpg',
                    cardIndex:3,
                    commentCount:22,
                    likes:64,
                  ),
                  BuildDessertRestaurantFoodCard(
                    screenHeight:screenHeight!*0.35,
                    screenWidth:screenWidth!*0.5,
                    name:'Raspberry',
                    origin:'Italy',
                    cardImage:'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img5.jpg',
                    cardIndex:4,
                    commentCount:22,
                    likes:64,
                  ),
                  BuildDessertRestaurantFoodCard(
                    screenHeight:screenHeight!*0.35,
                    screenWidth:screenWidth!*0.5,
                    name:'Mousse',
                    origin:'China',
                    cardImage:'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img6.jpg',
                    cardIndex:5,
                    commentCount:22,
                    likes:64,
                  ),
                  BuildDessertRestaurantFoodCard(
                    screenHeight:screenHeight!*0.35,
                    screenWidth:screenWidth!*0.5,
                    name:'Raspberry',
                    origin:'Italy',
                    cardImage:'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img7.jpg',
                    cardIndex:6,
                    commentCount:22,
                    likes:64,
                  ),
                  // _buildFoodCard('Mousse', 'China', 'assets/img2.jpg', 64, 22, 2),
                  // _buildFoodCard('Raspberry', 'Italy', 'assets/img3.jpg', 64, 22, 3),
                  // _buildFoodCard('Cupcake', 'Sweden', 'assets/img5.jpg', 64, 22, 4),
                  // _buildFoodCard('Cupcake', 'Sweden', 'assets/img6.jpg', 64, 22, 5),
                  // _buildFoodCard('Cupcake', 'Sweden', 'assets/img7.jpg', 64, 22, 6),
                ],
              ),
              SizedBox(height: 10.0)
            ],
          ),
        ],
      ),
    );
  }

  // List<String>images=[
  //   'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img2.jpg',
  //   'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img3.jpg',
  //   'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img4.jpg'
  //   'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img5.jpg',
  //   'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img6.jpg',
  //   'https://raw.githubusercontent.com/rajayogan/flutterUI-cakescatalog/master/assets/img7.jpg',
  // ];
  // List cardIndex =[1,2,3,4,5,6];
  // List<String>names=[
  //   'Mousse',
  //   'Raspberry',
  //   'Cupcake',
  //   'Raspberry',
  //   'Cupcake',
  //   'Mousse',
  // ];
  // List<String>origin=[
  //   'China',
  //   'Italy',
  //   'China',
  //   'Italy',
  //   'China',
  //   'Sweden',
  // ];
}

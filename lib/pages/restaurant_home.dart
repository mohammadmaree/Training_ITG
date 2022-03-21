import 'package:first_projrct/widget/build_restaurant_food_card.dart';
import 'package:first_projrct/widget/build_restaurant_image.dart';
import 'package:flutter/material.dart';

class RestaurantHome extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  List<String> images=[
    'https://raw.githubusercontent.com/rajayogan/flutter-foodrecipe/master/assets/balanced.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutter-foodrecipe/master/assets/pasta.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutter-foodrecipe/master/assets/sandwich.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutter-foodrecipe/master/assets/breakfast.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenHeight!*0.33,
                color: const Color(0xFFFFF5EA),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(screenWidth!*0.05, screenHeight!*0.04, screenWidth!*0.05, screenHeight!*0.02),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(screenWidth!*0.075),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              size: screenWidth!*0.07,
                            ),
                            contentPadding: EdgeInsets.only(left: 50.0, top: screenHeight!*0.02),
                            hintText: 'Search for recipes and channels',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                              fontSize:screenWidth!*0.045,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight!*0.04),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth!*0.04),
                    child: Container(
                      padding: EdgeInsets.only(left: screenWidth!*0.03),
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.orange,
                                  style: BorderStyle.solid,
                                  width: screenWidth!*0.008,
                              )
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('POPULAR RECIPES',
                              style: TextStyle(
                                  fontSize: screenWidth!*0.055,
                                  fontFamily: 'Timesroman',
                                  fontWeight: FontWeight.bold)),
                          Text('\tTHIS WEEK',
                              style: TextStyle(
                                  fontSize: screenWidth!*0.055,
                                  fontFamily: 'Timesroman',
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight!*0.03),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, left: 15.0),
                    height: screenHeight!*0.17,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            BuildRestaurantFoodCard(
                                  screenHeight:screenHeight!*0.17,
                                  screenWidth:screenWidth!*0.7,
                                  image:images[index],
                            ),
                        separatorBuilder:(context, index) =>SizedBox(width: screenWidth!*0.05),
                        itemCount: images.length,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: screenHeight!*0.03),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: screenWidth!*0.05),
            child: Text(
              'September 7',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.grey,
                  fontSize: screenWidth!*0.04
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left:screenWidth!*0.05),
            child: Text(
              'TODAY',
              style: TextStyle(
                  fontFamily: 'Timesroman',
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth!*0.09
              ),
            ),
          ),
          SizedBox(height: screenHeight!*0.03),
          Stack(
            children: [
              buildRestaurantImage(
                screenHeight:screenHeight!*0.4,
                screenWidth:screenWidth!,
                image:'https://raw.githubusercontent.com/rajayogan/flutter-foodrecipe/master/assets/breakfast.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }

}

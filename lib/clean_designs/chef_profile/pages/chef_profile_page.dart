import 'package:first_projrct/clean_designs/chef_profile/widget/build_chef_profile_button.dart';
import 'package:first_projrct/clean_designs/chef_profile/widget/build_chef_profile_get_works.dart';
import 'package:first_projrct/clean_designs/chef_profile/widget/build_chef_profile_menu_card.dart';
import 'package:flutter/material.dart';

class ChefProfilePage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  List<String>menuImage=[
    'assets/images/bananabreak.jpg',
    'assets/images/fruitbreak.jpeg',
  ];
  List<String>menuTitle=[
    'Berry banana milkshake',
    'Fruit pancake',
  ];
  List<String>workImage=[
    'assets/images/fruitpancake.jpeg',
    'assets/images/fruitpancake.jpeg',
    'assets/images/dumplings.jpeg',
    'assets/images/noodles.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: screenHeight!*0.72,
                width: double.infinity,
              ),
              Container(
                height: screenHeight!*0.42,
                width: double.infinity,
                color: Color(0xFFFA624F),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  iconSize:screenWidth!*0.07,
                  icon: Icon(
                      Icons.arrow_back_ios,
                    size:screenWidth!*0.07,
                  ),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: screenHeight!*0.25,
                left: 15.0,
                right: 15.0,
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(screenWidth!*0.05,),
                  child: Container(
                    height:screenHeight!*0.44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth!*0.05,),
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight!*0.43,
                left: screenWidth!*0.17,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Chris Pratt',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize:screenWidth!*0.075,
                      ),
                    ),
                    SizedBox(height:screenHeight!*0.02,),
                    Text(
                      'China',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize:screenWidth!*0.06,
                          color: Colors.grey),
                    ),
                    SizedBox(height:screenHeight!*0.02,),
                    Row(
                      children: <Widget>[
                        BuildChefProfileButton(
                          screenHeight:screenWidth!,
                          screenWidth:screenHeight!,
                          button: 'Message',
                        ),
                        SizedBox(width:screenWidth!*0.04),
                        BuildChefProfileButton(
                          screenHeight:screenWidth!,
                          screenWidth:screenHeight!,
                          button: 'Following',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: screenHeight!*0.15,
                left: screenWidth!*0.3,
                child: Container(
                  height: screenWidth!*0.4,
                  width: screenWidth!*0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth!*0.5,),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/engin.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          SizedBox(height:screenHeight!*0.015,),
          Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: screenWidth!*0.05,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: screenWidth!*0.05,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height:screenHeight!*0.015,),
          ListView.separated(
            shrinkWrap: true,
              itemBuilder:(context, index) => BuildChefProfileMenuCard(
                title:menuTitle[index],
                image:menuImage[index],
                type:'Breakfast',
                rating:4,
                views:2.8,
                likes:1.2,
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
              ),
            separatorBuilder:(context, index) => const SizedBox(height: 12.0),
            itemCount:menuTitle.length,
          ),
          SizedBox(height:screenHeight!*0.02,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Works',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: screenWidth!*0.05,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: screenWidth!*0.05,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height:screenHeight!*0.02,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 5.0),
            child: Container(
              height: screenHeight!*0.2,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) =>
                    BuildChefProfileGetWorks(
                      image:workImage[index],
                      screenHeight:screenHeight!,
                      screenWidth:screenWidth!,
                    ),
                itemCount:workImage.length,
              ),

            ),
          ),
          SizedBox(height:screenHeight!*0.02,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Bought',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: screenWidth!*0.05,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: screenWidth!*0.05,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}

import 'package:first_projrct/widget/build_travel_image_profile.dart';
import 'package:flutter/material.dart';

import '../widget/build_travel_post_detail.dart';

class TravelogramProfilePage extends StatelessWidget {
  static String routeName = 'ravelogramProfilePageRouteName';
  double? screenWidth;
  double? screenHeight;

  List<String> Images=[
    'https://raw.githubusercontent.com/rajayogan/flutterui-traveldiary/master/assets/beach1.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutterui-traveldiary/master/assets/beach2.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutterui-traveldiary/master/assets/beach3.jpg'
  ];
  List<String> names=[
    'Mark Stewart',
    'Mark Stewart',
    'Mark Stewart',
  ];
  List<String> times=[
    '2h',
    '3h',
    '5h',
  ];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back,
            size: screenWidth!*0.08,
          ),
          color: Colors.black,
          iconSize: screenWidth!*0.08,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(
                Icons.more_vert,
              size: screenWidth!*0.08,
            ),
          color: Colors.black,
            iconSize: screenWidth!*0.08,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'assets/chris.jpg',
                child: Container(
                  height: screenWidth!*0.35,
                  width: screenWidth!*0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth!*0.25),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/engin.jpg',))),
                ),
              ),
              SizedBox(height: screenHeight!*0.05),
              Text(
                'Mark Stewart',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenHeight!*0.03,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenHeight!*0.005),
              Text(
                'San Jose, CA',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                  fontSize: screenHeight!*0.02,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth!*0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '24K',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenHeight!*0.022,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: screenHeight!*0.006),
                        Text(
                          'FOLLOWERS',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenHeight!*0.022,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '31',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenHeight!*0.022,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: screenHeight!*0.006),
                        Text(
                          'TRIPS',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenHeight!*0.022,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '21',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenHeight!*0.022,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: screenHeight!*0.006),
                        Text(
                          'BUCKET LIST',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenHeight!*0.022,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth!*0.05),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                            Icons.table_chart,
                          size: screenWidth!*0.065,
                        ),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(
                          Icons.menu,
                        size: screenWidth!*0.07,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder:(context, index) => Column(
                  children: [
                    BuildTravelImageProfile(
                      screenHeight: screenHeight!*0.35,
                      screenWidth:screenWidth!,
                      image: Images[index],
                    ),
                    SizedBox(height: screenHeight!*0.017),
                    BuildPostTravelDetail(
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!*0.25,
                      name: names[index],
                      time: times[index],
                      numberOfImages: 1,
                    ),
                  ],
                ),
                separatorBuilder:(context, index) =>SizedBox(height: screenHeight!*0.02),
                itemCount: Images.length,
              ),
            ],
          )
        ],
      ),
    );
  }

}

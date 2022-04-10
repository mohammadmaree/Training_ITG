import 'package:first_projrct/travel_app_speed_code/widget/build_travel_app_app_bar.dart';
import 'package:first_projrct/travel_app_speed_code/widget/build_travel_app_info.dart';
import 'package:first_projrct/travel_app_speed_code/widget/build_travel_app_search.dart';
import 'package:flutter/material.dart';

class TravelAppSpeedCodePage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          BuildTravelAppAppBar(
            image: 'assets/images/profilepic.jpg',
            screenHeight: screenHeight!,
            screenWidth: screenWidth!,
          ),
          BuildTravelAppInfo(
            screenWidth: screenWidth!,
            screenHeight: screenHeight!,
          ),
          BuildTravelAppSearch(
            text:'What would you like to discover?',
            screenWidth: screenWidth!,
            screenHeight:screenHeight!,
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth!*0.05),
            child: Container(
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Most Popular',
                      style: TextStyle(
                        fontFamily: 'Opensans',
                        fontSize:screenWidth!*0.05,
                      )),
                  Icon(Icons.more_horiz, color: Colors.black,size: screenWidth!*0.07,)
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

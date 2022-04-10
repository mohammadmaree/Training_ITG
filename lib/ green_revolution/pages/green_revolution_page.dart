import 'package:first_projrct/%20green_revolution/widget/build_green_revolution_app_bar.dart';
import 'package:first_projrct/%20green_revolution/widget/build_green_revolution_list_item.dart';
import 'package:flutter/material.dart';

class  GreenRevolutionPage extends StatelessWidget {
  double? screenHeight;
  double? screenWidth;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        children: [
          BuildGreenRevolutionAppBar(
            image:'assets/images/avocado.png',
            screenHeight:screenHeight!,
            screenWidth:screenWidth!,
          ),
          Padding(
            padding: EdgeInsets.only(left:screenWidth!*0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Good',
                    style: TextStyle(
                        fontFamily: 'Futur',
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF5B8842),
                        fontSize: screenWidth!*0.14)),
                Text('Morning',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF5B8842),
                        fontSize:screenWidth!*0.14)),
                SizedBox(height: screenHeight!*0.025),
                Text('Popular Food',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth!*0.05))
              ],
            ),
          ),
          SizedBox(height: screenHeight!*0.02),
          Container(
            height: screenHeight!*0.36,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                BuildGreenRevolutionListItem(
                    imgPath: 'assets/images/plate1.png',
                    foodName: 'Vegan Breakfast',
                    price: '\$28',
                    screenWidth: screenWidth!,
                    screenHeight: screenHeight!,
                ),
                BuildGreenRevolutionListItem(
                    imgPath: 'assets/images/plate2.png',
                    foodName: 'Protein Salad',
                    price: '\$26',
                    screenWidth: screenWidth!,
                    screenHeight: screenHeight!,
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0,bottom:screenHeight!*0.02,top: screenHeight!*0.02 ),
              child: Text('Best Food',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth!*0.05))
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth!*0.05, right:  screenWidth!*0.05),
            child: Container(
              height: screenHeight!*0.25,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.white, Color(0xFFACBEA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(screenHeight!*0.015),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/plate1.png'),
                      fit: BoxFit.contain)),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: screenHeight!*0.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(screenHeight!*0.05),
                topRight: Radius.circular(screenHeight!*0.05)
            ),
            color: Color(0xFF5AC035)
        ),
        padding: EdgeInsets.only(left: screenWidth!*0.1,right: screenWidth!*0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.bookmark_border, color: Colors.white,size: screenWidth!*0.07),
            Icon(Icons.search, color: Colors.white,size: screenWidth!*0.07),
            Icon(Icons.shopping_basket, color: Colors.white,size: screenWidth!*0.07),
            Icon(Icons.person_outline, color: Colors.white,size: screenWidth!*0.07)
          ],
        ),
      ),
    );
  }
}

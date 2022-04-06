import 'package:first_projrct/nutrition_app/widget/build_nutrition%20_item.dart';
import 'package:first_projrct/nutrition_app/widget/build_nutrition_app_bar.dart';
import 'package:first_projrct/nutrition_app/widget/build_nutrition_pays.dart';
import 'package:flutter/material.dart';

class NutritionAppPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  List<String>images=[
    'assets/images/plate1.png',
    'assets/images/plate2.png',
    'assets/images/plate3.png',
    'assets/images/plate5.png'
  ];
  List<String>names=['Salmon bowl','Salmon bowl','Avocado bowl','Berry bowl'];

  List<String>prices=['\$24.00','\$22.00','\$26.00','\$24.00'];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: const Color(0xFF21BFBD),
      body: ListView(
        children: [
          BuildNutritionAppBar(
            screenHeight:screenHeight!,
            screenWidth:screenWidth!,
          ),
          Padding(
            padding: EdgeInsets.only(left:screenWidth!*0.1),
            child: Row(
              children: <Widget>[
                Text('Healthy',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth!*0.065)),
                SizedBox(width: screenWidth!*0.02),
                Text('Food',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: screenWidth!*0.065))
              ],
            ),
          ),
          SizedBox(height: screenHeight!*0.05),
          Container(
            height: screenHeight! - 100.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: screenWidth!*0.03, right: screenWidth!*0.03,),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: screenHeight!*0.07),
                    child: Container(
                        height: screenHeight! - 220.0,
                        child: ListView.builder(
                          itemBuilder: (context, index) =>
                              BuildNutritionItem(
                                imgPath:images[index],
                                foodName:names[index],
                                price:prices[index],
                                screenHeight:screenHeight!,
                                screenWidth:screenWidth!,
                                ),
                          itemCount:images.length,
                          ),
                   )
                ),
                BuildNutritionPays(
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

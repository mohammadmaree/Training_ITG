import 'package:first_projrct/nutrition_app/widget/build_nutrition_info_card.dart';
import 'package:flutter/material.dart';

class NutritionDetailsPage  extends StatelessWidget {
  final String heroTag;
  final String foodName;
  final String foodPrice;
  final double screenWidth;
  final double screenHeight;

  NutritionDetailsPage({
    required this.heroTag,
    required this.foodName,
    required this.foodPrice,
    required this.screenWidth,
    required this.screenHeight,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF7A9BEE),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios,size: screenWidth*0.06),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Details',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.055,
                  color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz,size: screenWidth*0.06),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: screenHeight - 82.0,
                width: screenWidth,
                color: Colors.transparent),
            Positioned(
                top:  screenHeight*0.15,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular( screenHeight*0.1),
                          topRight: Radius.circular( screenHeight*0.1),
                        ),
                        color: Colors.white),
                    height: screenHeight - 40.0,
                    width: screenWidth)),
            Positioned(
                top:  screenHeight*0.05,
                left: (screenWidth / 2) - 100.0,
                child: Hero(
                    tag: heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(heroTag),
                                fit: BoxFit.cover)),
                        height: screenWidth*0.62,
                        width: screenWidth*0.62,
                    )
                )
            ),
            Positioned(
                top: screenHeight*0.5,
                left: screenWidth*0.05,
                right: screenWidth*0.05,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: screenWidth*0.065,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: screenHeight*0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(foodPrice,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: screenWidth*0.06,
                                color: Colors.grey)),
                        Container(height: 25.0, color: Colors.grey, width: 1.0),
                        Container(
                          width: screenWidth*0.35,
                          height: screenHeight*0.08,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
                              color: const Color(0xFF7A9BEE)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: screenWidth*0.05,
                                  width: screenWidth*0.05,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(screenWidth*0.05,),
                                      color: const Color(0xFF7A9BEE)),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: screenWidth*0.05,
                                    ),
                                  ),
                                ),
                              ),
                              Text('2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontSize: screenWidth*0.05,)),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: screenWidth*0.1,
                                  width: screenWidth*0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(screenWidth*0.03,),
                                      color: Colors.white),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF7A9BEE),
                                      size: screenWidth*0.07,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            BuildNutritionInfoCard(
                                cardTitle:'WEIGHT',
                                info:'300',
                                unit:'G',
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                            ),
                            SizedBox(width: 10.0),
                            BuildNutritionInfoCard(
                              cardTitle:'CALORIES',
                              info:'267',
                              unit:'CAL',
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                            ),
                            SizedBox(width: 10.0),
                            BuildNutritionInfoCard(
                              cardTitle:'VITAMINS',
                              info:'A, B6',
                              unit:'VIT',
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                            ),
                            SizedBox(width: 10.0),
                            BuildNutritionInfoCard(
                              cardTitle:'AVAIL',
                              info:'NO',
                              unit:'AV',
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.only(bottom:5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0), bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
                            color: Colors.black
                        ),
                        height: 50.0,
                        child: Center(
                          child: Text(
                              '\$52.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ])
        ]));
  }
}

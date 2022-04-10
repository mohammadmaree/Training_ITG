import 'package:first_projrct/scratch_wine_app/model.dart';
import 'package:first_projrct/scratch_wine_app/widget/build_scratch_wine_card.dart';
import 'package:first_projrct/scratch_wine_app/widget/build_scratch_wine_rating_star.dart';
import 'package:flutter/material.dart';

class ScratchWineAppPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;
  final wineBrands = wines;
  final recommendList = recommendWines;
  @override
  Widget build(BuildContext context) {
    screenWidth=MediaQuery.of(context).size.width;
    screenHeight=MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
        body: ListView(children: [
          Stack(children: [
            Container(
              height: screenHeight!*0.52,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(screenHeight!*0.1,)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 12.0,
                        spreadRadius: 7.0)
                  ]),
            ),
            Positioned(
                top: screenHeight!*0.02,
                child: Container(
                  padding: EdgeInsets.only(left: screenWidth!*0.04, right: screenWidth!*0.04),
                  width: screenWidth,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: screenWidth!*0.075,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.grey,
                          size: screenWidth!*0.075,
                        ),
                      ]),
                )),
            Positioned(
                top: screenHeight!*0.021,
                right:  screenWidth!*0.042,
                child: Container(
                  height:screenWidth!*0.035,
                  width: screenWidth!*0.035,
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(screenWidth!*0.035,)),
                  child: Center(
                      child: Text('1',
                          style: TextStyle(fontSize: screenWidth!*0.02, color: Colors.white))),
                )),
            Positioned(
              top: screenHeight!*0.08,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: screenWidth!*0.04, right: screenWidth!*0.04),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Boutique',
                            style: TextStyle(
                                fontFamily: 'AbrilFatFace', fontSize:screenWidth!*0.065)),
                        Text('More',
                            style: TextStyle(color: Colors.grey, fontSize: screenWidth!*0.045))
                      ],
                    ),
                    SizedBox(height: screenHeight!*0.01,),
                    Container(
                        height: screenHeight!*0.37,
                        width: screenWidth!,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: wineBrands.map((wine) {
                              return BuildScratchWineCard(wine: wine,screenHeight:screenHeight! ,screenWidth: screenWidth!,);
                            }).toList()))
                  ],
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Recommend',
                    style: TextStyle(fontFamily: 'AbrilFatFace', fontSize: screenWidth!*0.065)),
                Text('More', style: TextStyle(color: Colors.grey, fontSize: screenWidth!*0.045))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth!*0.035),
            child: Container(
              height: screenHeight!*0.37,
              width: screenWidth!,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: recommendList.map((wine) {
                    return BuildScratchWineCard(wine: wine,screenHeight:screenHeight! ,screenWidth: screenWidth!,);
                  }).toList()),
            ),
          )
        ]));
  }

}

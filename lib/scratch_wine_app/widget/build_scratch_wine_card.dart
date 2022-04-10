import 'package:first_projrct/scratch_wine_app/model.dart';
import 'package:first_projrct/scratch_wine_app/widget/build_scratch_wine_rating_star.dart';
import 'package:flutter/material.dart';

class BuildScratchWineCard extends StatelessWidget {
  final Wine wine;
  final double screenWidth;
  final double screenHeight;

  BuildScratchWineCard({
    required this.wine,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
            onTap: () {},
            child: Container(
                width: screenWidth*0.55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4.0,
                          spreadRadius: 5.0,
                          color: Colors.grey.withOpacity(0.1))
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: screenHeight*0.35,
                        width: screenWidth*0.55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white)),
                    Container(
                      height: screenHeight*0.22,
                      width: screenWidth*0.55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                          color: wine.bgColor),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Hero(
                            tag: wine.imgPath,
                            child: Container(
                                height: screenHeight*0.19,
                                width: screenWidth*0.5,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(wine.imgPath),
                                        fit: BoxFit.contain),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0)))))),
                    Positioned(
                      top:screenHeight*0.01,
                      left:screenWidth*0.02,
                      child: Text(wine.price,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    Positioned(
                        top:screenHeight*0.01,
                        left:screenWidth*0.02,
                        child: Icon(Icons.shopping_cart,
                            color: Colors.white, size: 15.0)),
                    Positioned(
                        top:screenHeight*0.24,
                        left:screenWidth*0.02,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(wine.title,
                                style: TextStyle(
                                  fontFamily: 'AbrilFatFace',
                                  fontSize: screenWidth*0.04,
                                )),
                            SizedBox(height: screenHeight*0.01,),
                            Text(wine.subTitle,
                                style: TextStyle(
                                    fontSize: screenWidth*0.03, color: Colors.grey)),
                            SizedBox(height: screenHeight*0.01,),
                            Row(
                              children: <Widget>[
                                BuildScratchWineRatingStar(rating: wine.rating,index: 1,screenWidth: screenWidth),
                                BuildScratchWineRatingStar(rating: wine.rating,index: 2,screenWidth: screenWidth),
                                BuildScratchWineRatingStar(rating: wine.rating,index: 3,screenWidth: screenWidth),
                                BuildScratchWineRatingStar(rating: wine.rating,index: 4,screenWidth: screenWidth),
                                BuildScratchWineRatingStar(rating: wine.rating,index: 5,screenWidth: screenWidth),
                                SizedBox(width: 3.0),
                                Text(wine.rating.roundToDouble().toString(),
                                    style: TextStyle(
                                        fontSize: screenWidth*0.04,
                                        color: Color(0xFF199693))),
                              ],
                            )
                          ],
                        ))
                  ],
                )
            )
        )
    );
  }
}

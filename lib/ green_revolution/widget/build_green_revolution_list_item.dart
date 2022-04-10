import 'package:first_projrct/%20green_revolution/pages/green_revolution_detail_page.dart';
import 'package:flutter/material.dart';

class BuildGreenRevolutionListItem extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final String price;
  final double screenHeight;
  final double screenWidth;

  BuildGreenRevolutionListItem({
    required this.imgPath,
    required this.foodName,
    required this.price,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
              builder: (context) => GreenRevolutionDetailPage(
                  heroTag: imgPath,
                  foodName: foodName,
                  foodPrice: price,
                screenHeight:screenHeight,
                screenWidth:screenWidth,
              )
          ))
          );
        },
        child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
            child: Container(
                height:screenHeight*0.45,
                width: screenWidth*0.55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height:screenHeight*0.24,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Color(0xFFACBEA3)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height:screenWidth*0.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),
                    Positioned(
                        top:screenHeight*0.22,
                        right: screenWidth*0.05,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: screenWidth*0.08,
                              width: screenWidth*0.08,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: screenWidth*0.05)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(screenWidth*0.08),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top:screenHeight*0.26,
                        left:screenWidth*0.03,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: screenWidth*0.04,)),
                            SizedBox(height: screenWidth*0.01,),
                            Container(
                                width: screenWidth*0.48,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: screenWidth*0.035,),
                                        ),
                                        SizedBox(width: screenWidth*0.015),
                                        Icon(Icons.star,
                                            color: Colors.green, size: screenWidth*0.04,),
                                        Icon(Icons.star,
                                            color: Colors.green, size:screenWidth*0.04,),
                                        Icon(Icons.star,
                                            color: Colors.green, size: screenWidth*0.04,),
                                        Icon(Icons.star,
                                            color: Colors.green, size: screenWidth*0.04,),
                                        Icon(Icons.star,
                                            color: Colors.green, size: screenWidth*0.04,),
                                      ],
                                    ),
                                    Text(price,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: screenWidth*0.045,)),
                                  ],
                                )
                            )
                          ],
                        )
                    )
                  ],
                )
            )
        )
    );
  }
}

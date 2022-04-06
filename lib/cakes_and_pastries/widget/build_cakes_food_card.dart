import 'package:flutter/material.dart';

class BuildCakesFoodCard extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final double price;
  final int calCount;
  final bool hasMilk;
  final double screenWidth;
  final double screenHeight;

  BuildCakesFoodCard({
    required this.imgPath,
    required this.foodName,
    required this.price,
    required this.calCount,
    required this.hasMilk,
    required this.screenWidth,
    required this.screenHeight
  })
  ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight*0.01, left: screenWidth*0.025, bottom: screenWidth*0.025),
      child: Container(
        height: screenHeight,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 3.0,
                  spreadRadius: 3.0
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: screenWidth*0.03, right: screenWidth*0.03, top: screenHeight*0.01),
                  child: Image.asset(imgPath,
                    fit: BoxFit.cover,
                    height: screenWidth*0.27,
                    width: screenWidth*0.27,
                  ),
                ),
                Positioned(
                    top: screenHeight*0.125,
                    left: screenWidth*0.17,
                    child: hasMilk ? Container(
                      height: screenHeight*0.022,
                      width: screenWidth*0.16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xFFF75A4C),
                            style: BorderStyle.solid,
                            width: 0.25
                        ),
                        borderRadius: BorderRadius.circular( screenWidth*0.05),
                      ),
                      child: Center(
                        child: Text(
                          'with milk',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth*0.03,
                              color: const Color(0xFFF75A4C)
                          ),
                        ),
                      ),
                    ) : Container()
                )
              ],
            ),
            Container(
              width: screenWidth*0.35,
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(foodName,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: const Color(0xFF440206),
                    fontSize: screenWidth*0.04,
                ),
              ),
            ),
            SizedBox(height: screenHeight*0.01),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text('\$' + price.toString(),
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: const Color(0xFFF75A4C),
                  fontSize: screenWidth*0.04,
                ),
              ),
            ),
            SizedBox(height: screenHeight*0.01),
            Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                        Icons.account_box,
                        color: Color(0xFFF75A4C),
                        size: screenWidth*0.05,
                    ),
                    SizedBox(width: screenWidth*0.02,),
                    Text(calCount.toString() + 'cal',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize:screenWidth*0.04,
                          color: Colors.grey
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildStarbucksAppBar extends StatelessWidget {
  final String notification;
  final double screenWidth;
  final double screenHeight;
  BuildStarbucksAppBar({
    required this.notification,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: screenHeight*0.02),
          child: IconButton(
              icon: Icon(
                  Icons.arrow_back,
                size:screenWidth*0.06,
              ),
              color: Colors.black,
              iconSize:screenWidth*0.06,
              onPressed: () {}),
        ),
        Padding(
          padding: EdgeInsets.only(top:screenHeight*0.02, right: screenWidth*0.04),
          child: Stack(
            children: <Widget>[
              Container(
                height: screenWidth*0.14,
                width: screenWidth*0.14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.transparent),
              ),
              Container(
                height: screenWidth*0.11,
                width: screenWidth*0.11,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth*0.14,),
                    color: Color(0xFF116D51)),
                child: Center(
                  child: Icon(
                    Icons.shopping_basket,
                    color: Colors.white,
                    size:screenWidth*0.055,
                  ),
                ),
              ),
              Positioned(
                top: screenHeight*0.035,
                right: screenWidth*0.09,
                child: Container(
                  height: screenWidth*0.05,
                  width:screenWidth*0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth*0.05,),
                      color: Colors.red),
                  child: Center(
                      child: Text(
                        notification,
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize:screenWidth*0.03
                        ),
                      )),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

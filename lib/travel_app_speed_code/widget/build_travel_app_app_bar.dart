import 'package:flutter/material.dart';

class BuildTravelAppAppBar extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String image;

  BuildTravelAppAppBar({
    required this.screenWidth,
    required this.screenHeight,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth*0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.donut_large,size: screenWidth*0.07),
          Stack(
            children: <Widget>[
              Container(height: screenWidth*0.15, width: screenWidth*0.15,),
              Container(
                height: screenWidth*0.13,
                width:screenWidth*0.13,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(screenWidth*0.13,)),
              ),
              Positioned(
                left: screenWidth*0.01,
                top: screenHeight*0.05,
                child: Container(
                  height: screenWidth*0.03,
                  width: screenWidth*0.03,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth*0.03,),
                      color: Colors.green,
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 1.0)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

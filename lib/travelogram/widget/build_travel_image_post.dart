import 'package:flutter/material.dart';

class buildTravelImagePost extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final List<String> images;

  buildTravelImagePost({
    required this.screenWidth,
    required this.screenHeight,
    required this.images,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: screenHeight*0.05, left: screenWidth*0.05, right:screenWidth*0.05),
        child: Container(
          height: screenHeight*0.9,
          child: Row(
            children: <Widget>[
              Container(
                height: screenHeight*0.9,
                width: screenWidth*0.4475,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(screenWidth*0.04),
                        bottomLeft: Radius.circular(screenWidth*0.04)),
                    image:DecorationImage(
                        image: NetworkImage(images[0]),
                        fit: BoxFit.cover)),
              ),
              SizedBox(width: screenWidth*0.005),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: screenHeight*0.4475,
                    width: screenWidth*0.4475,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(screenWidth*0.04),
                        ),
                        image:DecorationImage(
                            image: NetworkImage(images[1]),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height:screenHeight*0.005),
                  Container(
                    height: screenHeight*0.4475,
                    width: screenWidth*0.4475,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(screenWidth*0.04)),
                        image: DecorationImage(
                            image: NetworkImage(images[2]),
                            fit: BoxFit.cover)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

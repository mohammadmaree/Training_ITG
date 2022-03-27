import 'package:flutter/material.dart';

class BuildFashionDesignsListItem extends StatelessWidget {
  final String imageMain;
  final String logo;
  final double screenHeight;
  final double screenWidth;
  BuildFashionDesignsListItem({
    required this.imageMain,
    required this.logo,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: screenWidth*0.175,
              width: screenWidth*0.175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth*0.2,),
                  image: DecorationImage(
                      image: AssetImage(imageMain), fit: BoxFit.cover)),
            ),
            Positioned(
              top: screenWidth*0.1,
              left: screenWidth*0.1,
              child: Container(
                height: screenWidth*0.05,
                width:screenWidth*0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth*0.2,),
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.contain)),
              ),
            )
          ],
        ),
        SizedBox(height: screenHeight*0.02),
        Container(
          height: screenHeight*0.035,
          width: screenWidth*0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xFF916144)),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.04,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BuildRestaurantPhotoProfile extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String photoProfile;
  final IconData icon;
  BuildRestaurantPhotoProfile({
    required this.screenWidth,
    required this.screenHeight,
    required this.photoProfile,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: screenHeight*0.01),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: screenWidth*0.3,
              width:screenWidth*0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth*0.3,),
                  image: DecorationImage(
                      image: AssetImage(photoProfile),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        Positioned(
          left: screenWidth*0.575,
          top: screenHeight*0.14,
          child: Container(
            height: screenWidth*0.08,
            width: screenWidth*0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth*0.08,),
                color: Colors.white),
            child: Icon(
              icon,
              color: Colors.red,
              size: screenWidth*0.045,
            ),
          ),
        )
      ],
    );
  }
}

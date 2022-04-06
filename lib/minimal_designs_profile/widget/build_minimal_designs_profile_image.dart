import 'package:flutter/material.dart';

class BuildMinimalDesignsProfileImage extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String imageProfile;
  BuildMinimalDesignsProfileImage({
    required this.screenHeight,
    required this.screenWidth,
    required this.imageProfile,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:screenWidth*0.05, right: screenWidth*0.05, top:screenWidth*0.05),
      child: Container(
        height: screenWidth*0.16,
        width: screenWidth*0.16,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth*0.16,),
            image: DecorationImage(
                image: AssetImage(imageProfile),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}

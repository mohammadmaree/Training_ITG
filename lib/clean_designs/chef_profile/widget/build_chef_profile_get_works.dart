import 'package:flutter/material.dart';

class BuildChefProfileGetWorks extends StatelessWidget {
  final String image;
  final double screenHeight;
  final double screenWidth;
  BuildChefProfileGetWorks({
    required this.image,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: screenHeight*0.18,
        width:screenWidth*0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}

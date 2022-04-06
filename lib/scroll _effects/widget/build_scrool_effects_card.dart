
import 'package:flutter/material.dart';
class BuildScroolEffectsCard extends StatelessWidget {
  final Map slide;
  final double screenWidth;
  final double screenHeight;
  BuildScroolEffectsCard({
    required this.slide,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: screenHeight*0.025, right: screenWidth*0.025),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, style: BorderStyle.solid, width: 1.0),
        ),
        height: 200.0,
        width: screenWidth*04,
        child: Center(
          child: Text(
            slide['slideName'],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

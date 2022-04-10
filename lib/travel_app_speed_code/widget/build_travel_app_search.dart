import 'package:flutter/material.dart';

class BuildTravelAppSearch extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String text;
  BuildTravelAppSearch({
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth*0.05),
      child: Container(
        padding: EdgeInsets.only(left: screenWidth*0.06),
        height: screenHeight*0.09,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenHeight*0.02),
            color: const Color(0xFFF9F9F9)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.withOpacity(0.7),
              ),
              hintText:text,
              hintStyle: TextStyle(
                  fontFamily: 'Opensans',
                  fontSize: screenWidth*0.04,
                  color: Colors.grey.withOpacity(0.7)),
            ),
          ),
        ),
      ),
    );
  }
}

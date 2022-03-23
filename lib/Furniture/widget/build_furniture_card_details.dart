import 'package:flutter/material.dart';

class BuildFurnitureCardDetails extends StatelessWidget {
  final String title;
  final String image;
  final String valueCount;
  final double screenHeight;
  final double screenWidth;
  BuildFurnitureCardDetails({
    required this.title,
    required this.image,
    required this.valueCount,
    required this.screenHeight,
    required this.screenWidth,
});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(screenHeight*0.01),
      child: Container(
        height: screenHeight*0.22,
        width: screenWidth*0.45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenHeight*0.01), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: screenHeight*0.01,),
            Padding(
              padding: EdgeInsets.only(left: screenWidth*0.06,),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: screenWidth*0.14,
                width: screenWidth*0.14,
              ),
            ),
            SizedBox(height: screenHeight*0.01,),
            Padding(
              padding: EdgeInsets.only(left: screenWidth*0.06,),
              child: Text(title,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: screenWidth*0.04,
                    color: Colors.black,
                  )),
            ),
            SizedBox(height: screenHeight*0.01,),
            Padding(
              padding: EdgeInsets.only(left: screenWidth*0.06,),
              child: Text(valueCount,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: screenWidth*0.04,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}

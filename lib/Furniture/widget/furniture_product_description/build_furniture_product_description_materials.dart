import 'package:flutter/material.dart';

class BuildFurnitureProductDescriptionMaterials extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<IconData> icons;
  final List<String> titles;
  BuildFurnitureProductDescriptionMaterials({
    required this.screenHeight,
    required this.screenWidth,
    required this.icons,
    required this.titles,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: screenWidth*0.04),
        child: Row(
          children: <Widget>[
            Container(
                height: screenWidth*0.14,
                width: screenWidth*0.14,
                child: Icon(
                  icons[0],
                  color: Colors.grey,
                  size: screenWidth*0.09,
                )
            ),
            Text(titles[0],
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.05,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 10.0),
            Container(
              height: screenWidth*0.14,
              width: screenWidth*0.14,
              child: Icon(
                icons[1],
                color: Colors.grey,
                size: screenWidth*0.09,
              ),
            ),
            Text(titles[1],
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.05,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 10.0),
            Container(
              height: screenWidth*0.14,
              width: screenWidth*0.14,
              child: Icon(
                icons[2],
                color: Colors.grey,
                size: screenWidth*0.09,
              ),
            ),
            Text(titles[2],
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.05,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        )
    );
  }
}

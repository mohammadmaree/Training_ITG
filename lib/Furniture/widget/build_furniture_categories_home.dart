import 'package:flutter/material.dart';

class BuildFurnitureCategoriesHome extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<String> images;
  final List<String> names;
  BuildFurnitureCategoriesHome({
    required this.screenHeight,
    required this.screenWidth,
    required this.images,
    required this.names,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: screenHeight*0.1),
        Material(
            elevation: 1.0,
            child: Container(height: screenHeight, color: Colors.white)
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: screenHeight,
              width: screenWidth*0.25,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screenHeight*0.65,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(images[0]))),
                  ),
                  Text(
                    names[0],
                    style: TextStyle(
                      fontSize:screenWidth*0.045,
                        fontFamily: 'Quicksand'
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: screenHeight,
              width: screenWidth*0.25,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screenHeight*0.65,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(images[1]))),
                  ),
                  Text(
                    names[1],
                    style: TextStyle(
                        fontSize:screenWidth*0.045,
                        fontFamily: 'Quicksand'
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: screenHeight,
              width: screenWidth*0.25,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screenHeight*0.65,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(images[2]))),
                  ),
                  Text(
                    names[2],
                    style: TextStyle(
                        fontSize:screenWidth*0.045,
                        fontFamily: 'Quicksand'
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: screenHeight,
              width: screenWidth*0.25,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screenHeight*0.65,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(images[3]))),
                  ),
                  Text(
                    names[3],
                    style: TextStyle(
                        fontSize:screenWidth*0.045,
                        fontFamily: 'Quicksand'
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

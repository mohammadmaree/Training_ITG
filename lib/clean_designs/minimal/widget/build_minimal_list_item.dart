import 'package:flutter/material.dart';

class BuildMinimalListItem extends StatelessWidget {
  final String image;
  final String name;
  final bool available;
  final double screenHeight;
  final double screenWidth;
  BuildMinimalListItem({
    required this.image,
    required this.name,
    required this.available,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: screenWidth*0.25,
          width: screenWidth*0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth*0.25,),
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(height:screenHeight*0.015),
        Row(
          children: <Widget>[
            Text(name,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth*0.05,
                    fontWeight: FontWeight.w600)),
            SizedBox(width: 4.0),
            available
                ? Container(
              height: screenWidth*0.035,
              width: screenWidth*0.035,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.orange),
            )
                : Container()
          ],
        )
      ],
    );
  }
}

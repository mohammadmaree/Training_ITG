import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildFashionDesignsPostLawerPart extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final bool isFavourite;
  BuildFashionDesignsPostLawerPart({
    required this.screenHeight,
    required this.screenWidth,
    required this.isFavourite,
  });
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
                Icons.reply,
                color: Colors.grey.withOpacity(0.4),
                size: screenWidth*0.065,
            ),
            SizedBox(width:screenWidth*0.02),
            Text(
              '1.7k',
              style: TextStyle(
                  color: Colors.grey,
                fontFamily: 'Montserrat',
                fontSize: screenWidth*0.04,
              ),
            ),
            SizedBox(width:screenWidth*0.02),
            Icon(
              Icons.comment,
              color: Colors.grey.withOpacity(0.4),
              size: screenWidth*0.065,
            ),
            SizedBox(width:screenWidth*0.02),
            Text(
              '325',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: screenWidth*0.04,
                  fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            isFavourite?
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: screenWidth*0.065,
            ) :
            Icon(
              Icons.favorite,
              color: Colors.grey,
              size: screenWidth*0.065,
            ),
            SizedBox(width:screenWidth*0.02),
            Text(
              '2.3k',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: screenWidth*0.04,
                  fontFamily: 'Montserrat',
              ),
            ),
          ],
        )
      ],
    );
  }
}

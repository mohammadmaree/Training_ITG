import 'package:flutter/material.dart';

class BuildFurnitureAppBar extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String image;
  final IconData icon;
  final String title;
  final String nAccount;
  BuildFurnitureAppBar({
    required this.screenHeight,
    required this.screenWidth,
    required this.nAccount,
    required this.image,
    required this.icon,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: screenWidth*0.04),
        Container(
          alignment: Alignment.topLeft,
          height:screenWidth*0.15,
          width: screenWidth*0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth*0.15,),
              border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2.0),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      image,
                  ))),
        ),
        SizedBox(width: screenWidth*0.04),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: screenWidth*0.08,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              nAccount,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: screenWidth*0.04,
                  color: Colors.black.withOpacity(0.7)),
            )
          ],
        ),
        SizedBox(
          width:screenWidth*0.4,
        ),
        Container(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: Icon(
              icon,
              size:screenWidth*0.1,
            ),
            onPressed: () {},
            color: Colors.white,
            iconSize:screenWidth*0.1,
          ),
        ),
        SizedBox(height: screenHeight*0.005),
      ],
    );
  }
}

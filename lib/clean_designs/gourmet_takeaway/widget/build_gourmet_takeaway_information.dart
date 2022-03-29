
import 'package:flutter/material.dart';

class BuildGourmetTakeawayInformation extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String name;
  final String info;
  final String details;
  BuildGourmetTakeawayInformation({
    required this.screenWidth,
    required this.screenHeight,
    required this.name,
    required this.info,
    required this.details,
  });
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              fontSize:screenWidth*0.07,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFFE6E22)),
        ),
        SizedBox(height:screenHeight*0.012),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: screenWidth*0.06,
              color: const Color(0xFFC6CC40),
            ),
            SizedBox(
              width: screenWidth - 175.0,
              child: Text(
                info,
                style: TextStyle(
                    fontSize: screenWidth*0.04, color: Colors.grey),
              ),
            )
          ],
        ),
        SizedBox(
          width: screenWidth - 175.0,
          child: Text(
            details,
            style:
            TextStyle(
                fontSize: screenWidth*0.04,
                color: Colors.grey),
          ),
        )
      ],
    );
  }
}

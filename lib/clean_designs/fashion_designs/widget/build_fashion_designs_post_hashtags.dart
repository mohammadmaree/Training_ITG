import 'package:flutter/material.dart';

class BuildFashionDesignsPostHashtags extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<String> hashtags;
  BuildFashionDesignsPostHashtags({
    required this.screenHeight,
    required this.screenWidth,
    required this.hashtags,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: screenHeight*0.045,
          width:screenWidth*0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.brown.withOpacity(0.2),
          ),
          child: Center(
            child: Text(
              hashtags[0],
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.0375,
                  color: Colors.brown),
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: screenHeight*0.045,
          width:screenWidth*0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.brown.withOpacity(0.2)),
          child: Center(
            child: Text(
              hashtags[1],
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: screenWidth*0.0375,
                  color: Colors.brown),
            ),
          ),
        )
      ],
    );
  }
}

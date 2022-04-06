import 'package:flutter/material.dart';

class BuildPlantDetailsInformation extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildPlantDetailsInformation({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(
          top: screenHeight - 275.0,
          left: screenWidth*0.05,
          right: screenWidth*0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'All to know...',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize:screenWidth*0.07,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize:screenWidth*0.04,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Details',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize:screenWidth*0.07,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Plant height: 35-45cm;',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize:screenWidth*0.04,
              ),
            ),
            Text(
              'Nursery pot width: 12cm',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize:screenWidth*0.04,
              ),
            ),
          ],
        ));
  }
}

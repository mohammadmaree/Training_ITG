import 'package:flutter/material.dart';

class BuildFurnitureProductDescriptionColors extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildFurnitureProductDescriptionColors({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.only(left: screenWidth*0.04),
        child: Row(
          children: <Widget>[
            Container(
              height: screenWidth*0.14,
              width: screenWidth*0.14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color(0xFF5A5551)
              ),
            ),
            SizedBox(width: screenWidth*0.04,),
            Container(
              height: screenWidth*0.14,
              width: screenWidth*0.14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color(0xFFC3BCB5)
              ),
            ),
            SizedBox(width: screenWidth*0.04,),
            Container(
              height: screenWidth*0.14,
              width: screenWidth*0.14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color(0xFFEFEFEF)
              ),
            )
          ],
        )
    );
  }
}

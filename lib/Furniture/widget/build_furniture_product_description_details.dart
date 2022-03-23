import 'package:flutter/material.dart';

class BuildFurnitureProductDescriptionDetails extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String price;
  final String title;
  final String alcideNumber;
  final String description;
  BuildFurnitureProductDescriptionDetails({
    required this.screenHeight,
    required this.screenWidth,
    required this.price,
    required this.title,
    required this.alcideNumber,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: screenWidth*0.04),
          child: Text(
            'Alcide Number: $alcideNumber',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: screenWidth*0.045,
                color: Colors.grey
            ),
          ),
        ),
        SizedBox(height: screenHeight*0.01),
        Padding(
          padding:EdgeInsets.only(left:screenWidth*0.04),
          child: Text(title,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: screenWidth*0.07,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(height: screenHeight*0.01),
        Padding(padding: EdgeInsets.only(left:screenWidth*0.04, right: screenWidth*0.04),
            child: Row(
              children: <Widget>[
                Container(
                  width: screenWidth*0.72,
                  child: Text(description,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: screenWidth*0.033,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                  ),
                ),
                Text('\$$price',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: screenWidth*0.07,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
        ),
      ],
    );
  }
}

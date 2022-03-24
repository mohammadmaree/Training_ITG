import 'package:flutter/material.dart';

class BuildFurnitureStatsListItem extends StatelessWidget {
  final String title;
  final int buttonColor;
  final IconData icon;
  final double screenHeight;
  final double screenWidth;
  BuildFurnitureStatsListItem({
    required this.title,
    required this.buttonColor,
    required this.icon,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color(buttonColor).withOpacity(0.3)
            ),
            child: Icon(
                icon,
                color: Color(buttonColor),
                size: 25.0
            ),
          ),
          SizedBox(width: 25.0),
          Container(
            width: MediaQuery.of(context).size.width - 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(title,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20.0
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

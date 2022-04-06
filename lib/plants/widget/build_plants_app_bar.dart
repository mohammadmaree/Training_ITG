import 'package:flutter/material.dart';

class BuildPlantsAppBar extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildPlantsAppBar({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding:  EdgeInsets.fromLTRB(0.0,screenHeight*0.02,screenWidth*0.05,0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              size: screenWidth*0.075,
            ),
            onPressed: () {},
          ),
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey.withOpacity(0.3),
              mini: true,
              elevation: 0.0,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: screenWidth*0.075,
              )),
        ],
      ),
    );
  }
}

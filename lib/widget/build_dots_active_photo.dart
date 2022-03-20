import 'package:flutter/material.dart';

class BuildDotsActivePhoto extends StatelessWidget {
  final double screenWidth;

  BuildDotsActivePhoto({
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: screenWidth,
        width: screenWidth,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(screenWidth*0.5),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.0,
                  blurRadius: 2.0
              )
            ]
        ),
      ),
    );
  }
}

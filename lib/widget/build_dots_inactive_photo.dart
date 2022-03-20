import 'package:flutter/material.dart';

class BuildDotsInactivePhoto extends StatelessWidget {

  final double screenWidth;

  BuildDotsInactivePhoto({
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: screenWidth,
        width: screenWidth,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(screenWidth*0.5)
        ),
      ),
    );
  }
}

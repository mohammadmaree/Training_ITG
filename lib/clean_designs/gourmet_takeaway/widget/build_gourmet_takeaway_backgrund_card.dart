import 'package:flutter/material.dart';

class BuildGourmetTakeawayBackgrundCard extends StatelessWidget {
  final double screenHeight;
  BuildGourmetTakeawayBackgrundCard({
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: screenHeight*0.32,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3.0,
            blurRadius: 2.0),
      ], color: Colors.white),
    );
  }
}

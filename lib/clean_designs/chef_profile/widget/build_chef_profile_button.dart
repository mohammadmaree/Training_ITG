import 'package:flutter/material.dart';

class BuildChefProfileButton extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String button;
  BuildChefProfileButton({
    required this.screenHeight,
    required this.screenWidth,
    required this.button,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight*0.1,
      width:screenWidth*0.15,
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        color: Color(0xFFFA624F),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              button,
              style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth*0.025,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

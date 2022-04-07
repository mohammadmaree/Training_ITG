import 'package:flutter/material.dart';

class BuildFoodBeveragesBackground extends StatelessWidget {
  final String image;
  final String title;
  final double screenHeight;
  final double screenWidth;
  BuildFoodBeveragesBackground({
    required this.image,
    required this.title,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent])
                .createShader(
                Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(image,
              height: 300.0, fit: BoxFit.cover),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(title,
              style: TextStyle(
                  fontSize:screenWidth*0.15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.3),
                  letterSpacing: 10.0)),
        ),
      ],
    );
  }
}

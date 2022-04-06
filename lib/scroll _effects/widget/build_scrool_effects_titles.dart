
import 'package:flutter/material.dart';

class BuildScroolEffectsTitles extends StatelessWidget {
  final Map slide;
  //final Function function;
  final double screenWidth;
  final double screenHeight;

  BuildScroolEffectsTitles({
    required this.slide,
  //  required this.function
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
     //   function();
      },
      child: Padding(
        padding: EdgeInsets.only(top: screenHeight*0.025),
        child: Text(
          slide['slideName'],
          style: TextStyle(
              fontWeight:
              slide['selected'] ? FontWeight.bold : FontWeight.normal,
              fontSize: screenWidth*0.06),
        ),
      ),
    );
  }

}

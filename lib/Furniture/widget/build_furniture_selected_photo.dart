import 'package:first_projrct/Furniture/widget/build_furniture_dots_active_photo.dart';
import 'package:first_projrct/Furniture/widget/build_furniture_dots_inactive_photo.dart';
import 'package:flutter/material.dart';

class BuildFurnitureSelectedPhoto extends StatelessWidget {

  final int numberOfDots;
  final int photoIndex;
  final double screenWidth;
  BuildFurnitureSelectedPhoto({
    required this.numberOfDots,
    required this.photoIndex,
    required this.screenWidth,
  });


  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
     dots.add(i == photoIndex ?
     BuildFurnitureDotsActivePhoto(screenWidth:screenWidth,)
         :
     BuildFurnitureDotsInActivePhoto(screenWidth: screenWidth,));
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildDots(),
        ));
  }
}

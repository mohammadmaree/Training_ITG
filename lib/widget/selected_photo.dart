import 'package:first_projrct/widget/build_dots_active_photo.dart';
import 'package:first_projrct/widget/build_dots_inactive_photo.dart';
import 'package:flutter/material.dart';

class SelectedPhoto extends StatelessWidget {

  final int numberOfDots;
  final int photoIndex;
  final double screenWidth;


  SelectedPhoto({
    required this.numberOfDots,
    required this.photoIndex,
    required this.screenWidth,
  });

  List<Widget> listDots() {
    List<Widget> dots = [];

    for(int i = 0; i< numberOfDots; ++i) {
      dots.add(
          i == photoIndex ? BuildDotsActivePhoto(screenWidth:screenWidth,): BuildDotsInactivePhoto(screenWidth:screenWidth*0.85)
      );
    }

    return dots;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: listDots(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildAnimatedSwitcher extends StatefulWidget {
  final Icon icon;
  final Color iconColor;
  final double screenWidth;
  final double screenHeight;

  BuildAnimatedSwitcher({
    required this.icon,
    required this.iconColor,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  State<BuildAnimatedSwitcher> createState() => _BuildAnimatedSwitcherState();
}

class _BuildAnimatedSwitcherState extends State<BuildAnimatedSwitcher> {
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return RotationTransition(child: child, turns: animation);
        },
        child: InkWell(
          key: UniqueKey(),
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                  height:widget.screenWidth*0.15,
                  width:widget.screenWidth*0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widget.screenWidth*0.15,),
                      color: widget.iconColor),
                  child: Center(child: widget.icon))),
          onTap: () {
            setState(() {
              opened = false;
            });
          },
        ));
  }
}

import 'package:first_projrct/animatedSwitcher/widget/build_animatedSwitcher.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherPage extends StatefulWidget {
  @override
  State<AnimatedSwitcherPage> createState() => _AnimatedSwitcherPageState();
}

class _AnimatedSwitcherPageState extends State<AnimatedSwitcherPage> {
  double? screenWidth;
  double? screenHeight;
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: opened
                  ? screenWidth! / 2 - 40.0
                  : screenWidth! / 2 - 150.0,
              top: (screenHeight! / 2) - 30.0,
              child: BuildAnimatedSwitcher(
                icon: Icon(Icons.hourglass_bottom,color: Colors.white,size: screenWidth!*0.07),
                 iconColor: Colors.purple,
                screenHeight: screenHeight!,
                screenWidth:screenWidth! ,
              )
          ),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: opened
                  ? MediaQuery.of(context).size.width / 2 - 40.0
                  : (MediaQuery.of(context).size.width / 2) - 120.0,
              top: opened ? (MediaQuery.of(context).size.height / 2) - 40.0
                  : (MediaQuery.of(context).size.height / 2) - 110.0
              ,
              child: BuildAnimatedSwitcher(
                  icon: Icon(Icons.hourglass_bottom, color: Colors.white,size: screenWidth!*0.07),
                  iconColor:Colors.purple,
                 screenHeight: screenHeight!,
                screenWidth: screenWidth!
              )
          ),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: opened
                  ? MediaQuery.of(context).size.width / 2 - 40.0
                  : (MediaQuery.of(context).size.width / 2) + 80.0,
              top: (MediaQuery.of(context).size.height / 2) - 30.0,
              child: BuildAnimatedSwitcher(
                  icon: Icon(Icons.bedroom_baby_outlined, color: Colors.white,size: screenWidth!*0.07),
                  iconColor: Colors.green,
                screenWidth: screenWidth!,
                screenHeight: screenHeight!,
              )),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: opened
                  ? MediaQuery.of(context).size.width / 2 - 40.0
                  : (MediaQuery.of(context).size.width / 2) + 50.0,
              top: opened ? (MediaQuery.of(context).size.height / 2) - 40.0:
              (MediaQuery.of(context).size.height / 2) - 110.0
              ,
              child: BuildAnimatedSwitcher(
                  icon: Icon(Icons.bedroom_baby_outlined, color: Colors.white,size: screenWidth!*0.07),
                  iconColor: Colors.green,
                screenHeight:screenHeight! ,
                screenWidth:screenWidth! ,
              )
          ),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: MediaQuery.of(context).size.width / 2 - 35.0,
              top: opened
                  ? (MediaQuery.of(context).size.height / 2) - 40.0
                  : (MediaQuery.of(context).size.height / 2) - 150.0,
              child: BuildAnimatedSwitcher(
                  icon: Icon(Icons.hourglass_bottom, color: Colors.white,size: screenWidth!*0.07),
                  iconColor: Colors.brown,
                screenHeight:screenHeight! ,
                screenWidth: screenWidth!,
              )
          ),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: MediaQuery.of(context).size.width / 2 - 35.0,
              top: opened
                  ? (MediaQuery.of(context).size.height / 2) - 40.0
                  : (MediaQuery.of(context).size.height / 2) + 80.0,
              child: BuildAnimatedSwitcher(
                  icon: Icon(Icons.beenhere_rounded, color: Colors.white,size: screenWidth!*0.07),
                  iconColor: Colors.deepOrange,
                screenWidth: screenWidth!,
                screenHeight: screenHeight!,
              )
          ),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: opened ?MediaQuery.of(context).size.width / 2 - 40.0 :
              MediaQuery.of(context).size.width / 2 - 110.0
              ,
              top: opened
                  ? (MediaQuery.of(context).size.height / 2) - 40.0
                  : (MediaQuery.of(context).size.height / 2) + 50.0,
              child: BuildAnimatedSwitcher(
                  icon: Icon(Icons.beenhere_rounded, color: Colors.white,size: screenWidth!*0.07),
                  iconColor: Colors.deepOrange,
                screenHeight: screenHeight!,
                screenWidth: screenWidth!,
              )
          ),
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: opened ?MediaQuery.of(context).size.width / 2 - 40.0 :
              MediaQuery.of(context).size.width / 2 + 50.0
              ,
              top: opened
                  ? (MediaQuery.of(context).size.height / 2) - 40.0
                  : (MediaQuery.of(context).size.height / 2) + 50.0,
              child: BuildAnimatedSwitcher(
                  icon: Icon(Icons.beenhere_rounded, color: Colors.white,size: screenWidth!*0.07),
                  iconColor: Colors.deepOrange,
                screenWidth:screenWidth! ,
                screenHeight: screenHeight!,
              )
          ),
          Align(
            alignment: Alignment.center,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: opened
                  ? InkWell(
                  key: UniqueKey(),
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                          height: screenWidth!*0.22,
                          width: screenWidth!*0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(screenWidth!*0.22),
                              color: Colors.blue),
                          child: Center(
                              child: Icon(Icons.home, color: Colors.white,size: screenWidth!*0.1,)))),
                  onTap: () {
                    setState(() {
                      opened = false;
                    });
                  })
                  : InkWell(
                  key: UniqueKey(),
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                          height:screenWidth!*0.22,
                          width: screenWidth!*0.22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(screenWidth!*0.22),
                              color: Colors.red),
                          child: Center(
                              child:
                              Icon(Icons.close, color: Colors.white,size: screenWidth!*0.1,)))),
                  onTap: () {
                    setState(() {
                      opened = true;
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}

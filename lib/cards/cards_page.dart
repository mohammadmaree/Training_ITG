import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> with SingleTickerProviderStateMixin{
  double? screenWidth;
  double? screenHeight;
  Animation? cardAnimation, delayedCardAnimation, fabButtonanim, infoAnimation;
  AnimationController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    cardAnimation = Tween(begin: 0.0, end: -0.025).animate(
        CurvedAnimation(curve: Curves.fastOutSlowIn, parent: controller!));

    delayedCardAnimation = Tween(begin: 0.0, end: -0.05).animate(
        CurvedAnimation(
            curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
            parent: controller!));

    fabButtonanim = Tween(begin: 1.0, end: -0.0008).animate(CurvedAnimation(
        curve: const Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller!));

    infoAnimation = Tween(begin: 0.0, end: 0.025).animate(CurvedAnimation(
        curve: const Interval(0.7, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller!));
  }


  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    controller!.forward();
    return AnimatedBuilder(
      animation: controller!,
        builder: (BuildContext context, Widget? child) {
        return Scaffold (
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: screenWidth!*0.07,
              ),
              color: Colors.black,
              onPressed: () {},
            ),
            title: Text(
                'Near by',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth!*0.07,
                  color: Colors.black,
                )),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: screenWidth!*0.05),
                child: FlutterLogo(size: screenWidth!*0.1),
              )
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(screenWidth!*0.05, screenHeight!*0.07, screenWidth!*0.05, screenHeight!*0.08),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Positioned(
                        left: 20.0,
                        right: 20.0,
                        child: Container(
                          transform: Matrix4.translationValues(0.0, delayedCardAnimation!.value * screenHeight, 0.0),
                          width: screenWidth!*0.7,
                          height: screenHeight!*0.6,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      Positioned(
                        left: 10.0,
                        right: 10.0,
                        child: Container(
                          transform: Matrix4.translationValues(0.0, cardAnimation!.value * screenHeight, 0.0),
                          width: screenWidth!*0.75,
                          height: screenHeight!*0.6,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      Container(
                        width: screenWidth!*0.8,
                        height: screenHeight!*0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: NetworkImage(
                                'https://raw.githubusercontent.com/rajayogan/flutter-cards/master/assets/girls.jpeg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        top: screenHeight!*0.5,
                        left: 15.0,
                        child: Container(
                          transform: Matrix4.translationValues(0.0, infoAnimation!.value * screenHeight, 0.0),
                          width: screenWidth!*0.72,
                          height: screenHeight!*0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 1.0,
                                    color: Colors.black12,
                                    spreadRadius: 2.0)
                              ]),
                          child: Container(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Kayla',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: screenWidth!*0.05
                                      ),
                                    ),
                                    const SizedBox(width: 4.0),
                                    // Image.asset(
                                    //   'assets/images/simbolo.png',
                                    //   height: 20.0,
                                    //   width: 20.0,
                                    // ),
                                    Image.network(
                                      'https://raw.githubusercontent.com/rajayogan/flutter-cards/master/assets/simbolo.png',
                                      height: screenWidth!*0.05,
                                      width: screenWidth!*0.05,
                                    ),
                                    SizedBox(width: screenWidth!*0.28),
                                    Text(
                                      '5.8km',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: screenWidth!*0.05,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 9.0),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Fate is wonderful.',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: screenWidth!*0.04,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              Container(
                transform: Matrix4.translationValues(0.0, fabButtonanim!.value * screenHeight, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      elevation: 0.0,
                      onPressed: () {},
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: screenWidth!*0.07,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Container(
                      height:screenWidth!*0.16,
                      width: screenWidth!*0.16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(
                            color: Colors.transparent,
                            style: BorderStyle.solid,
                            width: 2.0),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Image.network('https://raw.githubusercontent.com/rajayogan/flutter-cards/master/assets/chatbubble.png'),
                          color: Colors.lightBlueAccent[300],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0.0,
                      onPressed: () {},
                      child: Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: screenWidth!*0.07,
                      ),
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        );
        }
    );
  }
}


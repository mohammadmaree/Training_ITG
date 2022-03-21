import 'package:first_projrct/widget/build_default_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static String routeName = 'SignupPageRouteName';
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage>with SingleTickerProviderStateMixin{

  double? screenWidth;
  double? screenHeight;
  Animation? animation,delayedAnimation,muchDelayedAnimation;
  AnimationController? animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=
        AnimationController(duration: const Duration(seconds: 1),vsync: this);
    animation =Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(
            curve: Curves.fastOutSlowIn,
            parent: animationController!
        )
    );
    delayedAnimation =Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(
            curve: const Interval(0.5,1.0, curve: Curves.fastOutSlowIn),
            parent: animationController!
        )
    );
    muchDelayedAnimation =Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(
            curve: const Interval(0.8,1.0, curve: Curves.fastOutSlowIn),
            parent: animationController!
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    animationController!.forward();
    return AnimatedBuilder(
      animation: animationController!,
      builder:(BuildContext context,Widget? child){
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Transform(
                    transform: Matrix4.translationValues(animation!.value*screenWidth,0.0, 0.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, screenWidth!*0.25, 0.0, 0.0),
                          child: Text(
                            'Signup',
                            style:
                            TextStyle(
                                fontSize: screenWidth!*0.2,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(screenWidth!*0.67, screenWidth!*0.3, 0.0, 0.0),
                          child: Text(
                            '.',
                            style: TextStyle(
                                fontSize: screenWidth!*0.2,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        )
                      ],
                    ),
                  ),
                  Transform(
                    transform: Matrix4.translationValues(animation!.value*screenWidth,0.0,0.0),
                    child: Container(
                        padding: const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                        child: Column(
                          children: <Widget>[
                            BuildDefaultTextFormField(
                              text: "EMAIL",
                              screenWidth:screenWidth!,
                            ),
                            SizedBox(height: screenHeight!*0.03),
                            BuildDefaultTextFormField(
                              text: "PASSWORD ",
                              screenWidth:screenWidth!,
                            ),
                            SizedBox(height: screenHeight!*0.03),
                            BuildDefaultTextFormField(
                              text: "NICK NAME ",
                              screenWidth:screenWidth!,
                            ),
                            SizedBox(height: screenHeight!*0.1),
                            Container(
                                height: screenHeight!*0.06,
                                child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  shadowColor: Colors.greenAccent,
                                  color: Colors.green,
                                  elevation: 7.0,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                      child: Text(
                                        'SIGNUP',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth!*0.04,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                  ),
                                )),
                            SizedBox(height: screenHeight!*0.015),
                            Container(
                              height: screenHeight!*0.06,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black,
                                        style: BorderStyle.solid,
                                        width: 1.0),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child:

                                  Center(
                                    child: Text('Go Back',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth!*0.04,
                                            fontFamily: 'Montserrat')),
                                  ),


                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ]),
          ),
        );
      }
    );
  }
}

import 'package:first_projrct/authentication/pages/profile_page.dart';
import 'package:first_projrct/authentication/pages/signup_page.dart';
import 'package:first_projrct/authentication/widget/build_default_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String routeName = 'LoginPageRouteName';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

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
      animation:animationController!,
      builder:(BuildContext context,Widget? child){
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Transform(
                  transform: Matrix4.translationValues(0.0, animation!.value*screenWidth, 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, screenWidth!*0.25, 0.0, 0.0),
                        child: Text('Hello',
                          style: TextStyle(
                            fontSize: screenWidth!*0.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0, screenWidth!*0.42, 0.0, 0.0),
                        child: Text('There',
                          style: TextStyle(
                              fontSize: screenWidth!*0.2,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(screenWidth!*0.58, screenWidth!*0.42, 0.0, 0.0),
                        child: Text('.',
                            style: TextStyle(
                                fontSize: screenWidth!*0.2,
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                      )
                    ],
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(animation!.value*screenWidth, 0.0, 0.0),
                  child: Container(
                      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          BuildDefaultTextFormField(
                            text: "EMAIL",
                            screenWidth:screenWidth!,
                          ),
                          SizedBox(height: screenHeight!*0.01),
                          BuildDefaultTextFormField(
                            text:"PASSWORD",
                            screenWidth:screenWidth!,
                          ),
                          SizedBox(height: screenHeight!*0.01),
                          Container(
                            alignment: const Alignment(1.0, 0.0),
                            padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                            child: InkWell(
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: screenWidth!*0.045,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight!*0.025),
                          SizedBox(
                            height: screenHeight!*0.06,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.greenAccent,
                              color: Colors.green,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(ProfilePage.routeName);
                                },
                                child: Center(
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth!*0.04,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            ),
                          ),
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                      child:
                                      Icon(Icons.facebook,size:screenWidth!*0.07,)
                                    // ImageIcon(AssetImage('assets/images/facebook.png')),
                                  ),
                                  SizedBox(width: 10.0),
                                  Center(
                                    child: Text('Log in with facebook',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenWidth!*0.04,
                                            fontFamily: 'Montserrat')),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(height: screenHeight!*0.015  ),
                Transform(
                  transform: Matrix4.translationValues(-animation!.value*screenWidth, 0.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New to Spotify ?',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth!*0.04,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                          Navigator.of(context).pushNamed(SignupPage.routeName);
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth!*0.04,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}

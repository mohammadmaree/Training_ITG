import 'package:first_projrct/widget/default_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
        Stack(
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
              padding: EdgeInsets.fromLTRB(screenWidth!*0.62, screenWidth!*0.3, 0.0, 0.0),
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
        Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                DefaultTextFormField(
                  text: "EMAIL",
                ),
                SizedBox(height: 10.0),
                DefaultTextFormField(
                  text: "PASSWORD ",
                ),
                SizedBox(height: screenWidth!*0.04),
                DefaultTextFormField(
                  text: "NICK NAME ",
                ),
                SizedBox(height: 50.0),
                Container(
                    height: 40.0,
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
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    )),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
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
                                fontFamily: 'Montserrat')),
                      ),


                    ),
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}

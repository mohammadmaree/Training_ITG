import 'package:first_projrct/mobile_shopping/pages/detail_information_page.dart';
import 'package:flutter/material.dart';

class MobileShoppingPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                    'assets/images/pic4.jpeg',
                    fit: BoxFit.cover,
                    height: screenHeight!*0.5,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: screenHeight!*0.05),
                      Text(
                        'Louis W. & A.P.C',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: screenWidth!*0.1,
                            color: Colors.white),
                      ),
                      Text(
                        'Drop a Chic Selection of Outerwear',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: screenWidth!*0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: screenHeight!*0.025),
                      Text(
                        'for 2019 Spring/Summer',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: screenWidth!*0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(height: screenHeight!*0.27),
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailInformationPage()
                          ));
                        },
                        mini: true,
                        elevation: 0.0,
                        backgroundColor: Colors.white,
                        child: Center(
                            child: Icon(Icons.arrow_forward, color: Colors.black)),
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: <Widget>[
                Image.asset('assets/images/pic5.jpeg', fit: BoxFit.cover, height: screenHeight!*0.5,)
              ],
            )
          ],
        ));
  }
}

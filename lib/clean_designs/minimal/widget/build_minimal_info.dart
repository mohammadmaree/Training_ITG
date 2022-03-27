import 'package:flutter/material.dart';

class BuildMinimalInfo extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String text;
  final String name;
  final String time;

  BuildMinimalInfo({
    required this.screenHeight,
    required this.screenWidth,
    required this.text,
    required this.name,
    required this.time,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: (screenWidth - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/chris.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.orange),
                            ),
                            Text(
                              time,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])
            ),
            SizedBox(width: 10.0),
            Container(
                width: (screenWidth - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/tomcruise.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Mona Hall',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.orange),
                            ),
                            Text(
                              '10:51PM',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])
            ),
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';

class BuildMinimalFirst extends StatelessWidget {
  final String image1;
  final String image2;
  final String avatarImage;
  final double screenHeight;
  final double screenWidth;

  const BuildMinimalFirst({
    required this.image1,
    required this.image2,
    required this.avatarImage,
    required this.screenHeight,
    required this.screenWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.0,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
            children: [
              Container(
                  height: 250.0,
                  width: (screenWidth - 30.0) /2,
                  child: Column(
                      children: [
                        Container(
                          height: 125.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage(image1),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text('I like the way to place Items to show more...',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Montserrat'
                            )
                        ),
                        SizedBox(height: 15.0),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      image: DecorationImage(
                                          image: AssetImage(avatarImage)
                                      )
                                  )
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
                              )
                            ]
                        )
                      ]
                  )
              ),
              SizedBox(width: 10.0),
              Container(
                  height: 250.0,
                  width: (screenWidth - 30.0) /2,
                  child: Container(
                      height: 250.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage(image2),
                              fit: BoxFit.cover
                          )
                      )
                  )
              )
            ]
        )
    );
  }
}

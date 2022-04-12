import 'package:flutter/material.dart';

class TravelAppDetailPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  TravelAppDetailPage({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              height: screenHeight,
              color: Color(0xFFFE7050),
            ),
            Positioned(
              bottom: screenHeight*0.02,
              child: Container(
                  width: screenWidth,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.3), size: screenWidth*0.04),
                        Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.5), size:screenWidth*0.0425),
                        Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.7), size: screenWidth*0.045),
                        Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.9), size: screenWidth*0.0475),
                        RotatedBox(child: Icon(Icons.local_airport, color: Colors.white,size: screenWidth*0.075), quarterTurns: 1),
                      ],
                    ),
                  )
              ),
            ),
            Container(
              height: screenHeight - 65.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(screenHeight*0.05), bottomRight: Radius.circular(screenHeight*0.05)),
                  color: Colors.white
              ),
            ),
            Container(
              height: screenHeight - 280.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(screenHeight*0.05), bottomRight: Radius.circular(screenHeight*0.05)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/fishing.jpg'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Positioned(
              top: screenHeight*0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left:screenWidth*0.02),
                    child: Container(
                      width: screenWidth - 35.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: screenWidth*0.06, color: Colors.grey),
                                  Text('Asia, Myanmar',
                                    style: TextStyle(
                                        fontFamily: 'Opensans',
                                        fontSize: screenWidth*0.04,
                                        color: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:screenHeight*0.01,
                              ),
                              Text('Myanmar',
                                  style: TextStyle(
                                      fontFamily: 'Opensans',
                                      fontSize: screenWidth*0.055,
                                      fontWeight: FontWeight.w600
                                  )
                              )
                            ],
                          ),
                          Container(
                            height: screenHeight*0.1,
                            width: screenWidth*0.1,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(Icons.favorite_border, color: Colors.black, size: screenWidth*0.06,),
                                SizedBox(
                                  height:screenHeight*0.01,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth*0.04, top: screenHeight*0.02),
                    child: Row(
                      children: <Widget>[
                        Text('Recommendation',
                            style: TextStyle(
                                fontFamily: 'Opensans',
                                fontSize: screenWidth*0.04,
                                color: const Color(0xFF6A6A6A),
                                fontWeight: FontWeight.w600)),
                        SizedBox(width:screenWidth*0.06),
                        Stack(
                          children: <Widget>[
                            Container(height:screenHeight*0.075, width: screenWidth*0.2,),
                            Container(
                              height: screenWidth*0.1,
                              width:screenWidth*0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(screenWidth*0.1,),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/profilepic.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              left:screenWidth*0.07,
                              child: Container(
                                height: screenWidth*0.1,
                                width:screenWidth*0.1,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenWidth*0.1,),
                                    color: Color(0xFFFE7050)),
                                child: Center(
                                  child: Text('+28',
                                      style: TextStyle(
                                          fontSize:screenWidth*0.04, color: Colors.white)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width:screenWidth*0.04),
                        Text(
                          'More',
                          style:
                          TextStyle(color: Color(0xFF6A6A6A), fontFamily: 'Opensans', fontWeight: FontWeight.w600,fontSize: screenWidth*0.04),
                        ),
                        SizedBox(width: screenWidth*0.02),
                        Icon(Icons.arrow_drop_down, color: Color(0xFF6A6A6A), size: screenWidth*0.045)
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: screenHeight*0.01, left: screenWidth*0.05),
                      child: Container(
                        width: screenWidth*0.6,
                        child: Text('Officially the Republic of the Union of Myanmar and also known as Burma, is a country in Southeast Asia',
                            style:
                            TextStyle(color: Color(0xFF6A6A6A),fontSize: screenWidth*0.035 ,fontFamily: 'Opensans', fontWeight: FontWeight.w300)
                        ),
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight*0.04, left: screenWidth*0.03, right:screenWidth*0.03),
              child: Container(
                width: screenWidth - 15.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios, color: Colors.white, size: screenWidth*0.04,),
                        SizedBox(width: screenWidth*0.05,),
                        Container(
                            height:screenHeight*0.07,
                            width:screenWidth*0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(screenWidth*0.05,),
                                color: Colors.black.withOpacity(0.2)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.white, size: screenWidth*0.04),
                                  SizedBox(width: screenWidth*0.02,),
                                  Text(
                                    '4.3',
                                    style: TextStyle(color: Colors.white,fontSize: screenWidth*0.035,),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                    Icon(Icons.file_upload, color: Colors.white,size: screenWidth*0.07,)
                  ],
                ),
              ),
            )
          ]
      ),
    );
  }
}

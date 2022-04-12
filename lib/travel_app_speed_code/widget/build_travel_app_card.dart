import 'package:first_projrct/travel_app_speed_code/pages/travel_app_detail_page.dart';
import 'package:flutter/material.dart';

class BuildTravelAppCard extends StatelessWidget {
  final String title;
  final String rating;
  final String imgPath;
  final double screenWidth;
  final double screenHeight;

  BuildTravelAppCard({
    required this.title,
    required this.rating,
    required this.imgPath,
    required this.screenWidth,
    required this.screenHeight,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(screenWidth*0.04),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TravelAppDetailPage(screenWidth:screenWidth ,screenHeight:screenHeight ,)));
          },
          child: Stack(
            children: <Widget>[
              Container(
                height: screenHeight*0.37,
                width: screenWidth*0.56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth*0.07,),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              //make the shade a bit deeper.
              Container(
                height: screenHeight*0.37,
                width: screenWidth*0.56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth*0.07,),
                    color: Colors.black.withOpacity(0.4)),
              ),
              Positioned(
                top: screenWidth*0.04,
                left:screenWidth*0.04,
                child: Row(
                  children: <Widget>[
                    Container(
                      height:screenHeight*0.055,
                      width:screenWidth*0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenWidth*0.05,),
                          color: Colors.black.withOpacity(0.2)),
                      child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.white, size: screenWidth*0.04,),
                              SizedBox(width:screenWidth*0.02,),
                              Text(
                                rating,
                                style: TextStyle(color: Colors.white,fontSize: screenWidth*0.035,),
                              )
                            ],
                          )),
                    ),
                    SizedBox(width: screenWidth*0.1,),
                    Text(
                      'More',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Opensans',fontSize: screenWidth*0.04,),
                    ),
                    SizedBox(width: screenWidth*0.02,),
                    //this should be an iconbutton in a real app.
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: screenWidth*0.07,)
                  ],
                ),
              ),
              Positioned(
                top: screenHeight*0.23,
                left: screenWidth*0.04,
                child: Container(
                  width:screenWidth*0.45,
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: 'Opensans',
                          fontSize: screenWidth*0.055,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              Positioned(
                  top: screenHeight*0.3,
                  left: screenWidth*0.04,
                  child: Row(children: [
                    Text('I was here',
                        style: TextStyle(
                            fontFamily: 'Opensans',
                            fontSize: screenWidth*0.04,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    SizedBox(width: screenWidth*0.03),
                    Stack(
                      children: <Widget>[
                        Container(height: screenHeight*0.06, width: screenWidth*0.2,),
                        Container(
                          height: screenWidth*0.11,
                          width: screenWidth*0.11,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(screenWidth*0.11,),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/profilepic.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          left: screenWidth*0.065,
                          child: Container(
                            height: screenWidth*0.11,
                            width: screenWidth*0.11,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(screenWidth*0.11,),
                                color: Colors.white),
                            child: Center(
                              child: Text('+17..',
                                  style: TextStyle(
                                      fontSize: screenWidth*0.035, color: Colors.black)),
                            ),
                          ),
                        )
                      ],
                    )
                  ]))
            ],
          ),
        )
    );
  }
}

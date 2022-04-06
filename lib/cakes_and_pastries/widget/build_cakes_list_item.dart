import 'package:flutter/material.dart';

class BuildCakesListItem extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final String desc;
  final String price;
  final int likes;
  final int calCount;
  final String serving;
  final double screenWidth;
  final double screenHeight;
  BuildCakesListItem({
    required this.imgPath,
    required this.foodName,
    required this.desc,
    required this.price,
    required this.likes,
    required this.calCount,
    required this.serving,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth*0.025, top:screenHeight*0.02),
      child: Stack(
        children: <Widget>[
          Container(
            height: screenHeight*0.27,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            left: screenWidth*0.06,
            top: screenHeight*0.04,
            child: Container(
              height: screenHeight*0.18,
              width: screenWidth - 15.0,
              decoration: BoxDecoration(
                  color: const Color(0xFFF9EFEB),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3.0,
                        blurRadius: 3.0
                    )
                  ]
              ),
              child: Text('Helloworld'),
            ),
          ),
          Positioned(
              left: screenWidth*0.2,
              top: screenHeight*0.1,
              child:Container(
                height:screenHeight*0.16,
                width:screenWidth - 15.0,
                decoration: BoxDecoration(
                    color: Color(0xFFF9EFEB),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3.0,
                          blurRadius: 3.0
                      )
                    ]
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0, left: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.favorite, color: const Color(0xFFF75A4C), size: screenWidth*0.05,),
                        SizedBox(width: screenWidth*0.01,),
                        Text(likes.toString(),
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth*0.04,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: screenWidth*0.05,),
                        Icon(Icons.account_box, color: const Color(0xFFF75A4C), size: screenWidth*0.05,),
                        SizedBox(width: screenWidth*0.01,),
                        Text(calCount.toString() + 'cal',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth*0.04,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: screenWidth*0.05,),
                        Icon(Icons.play_circle_outline, color: const Color(0xFFF75A4C), size: screenWidth*0.05,),
                        SizedBox(width: screenWidth*0.01,),
                        Text(serving,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth*0.04,
                              color: Colors.grey
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          ),
          Container(
            height: 125.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.asset(imgPath, fit: BoxFit.cover),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(foodName,
                        style: TextStyle(
                            color: Color(0xFF563734),
                            fontFamily: 'Montserrat',
                            fontSize: 15.0
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        width: 175.0,
                        child: Text(desc,
                          style: TextStyle(
                              color: Color(0xFFB2A9A9),
                              fontFamily: 'Montserrat',
                              fontSize: 11.0
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(price.toString(),
                        style: TextStyle(
                            color: Color(0xFFF76053),
                            fontFamily: 'Montserrat',
                            fontSize: 15.0
                        ),
                      )
                    ],
                  )
                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}

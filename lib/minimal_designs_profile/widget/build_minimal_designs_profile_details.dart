import 'package:flutter/material.dart';

class BuildMinimalDesignsProfileDetails extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String name;
  final String location;
  final String description;
  final String followers;
  final String following;
  final String likes;
  BuildMinimalDesignsProfileDetails({
    required this.screenHeight,
    required this.screenWidth,
    required this.name,
    required this.location,
    required this.description,
    required this.followers,
    required this.following,
    required this.likes,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left:screenWidth*0.05, right: screenWidth*0.05, top:screenWidth*0.035),
          child: Text(name,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: screenWidth*0.055,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left:screenWidth*0.05),
          child: Text(location,
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.grey,
              fontSize: screenWidth*0.05,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left:screenWidth*0.05, right: screenWidth*0.05, top:screenWidth*0.035),
          child: Text(description,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
                fontSize:  screenWidth*0.045,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left:screenWidth*0.05, right: screenWidth*0.05, top:screenWidth*0.06),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(followers,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.red,
                        fontSize:screenWidth*0.06,
                    ),
                  ),
                  Text('Followers',
                    style: TextStyle(
                      fontSize:screenWidth*0.045,
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(following,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.blue,
                       fontSize:screenWidth*0.06,
                    ),
                  ),
                  Text('Following',
                    style: TextStyle(
                      fontSize:screenWidth*0.045,
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(likes,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.red,
                      fontSize:screenWidth*0.06,
                    ),
                  ),
                  Text('Likes',
                    style: TextStyle(
                      fontSize:screenWidth*0.045,
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

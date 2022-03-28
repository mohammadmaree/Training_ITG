import 'package:first_projrct/clean_designs/chef_profile/widget/build_chef_profile_get_star.dart';
import 'package:flutter/material.dart';

class BuildChefProfileMenuCard extends StatelessWidget {
  final String title;
  final String type;
  final String image;
  final int rating;
  final double views;
  final double likes;
  final double screenHeight;
  final double screenWidth;
  BuildChefProfileMenuCard({
    required this.title,
    required this.type,
    required this.image,
    required this.rating,
    required this.views,
    required this.likes,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(screenWidth*0.05),
        elevation: 4.0,
        child: Container(
          height: screenHeight*0.2,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth*0.05), color: Colors.white),
          child: Row(
            children: <Widget>[
              SizedBox(width: screenWidth*0.03),
              Container(
                height: screenHeight*0.135,
                width: screenHeight*0.135,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7.0)),
              ),
              SizedBox(width: screenWidth*0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:screenHeight*0.02),
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize:screenWidth*0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height:screenHeight*0.01),
                  Text(
                    type,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize:screenWidth*0.038,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height:screenHeight*0.01),
                  Row(
                    children: <Widget>[
                      BuildChefProfileGetStar(
                        rating:rating,
                        index:1,
                        screenWidth:screenWidth,
                        screenHeight:screenHeight,
                      ),
                      BuildChefProfileGetStar(
                        rating:rating,
                        index:2,
                        screenWidth:screenWidth,
                        screenHeight:screenHeight,
                      ),
                      BuildChefProfileGetStar(
                        rating:rating,
                        index:3,
                        screenWidth:screenWidth,
                        screenHeight:screenHeight,
                      ),
                      BuildChefProfileGetStar(
                        rating:rating,
                        index:4,
                        screenWidth:screenWidth,
                        screenHeight:screenHeight,
                      ),
                      BuildChefProfileGetStar(
                        rating:rating,
                        index:5,
                        screenWidth:screenWidth,
                        screenHeight:screenHeight,
                      ),
                    ],
                  ),
                  SizedBox(height:screenHeight*0.005),
                  Row(
                    children: <Widget>[
                      Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey.withOpacity(0.4),
                        size:screenWidth*0.06,
                      ),
                      SizedBox(width:screenWidth*0.012,),
                      Text(views.toString()),
                      SizedBox(width:screenWidth*0.05,),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size:screenWidth*0.06,
                      ),
                      SizedBox(width:screenWidth*0.012,),
                      Text(likes.toString())
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

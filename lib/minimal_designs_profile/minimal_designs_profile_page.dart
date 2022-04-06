import 'package:first_projrct/minimal_designs_profile/widget/build_minimal_designs_profile_buttom_bar.dart';
import 'package:first_projrct/minimal_designs_profile/widget/build_minimal_designs_profile_details.dart';
import 'package:first_projrct/minimal_designs_profile/widget/build_minimal_designs_profile_image.dart';
import 'package:flutter/material.dart';

class MinimalDesignsProfilePage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  String imageProfile='assets/images/picsix.jpeg';
  String name='Carson Arias';
  String location='San Francisco, CA';
  String description='Hello, I am Carson. I love making cool photos, beautiful architecture and icecream.';
  String likes='1789';
  String followers='236';
  String following='990';
  List<String>images1=['assets/images/picone.jpeg','assets/images/pictwo.jpeg'];
  List<String>images2=['assets/images/picthree.jpeg','assets/images/picfour.jpeg','assets/images/picfive.jpeg'];
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildMinimalDesignsProfileImage(
                imageProfile:imageProfile,
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
              ),
              BuildMinimalDesignsProfileDetails(
                screenWidth:screenWidth!,
                screenHeight:screenHeight!,
                name:name,
                description:description,
                location: location,
                likes: likes,
                followers: followers,
                following: following,
              ),
              SizedBox(height: screenHeight!*0.02),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: screenHeight!*0.4,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>Container(
                    height:screenWidth!*0.6,
                    width:screenWidth!*0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage(images1[index]),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  separatorBuilder:(context, index) =>SizedBox(width: 10.0),
                  itemCount:images1.length,
                ),
              ),
              SizedBox(height: screenHeight!*0.02),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: screenHeight!*0.2,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>Container(
                    height:screenWidth!*0.3,
                    width:screenWidth!*0.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage(images2[index]),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  separatorBuilder:(context, index) =>SizedBox(width: 10.0),
                  itemCount:images2.length,
                ),
              ),
              SizedBox(height: screenHeight!*0.02),
              BuildMinimalDesignsProfileButtomBar(
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
              ),
            ],
          )
        ],
      ),
    );
  }
}

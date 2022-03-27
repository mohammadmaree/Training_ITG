import 'package:first_projrct/clean_designs/fashion_designs/pages/fashion_designs_post_details_item_page.dart';
import 'package:first_projrct/clean_designs/fashion_designs/widget/build_fashion_designs_post_hashtags.dart';
import 'package:first_projrct/clean_designs/fashion_designs/widget/build_fashion_designs_post_images.dart';
import 'package:first_projrct/clean_designs/fashion_designs/widget/build_fashion_designs_post_lawer_part.dart';
import 'package:first_projrct/clean_designs/fashion_designs/widget/build_fashion_designs_post_upper_part.dart';
import 'package:flutter/material.dart';
class BuildFashionDesignsPost extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String name;
  final String personImage;
  final String time;
  final String description;
  final List<String> postImages;
  final List<String> hashtags;
  final bool isFavourite;
  BuildFashionDesignsPost({
    required this.screenHeight,
    required this.screenWidth,
    required this.name,
    required this.personImage,
    required this.time,
    required this.description,
    required this.postImages,
    required this.hashtags,
    required this.isFavourite,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(screenWidth*0.025),
        child: Material(
            borderRadius: BorderRadius.circular(screenWidth*0.05),
            elevation: 4.0,
            child: Container(
                height: screenHeight*0.65,
                width: double.infinity,
                padding: EdgeInsets.all(screenWidth*0.025),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: Column(
                  children: [
                    BuildFashionDesignsPostUpperPart(
                      screenHeight:screenHeight,
                      screenWidth:screenWidth,
                      name:name,
                      personImage: personImage,
                      time: time,
                    ),
                    SizedBox(height: screenHeight*0.012),
                    Text(
                      description,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth*0.034,
                          color: Colors.grey),
                    ),
                    SizedBox(height: screenHeight*0.015),
                    BuildFashionDesignsPostImages(
                      screenHeight:screenHeight,
                      screenWidth:screenWidth,
                      postImages: postImages,
                    ),
                    SizedBox(height: screenHeight*0.015),
                    BuildFashionDesignsPostHashtags(
                      screenHeight:screenHeight,
                      screenWidth:screenWidth,
                      hashtags: hashtags,
                    ),
                    SizedBox(height: screenHeight*0.025),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration:
                      BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                    ),
                    SizedBox(height: screenHeight*0.015),
                    BuildFashionDesignsPostLawerPart(
                      screenHeight:screenHeight,
                      screenWidth:screenWidth,
                      isFavourite: isFavourite,
                    ),
                  ],
                )
            )
        )
    );
  }
}

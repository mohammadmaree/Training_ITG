import 'package:first_projrct/clean_designs/gourmet_takeaway/widget/build_gourmet_takeaway_rated_star.dart';
import 'package:flutter/material.dart';

class BuildGourmetTakeawayFoodItem extends StatelessWidget {
  final String dishName;
  final String imgPath;
  final String description;
  final int calInfo;
  final int distance;
  final int cookingTime;
  final int rating;
  final double screenWidth;
  final double screenHeight;
  BuildGourmetTakeawayFoodItem({
    required this.dishName,
    required this.imgPath,
    required this.description,
    required this.calInfo,
    required this.distance,
    required this.cookingTime,
    required this.rating,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left:screenWidth*0.02),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: screenWidth*0.27,
              width: screenWidth*0.27,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth*0.27),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            SizedBox(width: screenWidth*0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: screenWidth - 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          dishName,
                          style: TextStyle(
                              fontSize:screenWidth*0.05,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left:screenWidth*0.01),
                          height: screenHeight*0.055,
                          width: screenWidth*0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(screenWidth*0.14),
                                bottomLeft: Radius.circular(screenWidth*0.14)),
                            color: const Color(0xFFF76765),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: screenWidth*0.07,
                            ),
                          ),
                        )
                      ],
                    )),
                Row(
                  children: <Widget>[
                    BuildGourmetTakeawayRatedStar(
                        rating:rating,
                        index:1,
                      screenWidth:screenWidth,
                      screenHeight:screenHeight,
                    ),
                    BuildGourmetTakeawayRatedStar(
                      rating:rating,
                      index:2,
                      screenWidth:screenWidth,
                      screenHeight:screenHeight,
                    ),
                    BuildGourmetTakeawayRatedStar(
                      rating:rating,
                      index:3,
                      screenWidth:screenWidth,
                      screenHeight:screenHeight,
                    ),
                    BuildGourmetTakeawayRatedStar(
                      rating:rating,
                      index:4,
                      screenWidth:screenWidth,
                      screenHeight:screenHeight,
                    ),
                    BuildGourmetTakeawayRatedStar(
                      rating:rating,
                      index:5,
                      screenWidth:screenWidth,
                      screenHeight:screenHeight,
                    ),
                    SizedBox(width: screenWidth*0.02),
                    Text(rating.toString(),
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontSize: screenWidth*0.045,
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight*0.01),
                Text('About dishes',
                  style: TextStyle(
                      fontSize: screenWidth*0.04,
                      color: const Color(0xFFC6CC40)
                  ),
                ),
                SizedBox(height: screenHeight*0.01),
                Container(
                  width: screenWidth - 130.0,
                  child: Text(description,
                    style: TextStyle(
                        fontSize: screenWidth*0.04,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: screenHeight*0.01),
                Row(
                  children: <Widget>[
                    Icon(
                        Icons.fastfood,
                        color: Colors.grey,
                      size: screenWidth*0.06,
                    ),
                    Text(
                      calInfo.toString() +'kcal',
                      style: TextStyle(
                          color: Colors.grey,
                        fontSize: screenWidth*0.04,
                      ),
                    ),
                    SizedBox(width: 7.0),
                    Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: screenWidth*0.06,
                    ),
                    Text(distance.toString() + 'km',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: screenWidth*0.04,
                      ),
                    ),
                    SizedBox(width: 7.0),
                    Icon(
                        Icons.timer,
                        color: Colors.grey,
                      size: screenWidth*0.06,
                    ),
                    Text(cookingTime.toString() + 'mins',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: screenWidth*0.04,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}

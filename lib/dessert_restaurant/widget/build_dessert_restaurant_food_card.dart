import 'package:flutter/material.dart';

class BuildDessertRestaurantFoodCard extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String name;
  final String origin;
  final String cardImage;
  final int likes;
  final int commentCount;
  final int cardIndex;
  BuildDessertRestaurantFoodCard({
    required this.screenHeight,
    required this.screenWidth,
    required this.name,
    required this.origin,
    required this.cardImage,
    required this.likes,
    required this.commentCount,
    required this.cardIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cardIndex.isEven? EdgeInsets.only(right: screenWidth*0.05): EdgeInsets.only(left: screenWidth*0.05),
      child: Container(
        height: screenHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth*0.05),
            border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0
            )
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height:screenHeight*0.45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(screenWidth*0.02),
                          topRight: Radius.circular(screenWidth*0.02)
                      ),
                      image: DecorationImage(
                          image: NetworkImage(cardImage),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth*0.015,top: screenHeight*0.015),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: screenWidth*0.075,
                    ),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.only(left: screenWidth*0.015),
                  child: Text(
                    origin,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: screenWidth*0.075,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height:screenHeight*0.01),
                Padding(
                  padding:EdgeInsets.only(left: screenWidth*0.015,top: screenHeight*0.015),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        size:screenWidth*0.15,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(width: screenWidth*0.01),
                      Text(
                        likes.toString(),
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize:screenWidth*0.07,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(width: screenWidth*0.05),
                      Icon(
                        Icons.chat_bubble,
                        size:screenWidth*0.145,
                        color: Colors.grey.withOpacity(0.4),

                      ),
                      SizedBox(width: screenWidth*0.01),
                      Text(
                        commentCount.toString(),
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize:screenWidth*0.07,
                            color: Colors.grey
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: screenWidth*0.65,
              top: screenHeight*0.37,
              child: Container(
                height:screenWidth*0.22,
                width: screenWidth*0.22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth*0.22),
                    color: Colors.amber
                ),
                child: Center(
                  child: Icon(
                      Icons.shopping_cart,
                      size:screenWidth*0.14,
                      color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

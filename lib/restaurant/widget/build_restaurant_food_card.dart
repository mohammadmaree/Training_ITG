import 'package:flutter/material.dart';

class BuildRestaurantFoodCard extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String image;

  BuildRestaurantFoodCard({
    required this.screenWidth,
    required this.screenHeight,
    required this.image
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth*0.05),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                DecorationImage(
                    image: NetworkImage(image)
                )
            ),
            height: screenHeight,
            width: screenWidth*0.45,
          ),
          SizedBox(width: screenWidth*0.02),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Grilled Chicken',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: screenWidth*0.062,
                ),
              ),
              Text(
                'with Fruit Salad',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                  fontSize: screenWidth*0.062,
                ),
              ),
              SizedBox(height: screenHeight*0.09),
              Container(
                height: screenHeight*0.012,
                width: screenWidth*0.3,
                color: Colors.orange,
              ),
              SizedBox(height: screenHeight*0.09),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: screenWidth*0.1,
                    width: screenWidth*0.1,
                    decoration: BoxDecoration(
                      color: Colors.red,
                        borderRadius: BorderRadius.circular(screenWidth*0.05),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/engin.jpg',
                            ),
                          fit: BoxFit.cover
                        )),
                  ),
                  SizedBox(width: screenWidth*0.04),
                  Text('James Oliver',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                        fontSize: screenWidth*0.055,
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

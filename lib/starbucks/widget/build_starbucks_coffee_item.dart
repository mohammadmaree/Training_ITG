import 'package:flutter/material.dart';

class BuildStarbucksCoffeeItem extends StatelessWidget {
  final String imgPath;
  final String productName;
  final String productType;
  final String price;
  final double screenWidth;
  final double screenHeight;

  BuildStarbucksCoffeeItem({
    required this.imgPath,
    required this.productName,
    required this.productType,
    required this.price,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth*0.02),
      child: Container(
          width: screenWidth*0.6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth*0.04),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 4.0,
                    blurRadius: 4.0
                )
              ]
          ),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: screenHeight*0.28,
                    width: screenWidth*0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(screenWidth*0.04), topRight: Radius.circular(screenWidth*0.04)),
                        image: DecorationImage(
                            image: AssetImage(imgPath),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(height: screenHeight*0.03),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(productName,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth*0.05
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight*0.01),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(productType,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: screenWidth*0.04,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight*0.01),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        height: screenHeight*0.001,
                        color: Colors.grey.withOpacity(0.4),
                      )
                  ),
                  SizedBox(height: screenHeight*0.025),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '\$' + price,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth*0.05,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: screenWidth*0.1,
                            width: screenWidth*0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(screenWidth*0.1),
                                color: Colors.grey.withOpacity(0.2)
                            ),
                            child: Center(
                              child: Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                size: screenWidth*0.07,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}

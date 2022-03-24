import 'package:flutter/material.dart';

class  BuildFurnitureShoppingPayCard extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String text;
  final String totalPrice;
  BuildFurnitureShoppingPayCard({
    required this.screenHeight,
    required this.screenWidth,
    required this.text,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(top:screenHeight*0.85,),
        child: Container(
            height: screenHeight*0.075,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  totalPrice,
                  style: TextStyle(
                      fontSize: screenHeight*0.025
                  ),
                ),
                SizedBox(width: screenWidth*0.02),
                Padding(
                  padding: EdgeInsets.all(screenWidth*0.02),
                  child: MaterialButton(
                    onPressed: () {},
                    elevation: 0.5,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: screenHeight*0.02
                        ),
                      ),
                    ),
                    textColor: Colors.white,
                  ),
                )
              ],
            )
        )
    );
  }
}

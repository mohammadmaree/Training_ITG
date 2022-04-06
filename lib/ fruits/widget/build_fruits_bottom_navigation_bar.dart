import 'package:flutter/material.dart';

class BuildFruitsBottomNavigationBar extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String title;
  BuildFruitsBottomNavigationBar({
    required this.screenHeight,
    required this.screenWidth,
    required this.title ,
  });
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white
        ),
        height: screenHeight*0.08,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize:screenWidth*0.045,
                    fontWeight: FontWeight.bold
                ),
              ),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0
                  ))
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.black,
              size:screenWidth*0.075,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.black,
              size:screenWidth*0.075,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.red
              ),
              height: screenHeight*0.065,
              width: screenWidth*0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    '12',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: screenWidth*0.045,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 15.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

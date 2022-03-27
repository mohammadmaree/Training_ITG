import 'package:first_projrct/clean_designs/fashion_designs/widget/build_fashion_designs_post_item_details.dart';
import 'package:flutter/material.dart';

class FashionDesignsPostDetailsItemPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;
  final imageChosen;
  FashionDesignsPostDetailsItemPage({
    required this.imageChosen,
  });

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: imageChosen,
            child: Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageChosen), fit: BoxFit.cover
                  )
              ),
            ),
          ),
          BuildFashionDesignsPostItemDetails(
            screenHeight:screenHeight! ,
            screenWidth:screenWidth!,
          ),
          Positioned(
            left: 50.0,
            top: screenHeight!*0.5,
            child: Container(
              height: 35.0,
              width: 125.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.black.withOpacity(0.4)
              ),
              child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('LAMINATED',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 17.0)
                    ],
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
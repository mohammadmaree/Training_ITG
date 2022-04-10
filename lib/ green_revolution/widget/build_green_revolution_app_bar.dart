import 'package:flutter/material.dart';

class BuildGreenRevolutionAppBar extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String image;
  BuildGreenRevolutionAppBar({
    required this.screenHeight,
    required this.screenWidth,
    required this.image ,
  });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left:screenWidth*0.04, right: screenWidth*0.04,top:screenHeight*0.03,bottom: screenHeight*0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,size: screenWidth*0.07),
            color: Colors.black,
          ),
          Container(
            height:screenWidth*0.1,
            width: screenWidth*0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth*0.1,),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}

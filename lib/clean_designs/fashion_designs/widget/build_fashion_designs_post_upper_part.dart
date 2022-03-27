import 'package:flutter/material.dart';

class BuildFashionDesignsPostUpperPart extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String name;
  final String personImage;
  final String time;
  BuildFashionDesignsPostUpperPart({
    required this.screenHeight,
    required this.screenWidth,
    required this.name,
    required this.personImage,
    required this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: screenWidth*0.15,
          width: screenWidth*0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth*0.15,),
              image: DecorationImage(
                  image: AssetImage(personImage),
                  fit: BoxFit.cover)),
        ),
        SizedBox(width:screenWidth*0.03,),
        Container(
          width:screenWidth*0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: screenWidth*0.05,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height:screenHeight*0.005),
                  Text(
                    time,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: screenWidth*0.03,
                        color: Colors.grey),
                  ),
                ],
              ),
              Icon(Icons.more_vert,
                  color: Colors.grey, size: screenWidth*0.06,),
            ],
          ),
        )
      ],
    );
  }
}

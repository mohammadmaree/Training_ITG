import 'package:flutter/material.dart';

class buildListItem extends StatelessWidget {
  final String picture;
  final double screenWidth;
  final double screenHeight;

  buildListItem({
    required this.picture,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: screenWidth*0.28,
              width: screenWidth*0.28,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(picture),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(screenWidth*0.05), bottomRight: Radius.circular(screenWidth*0.05))
              ),
            ),
            const SizedBox(width: 10.0),
            SizedBox(
              height:screenWidth*0.28,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('Maple Mustard Tempeh',
                    style: TextStyle(
                        fontSize: screenWidth*0.05,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text('Marinated kale, onion, tomato and roasted',
                    style: TextStyle(
                        fontSize: screenWidth*0.03,
                        fontFamily: 'Montserrat',
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                  ),
                  Text('garlic aioli on grilled spelt bread',
                    style: TextStyle(
                        fontSize: screenWidth*0.03,
                        fontFamily: 'Montserrat',
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),),
                  const SizedBox(height: 10.0),
                  Text('\$11.25',
                    style: TextStyle(
                        fontSize: screenWidth*0.075,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),)
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}



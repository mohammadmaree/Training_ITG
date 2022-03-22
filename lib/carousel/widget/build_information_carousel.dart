import 'package:flutter/material.dart';

class BuildInformationCarousel extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  BuildInformationCarousel({
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'OPEN NOW UNTIL 7PM',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth*0.04,
                    fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15.0),
              Text(
                'The Cinnamon Snail',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth*0.07,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Text(
                    '17th st & Union Sq East',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontSize: screenWidth*0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5.0),
                  Icon(
                      Icons.location_on,
                    size: screenWidth*0.07,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    '400ft Away',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                      fontSize: screenWidth*0.04,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 7.0),
              Row(
                children: <Widget>[
                  Icon(
                      Icons.wifi,
                      color: Colors.green,
                    size: screenWidth*0.07,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    'Location confirmed by 3 users today',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontSize: screenWidth*0.04,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
            children: <Widget>[
              Text(
                'FEATURED ITEMS',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth*0.05,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}

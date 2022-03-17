// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  final String name;
  final String status;
  final int cardIndex;
  final double screenHeight;
  final double screenWidth;
  BuildCard({
    required this.name,
    required this.status,
    required this.cardIndex,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
          children: <Widget>[
            const SizedBox(height: 12.0),
            Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child:Image.network(
                          'https://awsimages.detik.net.id/community/media/visual/2020/06/22/kim-soo-hyun-9.png?w=700&q=80',
                      width:screenWidth * 0.4,
                      height:screenWidth * 0.4,
                      fit: BoxFit.fitWidth,
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(left: screenWidth*0.3),
                    height: screenWidth*0.08,
                    width: screenWidth*0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: status == 'Away' ? Colors.amber : Colors.green,
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0
                        )
                    ),
                  )
                ]
            ),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: screenWidth*0.1,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth*0.08,
                  color: Colors.grey
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: status == 'Away' ? Colors.grey: Colors.green,
                      borderRadius: const BorderRadius.only
                        (
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)
                      ),
                    ),
                    child: Center(
                      child: Text('Request',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                          fontSize: screenWidth*0.1
                        ),
                      ),
                    )
                )
            )
          ]
      ),
      margin: cardIndex.isEven?const EdgeInsets.fromLTRB(10.0,0.0,25.0,10.0):const EdgeInsets.fromLTRB(25.0,0.0,5.0,10.0),
    );
  }
}

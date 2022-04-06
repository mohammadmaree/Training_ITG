import 'package:flutter/material.dart';

class BuildNutritionInfoCard extends StatefulWidget {
  final String cardTitle;
  final String info;
  final String unit;
  final double screenWidth;
  final double screenHeight;

  BuildNutritionInfoCard({
    required this.cardTitle,
    required this.info,
    required this.unit,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  State<BuildNutritionInfoCard> createState() => _BuildNutritionInfoCardState();
}

class _BuildNutritionInfoCardState extends State<BuildNutritionInfoCard> {
  var selectedCard = 'WEIGHT';
  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          selectCard(widget.cardTitle);
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: widget.cardTitle == selectedCard ? Color(0xFF7A9BEE) : Colors.white,
              border: Border.all(
                  color: widget.cardTitle == selectedCard ?
                  Colors.transparent :
                  Colors.grey.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 0.75
              ),

            ),
            height: widget.screenHeight*0.05,
            width: widget.screenWidth*0.3,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text(widget.cardTitle,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color:
                          widget.cardTitle == selectedCard ? Colors.white : Colors.grey.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.info,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: widget.screenWidth*0.03,
                                color: widget.cardTitle == selectedCard
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(widget.unit,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize:widget.screenWidth*0.03,
                              color: widget.cardTitle == selectedCard
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }
}

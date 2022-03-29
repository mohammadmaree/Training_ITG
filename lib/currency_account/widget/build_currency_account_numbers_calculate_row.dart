import 'package:flutter/material.dart';

class BuildCurrencyAccountNumbersCalculateRow extends StatefulWidget {
  final int number1;
  final int number2;
  final int number3;
  final bool red;
  final Function calculate;
  final double screenHeight;
  final double screenWidth;

  BuildCurrencyAccountNumbersCalculateRow({
    required this.number1,
    required this.number2,
    required this.number3,
    required this.red,
    required this.calculate,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<BuildCurrencyAccountNumbersCalculateRow> createState() => _BuildCurrencyAccountNumbersCalculateRowState();
}

class _BuildCurrencyAccountNumbersCalculateRowState extends State<BuildCurrencyAccountNumbersCalculateRow> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
            onTap: () {
              widget.calculate(widget.number1);
            },
            child: Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: widget.red?Colors.white:Color(0xFFFFB6B6)),
                child: Center(
                    child: Text(
                      widget.number1.toString(),
                      style: TextStyle(
                          color: widget.red?Color(0xFFFFB6B6):Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    )))),
        InkWell(
          onTap: () {
            widget.calculate(widget.number2);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: widget.red?Colors.white:Color(0xFFFFB6B6)),
            child: Center(
              child: Text(
                widget.number2.toString(),
                style: TextStyle(
                    color: widget.red?Color(0xFFFFB6B6):Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            widget.calculate(widget.number3);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: widget.red?Colors.white:Color(0xFFFFB6B6)),
            child: Center(
              child: Text(
                widget.number3.toString(),
                style: TextStyle(
                    color: widget.red?Color(0xFFFFB6B6):Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}

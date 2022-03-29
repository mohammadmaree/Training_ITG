import 'package:first_projrct/currency_account/currency_service/currency_account_convert_currency.dart';
import 'package:flutter/material.dart';

class BuildCurrencyAccountNumbersFinalRow extends StatefulWidget {

  final String origCurrency;
  final String convCurrency;
  final double currInput;
  final Function calculate;
  final bool red;
  BuildCurrencyAccountNumbersFinalRow({
    required this.origCurrency,
    required this.convCurrency,
    required this.currInput,
    required this.calculate,
    required this.red,
  });
  @override
  State<BuildCurrencyAccountNumbersFinalRow> createState() => _BuildCurrencyAccountNumbersFinalRowState();
}

class _BuildCurrencyAccountNumbersFinalRowState extends State<BuildCurrencyAccountNumbersFinalRow> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            // calculateNumber(number1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: widget.red?Colors.white:Color(0xFFFFB6B6)
            ),
            child: Center(
              child: Text(
                '.',
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
            widget.calculate(0);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: widget.red?Colors.white:Color(0xFFFFB6B6)
            ),
            child: Center(
              child: Text(
                0.toString(),
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
            CurrencyAccountConvertCurrency().convertCurrency(
                widget.convCurrency, widget.origCurrency, widget.currInput, context);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: widget.red?Colors.white:Color(0xFFFC1514)
            ),
            child: Center(
                child: Icon(
                  Icons.check,
                  color: widget.red?Color(0xFFFFB6B6):Colors.white,
                  size: 25.0,
                )),
          ),
        )
      ],
    );
  }
}

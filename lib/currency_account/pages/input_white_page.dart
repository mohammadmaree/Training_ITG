import 'package:first_projrct/currency_account/widget/build_currency_account_numbers_calculate_row.dart';
import 'package:first_projrct/currency_account/widget/build_currency_account_numbers_final_row.dart';
import 'package:flutter/material.dart';

class InputWhitePage extends StatefulWidget {
  final String origCurrency;
  final String convCurrency;
  InputWhitePage({
    required this.origCurrency,
    required this.convCurrency,
  });

  @override
  State<InputWhitePage> createState() => _InputWhitePageState();
}

class _InputWhitePageState extends State<InputWhitePage> {
  double? screenWidth;
  double? screenHeight;
  var currInput = 0.0;

  calculateNumber(double number) {
    print("hi");
    if (currInput == 0) {
      setState(() {
        currInput = number;
      });
    } else {
      setState(() {
        currInput = (currInput * 10) + number;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    print(widget.origCurrency);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25.0),
          InkWell(
              onTap: () {
                setState(() {
                  currInput = 0;
                });
              },
              child: Text(
                'tap to delete',
                style: TextStyle(
                    color: Color(0xFFFFB6B6),
                    fontSize: 17.0,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 10.0),
          Center(
              child: Text(
                currInput.toString(),
                style: TextStyle(
                    color: Color(0xFFEC5759),
                    fontSize: 100.0,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 25.0),
          BuildCurrencyAccountNumbersCalculateRow(
              number1:1,
              number2:2,
              number3:3,
              red: false,
              calculate: calculateNumber,
              screenHeight:screenHeight!,
              screenWidth:screenWidth!,
          ),
          SizedBox(height: 25.0),
          BuildCurrencyAccountNumbersCalculateRow(
            number1:4,
            number2:5,
            number3:6,
            red: false,
            calculate: calculateNumber,
            screenHeight:screenHeight!,
            screenWidth:screenWidth!,
          ),
          SizedBox(height: 25.0),
          BuildCurrencyAccountNumbersCalculateRow(
            number1:7,
            number2:8,
            number3:9,
            red: false,
            calculate: calculateNumber,
            screenHeight:screenHeight!,
            screenWidth:screenWidth!,
          ),
          SizedBox(height: 25.0),
          BuildCurrencyAccountNumbersFinalRow(
            convCurrency: widget.convCurrency,
            origCurrency: widget.origCurrency,
            currInput: currInput,
            calculate: calculateNumber,
            red: false,
          )

        ],
      ),
    );
  }
}

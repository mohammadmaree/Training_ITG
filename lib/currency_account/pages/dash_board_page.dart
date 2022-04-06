import 'package:first_projrct/currency_account/currency_service/currency_account_get_currency_string.dart';
import 'package:first_projrct/currency_account/pages/currency_list_page.dart';
import 'package:first_projrct/currency_account/pages/input_red_page.dart';
import 'package:first_projrct/currency_account/pages/input_white_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  final double currencyVal;
  final double convertedCurrency;
  final String currencyone;
  final String currencytwo;
  final bool isWhite;
  DashboardPage({
    required this.currencyVal,
    required this.convertedCurrency,
    required this.currencyone,
    required this.currencytwo,
    required this.isWhite,
  });

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Material(
      child: Stack(
        children: [
          Container(
              height:screenHeight!,
              width: screenWidth!,
              color: Colors.white),
          Container(
              height: screenHeight!*0.5,
              width: screenWidth!,
              color: const Color(0xFFEC5759),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: screenHeight!*0.05),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => CurrencyListPage()));
                      },
                      child: Text(
                        CurrencyAccountGetCurrencyString().getString(currencyone),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontFamily: 'Quicksand'),
                      )),
                  InkWell(
                      onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => InputRedPage(
                                origCurrency: currencytwo,
                                convCurrency: currencyone,
                              )));
                      },
                      child: Text(
                        currencyVal.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 120.0,
                            fontFamily: 'Quicksand'),
                      )),
                  Text(
                    currencyone,
                    style: TextStyle(
                        color: Color(0xFFFFB6B6),
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: screenHeight!*0.05),
                  Container(
                    height: 125.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62.5),
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xFFEC5759),
                            style: BorderStyle.solid,
                            width: 5.0)),
                    child: Center(
                      child: isWhite
                          ? Icon(
                        Icons.arrow_upward,
                        size: 60.0,
                        color: Color(0xFFEC5759),
                      )
                          : Icon(
                        Icons.arrow_downward,
                        size: 60.0,
                        color: Color(0xFFEC5759),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight!*0.05),
                  Text(
                    currencytwo,
                    style: TextStyle(
                        color: Color(0xFFFFB6B6),
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => InputWhitePage(
                            origCurrency: currencyone,
                            convCurrency: currencytwo,

                          )
                      )
                      );
                    },
                    child: Text(
                      convertedCurrency.toString(),
                      style: TextStyle(
                          color: Color(0xFFEC5759),
                          fontSize: 120.0,
                          fontFamily: 'Quicksand'),
                    ),
                  ),
                  Text(
                    CurrencyAccountGetCurrencyString().getString(currencytwo),
                    style: TextStyle(
                        color: Color(0xFFEC5759),
                        fontSize: 22.0,
                        fontFamily: 'Quicksand'),
                  ),
                  SizedBox(height: screenHeight!*0.05),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}

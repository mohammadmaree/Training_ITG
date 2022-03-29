import 'package:first_projrct/currency_account/pages/dash_board_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildCurrencyAccountListItem extends StatelessWidget {
  final String currencyName;
  final String currency;

  BuildCurrencyAccountListItem({
    required this.currencyName,
    required this.currency,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(CupertinoPageRoute(
            builder: (context) => DashboardPage(
                currencyVal: 0.0,
                isWhite: false,
                convertedCurrency: 0.0,
                currencyone: 'USD',
                currencytwo: currency)));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 25.0, bottom: 20.0),
        child: Text(
          currencyName,
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}

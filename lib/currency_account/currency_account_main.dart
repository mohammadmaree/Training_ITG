
import 'package:first_projrct/currency_account/pages/dash_board_page.dart';
import 'package:flutter/material.dart';

class CurrencyAccountMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardPage(
          currencyVal: 0.0,
          convertedCurrency: 0.0,
          currencyone: 'USD',
          currencytwo: 'RUB',
          isWhite: true,
      ),
    );
  }
}

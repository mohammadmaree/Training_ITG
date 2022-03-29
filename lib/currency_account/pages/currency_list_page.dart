import 'package:first_projrct/currency_account/widget/build_currency_account_list_item.dart';
import 'package:flutter/material.dart';

class CurrencyListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEC5759),
        appBar: AppBar(
          backgroundColor: Color(0xFFEC5759),
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
            BuildCurrencyAccountListItem(
              currencyName:'Russian Ruble',
              currency:'RUB',
            ),
            BuildCurrencyAccountListItem(
              currencyName:'Indian Rupee',
              currency:'INR',
            ),
            BuildCurrencyAccountListItem(
              currencyName:'Japanese Yen',
              currency:'JPY',
            ),
            BuildCurrencyAccountListItem(
              currencyName:'Pound Sterling',
              currency:'GBP',
            ),
          ],
        )
    );
  }
}

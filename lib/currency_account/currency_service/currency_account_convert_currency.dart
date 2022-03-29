
import 'package:first_projrct/currency_account/pages/dash_board_page.dart';
import 'package:flutter/material.dart';

class CurrencyAccountConvertCurrency{
  convertCurrency(String fromCurrency, String toCurrency, double amount, context) {
    if (fromCurrency == 'USD') {
      switch (toCurrency) {
        case 'RUB':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 65).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'JPY':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 110.48).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'INR':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 70.53).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'GBP':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.78).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
      }
    }
    if (fromCurrency == 'RUB') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal:( (amount / 65)*1000).round()*0.001,
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }

    if (fromCurrency == 'INR') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: ((amount * 0.014)*1000).round()*0.001,
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }

    if (fromCurrency == 'JPY') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: ((amount * 0.0091)*1000).round()*0.001,
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }
    if (fromCurrency == 'GBP') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
            currencyVal: ((amount * 1.29)*1000).round()*0.001,
            convertedCurrency: amount,
            currencyone: toCurrency,
            currencytwo: fromCurrency,
            isWhite: true,
          )));
    }
  }
}
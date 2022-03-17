
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final String text;
  final double screenWidth;
  DefaultTextFormField({
    required this.text,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: screenWidth*0.045,
              color: Colors.grey),
          // hintText: 'EMAIL',
          // hintStyle: ,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green))),
    );
  }
}

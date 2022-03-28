import 'package:flutter/material.dart';

class BuildHairstylistGetService extends StatelessWidget {
  final String name;
  final int price;

  BuildHairstylistGetService({
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
                fontFamily: 'Nunito', fontSize: 17.0, color: Colors.black),
          ),
          SizedBox(width: 5.0),
          Text(
            '\$' + price.toString(),
            style: TextStyle(
                fontFamily: 'Nunito', fontSize: 17.0, color: Colors.grey),
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

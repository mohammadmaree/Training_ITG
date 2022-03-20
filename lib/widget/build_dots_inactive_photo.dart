import 'package:flutter/material.dart';

class BuildDotsInactivePhoto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 3.0),
          child: Container(
            height: 8.0,
            width: 8.0,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4.0)
            ),
          ),
        )
    );
  }
}

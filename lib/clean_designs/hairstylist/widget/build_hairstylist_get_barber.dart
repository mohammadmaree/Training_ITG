import 'package:flutter/material.dart';

class BuildHairstylistGetBarber extends StatefulWidget {
  final String image;
  final String name;

  BuildHairstylistGetBarber({
   required this.image,
    required this.name,
  });

  @override
  State<BuildHairstylistGetBarber> createState() => _BuildHairstylistGetBarberState();
}

class _BuildHairstylistGetBarberState extends State<BuildHairstylistGetBarber> {

  var selectedBarber = 'Jonathan';

  selectBarber(name) {
    setState(() {
      selectedBarber = name;
    });
  }

  Color getSelectedBarber(name) {
    print(selectedBarber);
    if (name == selectedBarber) {
      return Colors.green.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  unSelectBarber() {
    setState(() {
      selectedBarber = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
            InkWell(
              onTap: () {
                selectBarber(widget.name);
              },
              onDoubleTap: (){
                unSelectBarber();
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: getSelectedBarber(widget.name)),
              ),
            )
          ],
        ),
        SizedBox(height: 7.0),
        Text(
          widget.name,
          style: TextStyle(fontFamily: 'FirSans', fontSize: 15.0),
        )
      ],
    );
  }
}

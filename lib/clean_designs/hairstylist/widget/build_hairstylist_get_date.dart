import 'package:flutter/material.dart';

class BuildHairstylistGetDate extends StatefulWidget {
  final int date;
  final String day;
  BuildHairstylistGetDate({
    required this.date,
    required this.day,
  });

  @override
  State<BuildHairstylistGetDate> createState() => _BuildHairstylistGetDateState();
}

class _BuildHairstylistGetDateState extends State<BuildHairstylistGetDate> {

  var selectedDate = 18;

  Color switchColor(date) {
    if (date == selectedDate) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor(date) {
    if (date == selectedDate) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectDate(date) {
    setState(() {
      selectedDate = date;
    });
  }

  unSelectDate() {
    setState(() {
      selectedDate = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: switchColor(widget.date)),
      width: 60.0,
      height: 60.0,
      child: InkWell(
        onTap: () {
          selectDate(widget.date);
        },
        onDoubleTap: (){
          unSelectDate();
        },
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 7.0),
              Text(
                widget.date.toString(),
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: switchContentColor(widget.date)),
              ),
              Text(
                widget.day,
                style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontSize: 15.0,
                    color: switchContentColor(widget.date)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildHairstlistGetTime extends StatefulWidget {
  final String time;
  BuildHairstlistGetTime({
    required this.time,
  });

  @override
  State<BuildHairstlistGetTime> createState() => _BuildHairstlistGetTimeState();
}

class _BuildHairstlistGetTimeState extends State<BuildHairstlistGetTime> {

  var selectedTime = '12:30';

  Color switchTimeColor(time) {
    if (time == selectedTime) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchTimeContentColor(time) {
    if (time == selectedTime) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  unSelectTime() {
    setState(() {
      selectedTime = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: switchTimeColor(widget.time)),
      height: 50.0,
      width: 75.0,
      child: InkWell(
        onTap: () {
          selectTime(widget.time);
        },
        onDoubleTap: (){
          unSelectTime();
        },
        child: Center(
          child: Text(
            widget.time,
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: switchTimeContentColor(widget.time)),
          ),
        ),
      ),
    );
  }
}

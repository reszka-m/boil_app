import 'package:flutter/material.dart';
import 'dart:async';

import 'package:boil_app/constants.dart';
import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:flutter/services.dart';

class Clock extends StatefulWidget {
  bool isCounting;
  final Size size;
  final DataModel data;
  Clock(
      {Key key,
      @required this.size,
      @required this.data,
      @required this.isCounting})
      : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  TimeModel timeCopy = TimeModel(seconds: 0, minutes: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: this.start,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: widget.size.width * 0.1),
          width: widget.size.width * .8,
          height: widget.size.width * .8,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            shape: BoxShape.circle,
            border: Border.all(
              width: 3,
              color: Color(0xFF9A9A9A),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.data.time.seconds >= 10
                    ? "${widget.data.time.minutes.toString()}:${widget.data.time.seconds.toString()}"
                    : "${widget.data.time.minutes.toString()}:0${widget.data.time.seconds.toString()}",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 70,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.isCounting == false ? "START" : "STOP",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 15,
                ),
              ),
            ],
          ),
//        "1:15",
        ),
      ),
    );
  }

  void start() {
    if (widget.isCounting == true) {
      setState(() {
        widget.isCounting = false;
      });
      return;
    }
    setState(() {
      widget.isCounting = true;
    });
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (widget.isCounting == false) {
        timer.cancel();
        return;
      }
      setState(() {
        widget.data.time.seconds -= 1;
        if (widget.data.time.seconds < 0) {
          widget.data.time.seconds += 60;
          widget.data.time.minutes -= 1;
        }
        if (widget.data.time.minutes < 0) {
          widget.data.time.minutes = 0;
          widget.data.time.seconds = 0;
        }
        if (widget.data.time.minutes == 0 && widget.data.time.seconds == 0) {
          widget.isCounting = false;
          timer.cancel();
        }
      });
    });
  }
}

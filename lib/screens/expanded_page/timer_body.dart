import 'package:boil_app/screens/expanded_page/models/data_model.dart';
import 'package:boil_app/theme.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class TimerBody extends StatefulWidget {
  final TimeModel time;

  const TimerBody({Key key, this.time}) : super(key: key);

  @override
  _TimerBodyState createState() => _TimerBodyState();
}

class _TimerBodyState extends State<TimerBody> {
  TimeModel time;

  void count() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        widget.time.seconds -= 1;
        if (widget.time.seconds < 0) {
          widget.time.seconds += 60;
          widget.time.minutes -= 1;
        }
        if (widget.time.minutes == 0 && widget.time.seconds == 0) {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "${widget.time.minutes.toString()}:${widget.time.seconds.toString()}",
//        "1:15",
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          FlatButton(
            child: Text("Start"),
            onPressed: this.count,
          )
        ],
      ),
    );
  }
}

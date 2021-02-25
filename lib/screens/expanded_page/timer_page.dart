import 'package:flutter/material.dart';
import 'package:boil_app/screens/expanded_page/timer_body.dart';
import 'package:boil_app/screens/expanded_page/models/data_model.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key key, this.time}) : super(key: key);
  final TimeModel time;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TimerBody(time: this.time),
    );
//    return Text(
//      "${time.minutes.toString()}:${time.seconds.toString()}"
//    );
  }
}
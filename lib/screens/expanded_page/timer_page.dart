import 'package:flutter/material.dart';
import 'package:boil_app/screens/expanded_page/timer_body.dart';
import 'package:boil_app/screens/expanded_page/models/data_model.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key key, this.time}) : super(key: key);
  final TimeModel time;
  static String routeName = '/timer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TimerBody(time: this.time)],
      ),
    );
//    return Text(
//      "${time.minutes.toString()}:${time.seconds.toString()}"
//    );
  }
}

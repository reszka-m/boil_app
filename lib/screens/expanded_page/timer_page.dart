import 'package:flutter/material.dart';
import 'package:boil_app/screens/expanded_page/timer_body.dart';
import 'package:boil_app/screens/expanded_page/models/data_model.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key key}) : super(key: key);
  static String routeName = '/timer';
  @override
  Widget build(BuildContext context) {
    TimeModel time = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Column(
        children: [TimerBody(time: time)],
      ),
    );
//    return Text(
//      "${time.minutes.toString()}:${time.seconds.toString()}"
//    );
  }
}

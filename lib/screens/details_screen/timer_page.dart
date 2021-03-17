import 'package:boil_app/screens/details_screen/timer_body.dart';
import 'package:flutter/material.dart';

import 'models/data_model.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key key}) : super(key: key);
  static String routeName = '/timer';
  @override
  Widget build(BuildContext context) {
    DataModel data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: TimerBody(data: data),
    );
//    return Text(
//      "${time.minutes.toString()}:${time.seconds.toString()}"
//    );
  }
}

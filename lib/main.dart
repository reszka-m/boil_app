import 'package:boil_app/routes.dart';
import 'package:boil_app/screens/expanded_page/models/data_model.dart';
import 'package:boil_app/screens/expanded_page/timer_page.dart';
import 'package:boil_app/screens/home_page/home_page.dart';
import 'package:boil_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boil App',
      theme: theme(),
      initialRoute: '/home',
      routes: routes,
      //home: HomePage(),
      //home: TimerPage(time: TimeModel(minutes: 1, seconds: 15)),
    );
  }
}

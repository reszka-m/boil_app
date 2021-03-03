import 'package:boil_app/screens/expanded_page/timer_page.dart';
import 'package:boil_app/screens/home_page/home_page.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  TimerPage.routeName: (context) => TimerPage(),
};

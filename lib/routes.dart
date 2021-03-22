import 'package:boil_app/screens/details_screen/timer_page.dart';
import 'package:boil_app/screens/epanded_screen/expanded_page.dart';
import 'package:boil_app/screens/home_page/home_page.dart';
import 'package:boil_app/screens/menu_screens/privacy_policy.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  TimerPage.routeName: (context) => TimerPage(),
  ExpandedPage.routeName: (context) => ExpandedPage(),
  Policy.routeName: (context) => Policy(),
};

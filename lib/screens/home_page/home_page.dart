import 'package:boil_app/screens/home_page/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

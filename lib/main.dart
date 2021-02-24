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
      home: HomePage(),
    );
  }
}

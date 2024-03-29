import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    cardColor: kBtnColor,
    canvasColor: kBtnColor,
    scaffoldBackgroundColor: Color(0xFFEFEFEF),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    accentColor: kSecondaryColor.withOpacity(0.5),
    accentColorBrightness: Brightness.light,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

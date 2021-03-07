import 'package:flutter/foundation.dart';

class TimeModel {
  int minutes;
  int seconds;

  TimeModel({
    @required this.minutes,
    @required this.seconds,
  });
}

class DataModel {
  TimeModel time;
  String imagePath;
  String info;
  String name;

  DataModel({
    @required this.time,
    @required this.imagePath,
    @required this.info,
    @required this.name,
  });
}

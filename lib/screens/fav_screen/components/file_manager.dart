import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:boil_app/screens/details_screen/models/data_model.dart';

class FileManager {
  SharedPreferences prefs;
  int counter;

  FileManager() {
    this.getInstance();
    this.getCounter();
  }

  Future<void> getInstance() async {
    this.prefs = await SharedPreferences.getInstance();
  }

  Future<void> getCounter() async {
    this.counter = prefs.getInt('counter') ?? 0;
  }

  Future<DataModel> getDataInstance(int number) async {
    if (number >= this.counter) return null;
    DataModel dataInstance;

    dataInstance.imagePath =
        prefs.getString('imagePath' + number.toString()) ?? "";
    dataInstance.info = prefs.getString('info' + number.toString()) ?? "";
    dataInstance.name = prefs.getString('name' + number.toString()) ?? "";
    dataInstance.time.minutes =
        prefs.getInt('minutes' + number.toString()) ?? 0;
    dataInstance.time.seconds =
        prefs.getInt('seconds' + number.toString()) ?? 0;

    return dataInstance;
  }

  Future<List<DataModel>> readData() async {
    List<DataModel> data;

    for (var i = 0; i < this.counter; i++) {
      data.add(await this.getDataInstance(i));
    }

    return data;
  }

  Future<void> addDataInstance(DataModel dataInstance,
      {int number = -1}) async {
    if (number == -1) {
      number = this.counter;
      this.counter++;
    }
    if (number >= this.counter) return;

    prefs.setString('imagePath' + number.toString(), dataInstance.imagePath);
    prefs.setString('info' + number.toString(), dataInstance.info);
    prefs.setString('name' + number.toString(), dataInstance.name);
    prefs.setInt('minutes' + number.toString(), dataInstance.time.minutes);
    prefs.setInt('seconds' + number.toString(), dataInstance.time.seconds);
  }

  Future<void> deleteDataInstance(int number) async {
    if (number >= this.counter) return;
    prefs.remove('imagePath' + number.toString());
    prefs.remove('info' + number.toString());
    prefs.remove('name' + number.toString());
    prefs.remove('minutes' + number.toString());
    prefs.remove('seconds' + number.toString());
    this.counter--;
    for (var i = number; i < this.counter; i++) {
      this.addDataInstance(await this.getDataInstance(i + 1), number: i);
    }
  }
}

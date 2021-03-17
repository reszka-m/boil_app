import 'package:boil_app/screens/details_screen/models/data_model.dart';

List<List<DataModel>> generateData() {
  List<List<DataModel>> dataList = [
    [
      // ryże
      DataModel(
        time: TimeModel(minutes: 10, seconds: 0),
        imagePath: "assets/images/rice.jpg",
        info: "El arroz se hierve durante 10 minutos",
        name: "Brown Rice",
      ),
      DataModel(
        time: TimeModel(minutes: 0, seconds: 10),
        imagePath: "assets/images/rice.jpg",
        info: "TEST",
        name: "TEST",
      ),
    ],
    [
      // makarony
    ],
    [
      // ziemniaki
    ],
    [
      // jajka
    ],
  ];

  return dataList;
}

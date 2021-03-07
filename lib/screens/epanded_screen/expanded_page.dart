import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:boil_app/screens/epanded_screen/body.dart';
import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({Key key}) : super(key: key);
  static String routeName = '/expanded';
  @override
  Widget build(BuildContext context) {
    final List<DataModel> data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Body(data: data),
    );
  }
}

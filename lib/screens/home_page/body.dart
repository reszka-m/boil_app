import 'package:boil_app/constants.dart';
import 'package:boil_app/screens/home_page/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SearchBox(size: size),
      ],
    );
  }
}

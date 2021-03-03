import 'dart:async';

import 'package:boil_app/constants.dart';
import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:boil_app/screens/home_page/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/item_list_1.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SearchBox(size: size),
        SizedBox(
          height: 10,
        ),
        ItemList1(),
      ],
    );
  }
}

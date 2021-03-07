import 'package:boil_app/screens/home_page/components/upper_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/item_list_1.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        UpperBar(size: size),
        SizedBox(
          height: 10,
        ),
        ItemList1(),
      ],
    );
  }
}

import 'package:boil_app/screens/epanded_screen/components/item_list_2.dart';
import 'package:boil_app/screens/epanded_screen/components/upper_bar.dart';
import 'package:flutter/material.dart';

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
        ItemList2(),
      ],
    );
  }
}

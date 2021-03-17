import 'package:boil_app/screens/fav_screen/components/item_list_3.dart';
import 'package:boil_app/screens/fav_screen/components/upper_bar.dart';
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
        ItemList3(),
      ],
    );
  }
}

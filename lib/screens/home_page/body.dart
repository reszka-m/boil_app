import 'package:boil_app/screens/home_page/components/upper_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';
import 'components/item_list_1.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            UpperBar(size: size),
            SizedBox(
              height: 10,
            ),
            ItemList1(),
          ],
        ),
        Positioned(
          left: size.width * 0.395,
          top: kDefaultPadding + 10,
          child: Container(
            height: 80,
            width: 80,
            child: FittedBox(
              child: FloatingActionButton(
                tooltip: "Favourites",
                backgroundColor: kSecondaryColor,
                foregroundColor: kPrimaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, "/fav");
                },
                child: Icon(Icons.add),
                //Heart here later or sth
              ),
            ),
          ),
        ),
      ],
    );
  }
}

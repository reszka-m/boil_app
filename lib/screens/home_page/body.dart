import 'package:boil_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              color: kPrimaryColor,
              height: 0.1 * size.height,
              padding: EdgeInsets.only(
                  left: kDefaultPadding, right: kDefaultPadding),
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                height: 0.05 * size.height,
                padding: EdgeInsets.only(
                    left: kDefaultPadding, right: kDefaultPadding),
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  top: kDefaultPadding,
                  bottom: kDefaultPadding,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

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
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              height: 0.105 * size.height,
              padding: EdgeInsets.only(
                  left: kDefaultPadding, right: kDefaultPadding),
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.4)),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                height: 50,
                padding: EdgeInsets.only(
                    left: kDefaultPadding, right: kDefaultPadding),
                margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  top: kDefaultPadding + 30,
                ),
              ),
            ),
            Positioned(
              right: 30,
              top: 60,
              child: Icon(
                Icons.search,
                color: kPrimaryColor,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

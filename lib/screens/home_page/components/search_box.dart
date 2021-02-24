import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          padding:
              EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
        ),
        Container(
          alignment: Alignment.center,
          child: TextField(
            onChanged: (value) => {},
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
          padding:
              EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
          margin: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding + 30,
          ),
        ),
        Positioned(
          right: 30,
          top: 60,
          child: Icon(
            Icons.search,
            color: kPrimaryColor.withOpacity(0.5),
            size: 30,
          ),
        ),
      ],
    );
  }
}

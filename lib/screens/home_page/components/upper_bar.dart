import 'package:flutter/material.dart';

import '../../../constants.dart';

class UpperBar extends StatelessWidget {
  const UpperBar({
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
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 4,
                offset: Offset(5, 0),
              ),
            ],
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
        Positioned(
          top: kDefaultPadding,
          right: kDefaultPadding,
          child: IconButton(
            onPressed: () => {},
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

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
          padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              top: kDefaultPadding + 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                color: Colors.transparent, //blank btn
              ),
              Text(
                'BoilApp',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kBtnColor,
                ),
              ),
              IconButton(
                onPressed: () => {
                  Navigator.pushNamed(context, '/menuPolicy'),
                },
                icon: Icon(
                  Icons.menu_book,
                  size: 30,
                ),
                color: kBtnColor,
              ),
            ],
          ),
        ),
        // Positioned(
        //   top: kDefaultPadding,
        //   right: kDefaultPadding,
        //   child: IconButton(
        //     onPressed: () => {
        //       Navigator.pushNamed(context, '/menuPolicy'),
        //     },
        //     icon: Icon(
        //       Icons.menu_book,
        //       size: 30,
        //     ),
        //     color: kBtnColor,
        //   ),
        // ),
        // propably will be removed
        // Positioned(
        //   top: kDefaultPadding,
        //   right: kDefaultPadding,
        //   child: PopupMenuButton(
        //     icon: Icon(
        //       Icons.menu,
        //       color: kBtnColor,
        //     ),
        //     color: kBtnColor,
        //     itemBuilder: (BuildContext bc) => [
        //       PopupMenuItem(
        //           child: GestureDetector(
        //             child: Text("Privacy Policy"),
        //             onTap: () => {
        //               Navigator.pushNamed(context, '/menuPolicy'),
        //             },
        //           ),
        //           value: "/menuPolicy"),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}

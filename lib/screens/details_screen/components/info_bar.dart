import 'package:flutter/material.dart';

import '../../../constants.dart';

class InfoBar extends StatelessWidget {
  final String imagePath;
  final String text;
  const InfoBar({Key key, this.imagePath, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: <Widget>[
          Stack(
            children: [
              Container(
                color: kSecondaryColor,
                height: size.height * 0.1,
                width: size.width - 50,
                margin: EdgeInsets.only(
                    top: kDefaultPadding + 15, left: kDefaultPadding + 30),
              ),
              Positioned(
                right: 40,
                top: 50,
                child: Container(
                  width: 180,
                  height: 40,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      text,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: kDefaultPadding, left: kDefaultPadding),
                width: size.width * 0.3,
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: Colors.red,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

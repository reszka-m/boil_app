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
              //background
              Container(
                color: kSecondaryColor,
                height: size.height * 0.1,
                width: size.width - 50,
                margin: EdgeInsets.only(
                  top: kDefaultPadding + 15,
                  left: size.width * 0.138,
                ),
              ),
              // text
              Container(
                margin: EdgeInsets.only(
                  top: kDefaultPadding + 16,
                  left: size.width * 0.37,
                ),
                width: size.width * 0.62,
                height: 70,
                child: Scrollbar(
                  radius: Radius.circular(90),
                  thickness: 8,
                  isAlwaysShown: false,
                  child: SingleChildScrollView(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: kDefaultPadding * 0.9, left: kDefaultPadding),
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
                  color: kSecondaryColor,
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

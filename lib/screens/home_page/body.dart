import 'dart:async';

import 'package:boil_app/constants.dart';
import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:boil_app/screens/home_page/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SearchBox(size: size),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SingleTile(
                image: "assets/images/img1.png",
                name: "Rice",
                press: () => {
                  Navigator.pushNamed(
                    context,
                    '/timer',
                    arguments: TimeModel(
                      minutes: 1,
                      seconds: 15,
                    ),
                  ),
                },
              ),
              SingleTile(
                image: "assets/images/img2.png",
                name: "Pasta",
              ),
              SingleTile(
                image: "assets/images/img3.png",
                name: "Potatoes",
              ),
              SingleTile(
                image: "assets/images/img1.png",
                name: "Your stara",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SingleTile extends StatelessWidget {
  const SingleTile({
    Key key,
    this.image,
    this.name,
    this.press,
  }) : super(key: key);
  final String image, name;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Row(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  color: Colors.grey,
                  height: size.height * 0.1,
                  width: size.width - 50,
                  margin: EdgeInsets.only(
                      top: kDefaultPadding + 15, left: kDefaultPadding + 30),
                ),
                Positioned(
                  right: 45,
                  top: 55,
                  child: Container(
                    width: 150,
                    height: 30,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 25),
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
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

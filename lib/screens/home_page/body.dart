import 'dart:async';

import 'package:boil_app/constants.dart';
import 'package:boil_app/screens/expanded_page/models/data_model.dart';
import 'package:boil_app/screens/expanded_page/timer_page.dart';
import 'package:boil_app/screens/home_page/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:boil_app/screens/expanded_page/timer_body.dart';

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
        Expanded(
          child: GridView.count(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding / 2,
                top: kDefaultPadding / 2),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: [
              SingleTile(
                image: "assets/images/img1.png",
                name: "Rice",
                press: () => {
                  Navigator.pushNamed(context, '/timer',
                      arguments: TimeModel(
                        minutes: 1,
                        seconds: 15,
                      ))
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
        child: Column(
          children: [
            Container(
              width: size.width * 0.4,
              height: size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 40,
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: kPrimaryColor.withOpacity(0.4)),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Spacer(),
                  RichText(
                    text: TextSpan(
                        text: name.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

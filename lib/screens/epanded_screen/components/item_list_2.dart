import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemList2 extends StatelessWidget {
  const ItemList2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleTile(
              image: "assets/images/rice.jpg",
              name: "Brown Rice",
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
              image: "assets/images/pasta.jpg",
              name: "American Rice",
            ),
            SingleTile(
              image: "assets/images/potatoes.jpg",
              name: "Other Rice",
            ),
            SingleTile(
              image: "assets/images/eggs.jpg",
              name: "Different Rice",
            ),
            SingleTile(
              image: "assets/images/pasta.jpg",
              name: "Your Rice",
            ),
            SingleTile(
              image: "assets/images/pasta.jpg",
              name: "Hard Boiled Eggs",
            ),
          ],
        ),
      ),
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
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
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
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          name,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
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

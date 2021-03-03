import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemList1 extends StatelessWidget {
  const ItemList1({
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
              image: "assets/images/pasta.jpg",
              name: "Pasta",
            ),
            SingleTile(
              image: "assets/images/potatoes.jpg",
              name: "Potatoes",
            ),
            SingleTile(
              image: "assets/images/eggs.jpg",
              name: "Eggs",
            ),
            SingleTile(
              image: "assets/images/pasta.jpg",
              name: "Pasta",
            ),
            SingleTile(
              image: "assets/images/pasta.jpg",
              name: "Pasta",
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
                  color: kSecondaryColor,
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
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
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
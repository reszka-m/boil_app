import 'package:flutter/material.dart';

import 'package:boil_app/screens/details_screen/models/data_model.dart';
import '../../../constants.dart';

import 'package:boil_app/data.dart';

class ItemList1 extends StatelessWidget {
  const ItemList1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<DataModel>> data = generateData();

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleTile(
              image: "assets/images/rice/rice.jpg",
              name: "Rice",
              press: () => {
                Navigator.pushNamed(
                  context,
                  '/expanded',
                  arguments: data[0],
                ),
              },
            ),
            SingleTile(
              image: "assets/images/pasta/randomPasta3.jpg",
              name: "Pasta",
              press: () => {
                Navigator.pushNamed(
                  context,
                  '/expanded',
                  arguments: data[1],
                ),
              },
            ),
            SingleTile(
              image: "assets/images/potatoes/potatoes.jpg",
              name: "Potatoes",
              press: () => {
                Navigator.pushNamed(
                  context,
                  '/expanded',
                  arguments: data[2],
                ),
              },
            ),
            SingleTile(
              image: "assets/images/eggs/eggs1.jpg",
              name: "Eggs",
              press: () => {
                Navigator.pushNamed(
                  context,
                  '/expanded',
                  arguments: data[3],
                ),
              },
            ),
            SingleTile(
              image: "assets/images/groats/groats.jpg",
              name: "Groats",
              press: () => {
                Navigator.pushNamed(
                  context,
                  '/expanded',
                  arguments: data[4],
                ),
              },
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
                //background container
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
                  width: size.width * 0.86,
                  margin: EdgeInsets.only(
                    top: kDefaultPadding + 15,
                    left: size.width * 0.14,
                  ),
                ),
                //text container
                Container(
                  margin: EdgeInsets.only(
                    top: kDefaultPadding + 16,
                    left: size.width * 0.3,
                  ),
                  width: size.width * 0.7,
                  height: 70,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      name,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //image container
                Container(
                  margin: EdgeInsets.only(
                    top: kDefaultPadding * 0.9,
                    left: kDefaultPadding,
                  ),
                  width: size.width * 0.3,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
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

import 'package:flutter/material.dart';

import 'package:boil_app/screens/details_screen/models/data_model.dart';
import '../../../constants.dart';

class ItemList1 extends StatelessWidget {
  const ItemList1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<DataModel>> data = [
      // Ryże => data[0]
      [
        DataModel(
          time: TimeModel(minutes: 10, seconds: 0),
          imagePath: "assets/images/rice.jpg",
          info: "El arroz se hierve durante 10 minutos",
          name: "Brown Rice",
        ),
        DataModel(
          time: TimeModel(minutes: 12, seconds: 0),
          imagePath: "assets/images/rice.jpg",
          info: "El arroz se hierve durante 10 minutos",
          name: "White Rice",
        ),
      ],
      [
        DataModel(
          time: TimeModel(minutes: 8, seconds: 0),
          imagePath: "assets/images/pasta.jpg",
          info: "El pasta se hierve durante 8 minutos",
          name: "Pasta",
        )
      ],
    ];
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
                  '/expanded',
                  arguments: data[0],
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
                    top: kDefaultPadding + 15,
                    left: kDefaultPadding + 30,
                  ),
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
import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemList2 extends StatelessWidget {
  final List<DataModel> data;
  const ItemList2({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: generateTiles(context, data),
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
                      top: kDefaultPadding + 15, left: kDefaultPadding + 30),
                ),
                //text container
                Positioned(
                  right: size.width * 0.15,
                  top: size.height * 0.08,
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
                //image container
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

List<SingleTile> generateTiles(
  BuildContext context,
  List<DataModel> data,
) {
  List<SingleTile> tiles = [];
  for (var i = 0; i < data.length; i++) {
    tiles.add(
      SingleTile(
        image: data[i].imagePath,
        name: data[i].name,
        press: () => {
          Navigator.pushNamed(
            context,
            '/timer',
            arguments: DataModel(
              time: data[i].time,
              imagePath: data[i].imagePath,
              info: data[i].info,
              name: data[i].name,
            ),
          ),
        },
      ),
    );
  }
  return tiles;
}

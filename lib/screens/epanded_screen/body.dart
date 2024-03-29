import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:boil_app/screens/epanded_screen/components/item_list_2.dart';
import 'package:boil_app/screens/epanded_screen/components/upper_bar.dart';
import 'package:boil_app/screens/home_page/body.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<DataModel> data;

  const Body({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        UpperBar(size: size),
        ItemList2(data: this.data),
        if (banner == null)
          SizedBox(height: 50)
        else
          Container(
            height: 50,
            child: AdWidget(ad: bannerExpanded),
          )
      ],
    );
  }
}

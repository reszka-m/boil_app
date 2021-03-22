import 'package:boil_app/screens/home_page/body.dart';
import 'package:boil_app/screens/menu_screens/components/upper_bar.dart';
import 'package:flutter/material.dart';

class Policy extends StatelessWidget {
  static String routeName = '/menuPolicy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        UpperBar(key: key, size: size),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus arcu sed libero consectetur, cursus mollis ipsum dictum. Duis iaculis, turpis porta vestibulum aliquam, eros quam imperdiet tellus, sit amet lacinia enim felis ut ante. Nam molestie ultrices est, sit amet eleifend nibh varius ac. Mauris ut ultricies velit, sit amet varius nunc. Ut in maximus orci, quis iaculis lectus. Suspendisse pellentesque, metus sit amet porta venenatis, tellus orci aliquam orci, pharetra placerat metus nunc nec quam. Vestibulum congue sit amet nibh id laoreet.',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

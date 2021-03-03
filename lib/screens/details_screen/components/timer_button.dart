import 'package:flutter/material.dart';
import 'package:boil_app/constants.dart';

class TimerButton extends StatelessWidget {
  final String str;
  final Size size;
  final Function() function;
  const TimerButton({Key key, this.size, this.function, this.str})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.function,
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.4,
        margin: EdgeInsets.only(bottom: size.width * 0.05),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          shape: BoxShape.circle,
        ),
        child: Text(this.str,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
      ),
    );
  }
}

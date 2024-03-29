import 'package:boil_app/screens/details_screen/models/inner_shadow.dart';
import 'package:flutter/material.dart';
import 'package:boil_app/constants.dart';

class ResetButton extends StatelessWidget {
  final Size size;
  final Function reset;
  ResetButton({
    Key key,
    @required this.size,
    @required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: this.reset,
        child: InnerShadow(
          blur: 10,
          color: kPrimaryColor.withOpacity(0.5),
          offset: Offset(5, 5),
          child: Container(
            width: size.width * 0.45,
            height: 34,
            decoration: BoxDecoration(
                color: kSecondaryColor,
                border: Border.all(color: Color(0xFF555555)),
                borderRadius: BorderRadius.all(Radius.circular(17.0))),
            child: Center(
              child: Text(
                "RESET TIMER",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

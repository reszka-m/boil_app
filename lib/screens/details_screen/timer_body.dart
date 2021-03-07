import 'package:boil_app/screens/details_screen/components/upper_bar.dart';
import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:boil_app/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'components/info_bar.dart';

class TimerBody extends StatefulWidget {
  final TimeModel time;

  const TimerBody({Key key, this.time}) : super(key: key);

  @override
  _TimerBodyState createState() => _TimerBodyState();
}

class _TimerBodyState extends State<TimerBody> {
  bool isCounting = false;
  TimeModel timeCopy = TimeModel(seconds: 0, minutes: 0);

  void start() {
    if (this.isCounting == true) {
      setState(() {
        this.isCounting = false;
      });
      return;
    }
    setState(() {
      this.isCounting = true;
    });
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (isCounting == false) {
        timer.cancel();
        return;
      }
      setState(() {
        widget.time.seconds -= 1;
        if (widget.time.seconds < 0) {
          widget.time.seconds += 60;
          widget.time.minutes -= 1;
        }
        if (widget.time.minutes < 0) {
          widget.time.minutes = 0;
          widget.time.seconds = 0;
        }
        if (widget.time.minutes == 0 && widget.time.seconds == 0) {
          this.isCounting = false;
          timer.cancel();
        }
      });
    });
  }

  void reset() {
    this.isCounting = false;
    setState(() {
      widget.time.minutes = timeCopy.minutes;
      widget.time.seconds = timeCopy.seconds;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (timeCopy.minutes == 0 && timeCopy.seconds == 0) {
      timeCopy.minutes = widget.time.minutes;
      timeCopy.seconds = widget.time.seconds;
    }
    return Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UpperBar(
            size: size,
            name: "Rice",
          ),
          InfoBar(
            imagePath: "assets/images/rice.jpg",
            text: "El arroz se hierve durante 10 minutos",
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
            width: size.width,
            height: 3,
            color: Color(0xFF818181),
          ),
          GestureDetector(
            onTap: this.start,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: size.width * 0.1),
              width: size.width * .8,
              height: size.width * .8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 3,
                  color: Color(0xFF9A9A9A),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.time.seconds >= 10
                        ? "${widget.time.minutes.toString()}:${widget.time.seconds.toString()}"
                        : "${widget.time.minutes.toString()}:0${widget.time.seconds.toString()}",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.isCounting == false ? "START" : "STOP",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
//        "1:15",
            ),
          ),
          GestureDetector(
            onTap: this.reset,
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
          )
        ],
      ),
    );
  }
}

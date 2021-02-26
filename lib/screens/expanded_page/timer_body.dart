import 'package:boil_app/screens/expanded_page/models/data_model.dart';
import 'package:boil_app/theme.dart';
import 'package:boil_app/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';

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
      return;
    }
    this.isCounting = true;
    timeCopy.minutes = widget.time.minutes;
    timeCopy.seconds = widget.time.seconds;
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
    if (this.isCounting == false) {
      return;
    }
    this.isCounting = false;
    setState(() {
      widget.time.minutes = timeCopy.minutes;
      widget.time.seconds = timeCopy.seconds;
    });
  }

  void add5s() {
    setState(() {
      widget.time.seconds += 5;
      if (widget.time.seconds >= 60) {
        widget.time.seconds -= 60;
        widget.time.minutes += 1;
      }
    });
  }

  void sub5s() {
    setState(() {
      widget.time.seconds -= 5;
      if (widget.time.seconds < 0) {
        widget.time.seconds += 60;
        widget.time.minutes -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: size.width * 0.1),
            width: size.width * .8,
            height: size.width * .8,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Text(
              "${widget.time.minutes.toString()}:${widget.time.seconds.toString()}",
//        "1:15",
              style: TextStyle(
                  color: kTextColor, fontSize: 70, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RawMaterialButton(
                onPressed: this.start,
                child: Container(
                  width: size.width * 0.4,
                  height: size.width * 0.4,
                  margin: EdgeInsets.only(bottom: size.width * 0.05),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text("Start",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
              ),
              RawMaterialButton(
                onPressed: this.reset,
                child: Container(
                  width: size.width * 0.4,
                  height: size.width * 0.4,
                  margin: EdgeInsets.only(bottom: size.width * 0.05),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text("Reset",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RawMaterialButton(
                onPressed: this.add5s,
                child: Container(
                  width: size.width * 0.4,
                  height: size.width * 0.4,
                  margin: EdgeInsets.only(bottom: size.width * 0.05),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text("+5s",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
              ),
              RawMaterialButton(
                onPressed: this.sub5s,
                child: Container(
                  width: size.width * 0.4,
                  height: size.width * 0.4,
                  margin: EdgeInsets.only(bottom: size.width * 0.05),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text("-5s",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

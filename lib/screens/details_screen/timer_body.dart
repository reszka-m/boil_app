import 'package:boil_app/screens/details_screen/components/clock.dart';
import 'package:boil_app/screens/details_screen/components/reset_button.dart';
import 'package:boil_app/screens/details_screen/components/upper_bar.dart';
import 'package:boil_app/screens/details_screen/models/data_model.dart';
import 'package:boil_app/constants.dart';
import 'package:boil_app/screens/details_screen/components/sound_manager.dart';
import 'package:flutter/material.dart';

import 'components/info_bar.dart';

class TimerBody extends StatefulWidget {
  final DataModel data;

  const TimerBody({Key key, this.data}) : super(key: key);

  @override
  _TimerBodyState createState() => _TimerBodyState();
}

class _TimerBodyState extends State<TimerBody> {
  bool isCounting = false;
  TimeModel timeCopy = TimeModel(seconds: 0, minutes: 0);
  SoundManager soundManager = SoundManager();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (timeCopy.minutes == 0 && timeCopy.seconds == 0) {
      timeCopy.minutes = widget.data.time.minutes;
      timeCopy.seconds = widget.data.time.seconds;
    }
    return Stack(
      children: [
        Column(
          children: [
            UpperBar(
              size: size,
              name: widget.data.name,
              reset: reset,
            ),
            InfoBar(
              imagePath: widget.data.imagePath,
              text: widget.data.info,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: size.width,
              height: 3,
              color: Color(0xFF818181),
            ),
            Clock(
              size: size,
              data: widget.data,
              isCounting: this.isCounting,
              soundManager: soundManager,
            ),
            ResetButton(
              size: size,
              reset: reset,
            ),
          ],
        ),
        Positioned(
          bottom: kDefaultPadding,
          right: kDefaultPadding,
          child: FloatingActionButton(
            tooltip: "Add to favourites",
            backgroundColor: kPrimaryColor,
            foregroundColor: Color(0xFFEFEFEF),
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }

  void reset() {
    this.isCounting = false;
    soundManager.stopSound();
    setState(() {
      widget.data.time.minutes = timeCopy.minutes;
      widget.data.time.seconds = timeCopy.seconds;
    });
  }
}

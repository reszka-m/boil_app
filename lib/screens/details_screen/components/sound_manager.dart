import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class SoundManager {
  Soundpool _soundpool;
  Future<int> soundId;
  int alarmSoundStreamId;

  SoundManager() {
    _soundpool = Soundpool(streamType: StreamType.notification);
    soundId = _loadSound();
  }

  Future<int> _loadSound() async {
    var sound = await rootBundle.load("assets/sounds/Alarm.mp3");
    return await _soundpool.load(sound);
  }

  Future<void> playSound() async {
    var alarmSound = await soundId;
    alarmSoundStreamId = await _soundpool.play(alarmSound);
  }

  Future<void> stopSound() async {
    if (alarmSoundStreamId != null) {
      await _soundpool.stop(alarmSoundStreamId);
    }
  }
}

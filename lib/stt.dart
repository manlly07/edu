import 'dart:math';

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class STT {
  static SpeechToText _speech = SpeechToText();

  String _currentLocaleId = '';
  List<LocaleName> _localeNames = [];
  double level = 0.0;
  double minSoundLevel = 50000;
  double maxSoundLevel = -50000;

  static List<void Function(String)> _handlers = [];

  static void addListener(void Function(String) handler) {
    _handlers.add(handler);
  }

  static void removeListener(void Function(String) handler) {
    _handlers.remove(handler);
  }

  final TextEditingController _pauseForController =
  TextEditingController(text: '3');
  final TextEditingController _listenForController =
  TextEditingController(text: '30');

  static bool _isAvailable = false;

  static bool get isAvailable => _isAvailable;
  static SpeechToText get speech => _speech;

  static initSTT() async {
    _isAvailable = await speech.initialize(
      onError: (val) {
        print(val);
      },
      onStatus: (String val) {
        print(val);
        for (var element in _handlers) {
          element(val);
        }
      },
    );
  }

  static startListening(_text, setState) async {
    final pauseFor = int.tryParse('3');
    final listenFor = int.tryParse('30');

    var systemLocale = await speech.systemLocale();
    var locate = systemLocale?.localeId ?? '';
    print(locate);
    speech.listen(
      onResult: (result) => {
        setState(() => {
          _text = result.recognizedWords,
          print(result.recognizedWords),
        })
      },
      listenFor: Duration(seconds: listenFor ?? 30),
      pauseFor: Duration(seconds: pauseFor ?? 3),
      partialResults: true,
      localeId: locate,
      // onSoundLevelChange: soundLevelListener,
      cancelOnError: true,
      listenMode: ListenMode.confirmation,
      onDevice: false,
    );
    // setState(() {});
  }

  void soundLevelListener(double level) {
    minSoundLevel = min(minSoundLevel, level);
    maxSoundLevel = max(maxSoundLevel, level);
    // _logEvent('sound level $level: $minSoundLevel - $maxSoundLevel ');
    // setState(() {
      this.level = level;
    // });
  }

  void stopListening() {
    speech.stop();
    // setState(() {
      level = 0.0;
    // });
  }

  void cancelListening() {
    speech.cancel();
    // setState(() {
      level = 0.0;
    // });
  }

}
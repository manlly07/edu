import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  static FlutterTts tts = FlutterTts();

  static initTTS() {
    tts.setLanguage("vi-VN");
    tts.setPitch(1.0);
    tts.setSpeechRate(.4);
  }
  static speak(String text) async {
    await tts.awaitSpeakCompletion(true);
    tts.speak(text);
  }
}
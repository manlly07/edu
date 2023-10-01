import 'dart:convert';

import 'package:edu/constants/color.dart';
import 'package:edu/models/lesson.dart';
import 'package:edu/stt.dart';
import 'package:edu/widgets/lessons/lesson_widget.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:edu/screens/details_screen.dart' as ds;

import '../../screens/course_screen.dart';

class SpeakLessonWidget extends LessonWidget {
  final SpeakingLesson lesson;

  const SpeakLessonWidget({Key? key, required this.lesson, required ValueNotifier<bool> isComplete}) :
        super(key: key, isComplete: isComplete);

  @override
  _SpeakLessonWidgetState createState() => _SpeakLessonWidgetState();
}

class _SpeakLessonWidgetState extends State<SpeakLessonWidget>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<bool> _checking = ValueNotifier(false);
  late final SpeakingLesson lesson;

  late final AnimationController _controller;

  final ValueNotifier<String> text = ValueNotifier("Phát âm nào !");
  final ValueNotifier<bool> _isListening = ValueNotifier(false);
  final ValueNotifier<String> redWord = ValueNotifier("");

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1)
    );
    _isListening.addListener(() {
      if(_isListening.value) {
        _controller.repeat(reverse: true);
      } else {
        _controller.reset();
        checkCorrectAnswer();
      }
    });
    _checking.value = false;
    lesson = widget.lesson;
    STT.addListener(_statusListener);

    redWord.value = lesson.thumbnail.replaceAll("assets/icons/", "")[0];

  }

  @override
  void dispose() {
    _controller.dispose();
    STT.removeListener(_statusListener);
    super.dispose();
  }

  void checkCorrectAnswer() {
    var s1 = text.value.toLowerCase();
    var s2 = lesson.word.toLowerCase();
    print("comparing $s1 and $s2");
    if(s1 == s2) {
      print("$s1 equal $s2");
      widget.setCompleted();
      setState(() {
        _checking.value = true;
      });
    }
  }

  void _statusListener(String status) {
    if(status == "notListening") {
      _isListening.value = false;
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    text.value = result.recognizedWords;
    checkCorrectAnswer();
  }

  void _listen() async {
    if (!_isListening.value) {
      if (STT.isAvailable) {
        _isListening.value = true;
        STT.speech.listen(
          onResult: _onSpeechResult,
          listenFor: const Duration(seconds: 30),
          pauseFor: const Duration(seconds: 3),
          localeId: "vi_VN",
          partialResults: true,
          cancelOnError: true,
        );
      }
    } else {
      _isListening.value = false;
      STT.speech.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    BoxConstraints constraints1 = BoxConstraints(maxWidth: size.width, maxHeight: size.height *3/5);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        getThumbNail(lesson.thumbnail, constraints1, lesson.word),
        SizedBox(
          height: 24,
        ),
        Align(
          heightFactor: 2,
          alignment: Alignment.topCenter,
          // child: Text(
          //   lesson.word,
          //   style: Theme.of(context).textTheme.bodyLarge,
          //   // style: ,
          // ),
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyLarge,
              children: _buildTextSpans(lesson.word, redWord.value),
            ),
          ),
        ),
        Container(
          height: size.height/12,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                width: 4,
                color: text.value != "Phát âm nào !" ? _checking.value ? Colors.greenAccent : Colors.redAccent : Colors.white,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 2.0,
                spreadRadius: .05,
              ), //BoxShadow
            ],
          ),
          child: ValueListenableBuilder(
            valueListenable: text,
            builder: (BuildContext context, String value, Widget? child) {
              return Center(child: Text(value));
            },
          ),
        ),
        Expanded(
          child: Center(
            child: ds.CustomIconButton(
              color: kPrimaryColor,
              height: size.height/5,
              width: size.height/5,
              onTap: () { _listen(); },
              child: AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return Icon(Icons.mic,
                    color: Color.lerp(
                        Colors.black,
                        Colors.red,
                        _controller.value
                    ),
                    size: size.height/10,
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}



class SpeakingLesson extends Lesson {
  SpeakingLesson({required String word, required String thumbnail}):
        super(
          type: LessonType.SPEAKING,
          attribute: {
            "word":word,
            "thumbnail":thumbnail
          }
      );

  String get word => getAttribute("word");
  String get thumbnail => getAttribute("thumbnail");
}

List<InlineSpan> _buildTextSpans(String word, String temp) {
  List<InlineSpan> textSpans = [];
  AsciiEncoder encoder = AsciiEncoder();

  String normalizedTemp = removeDiacritics(temp.toLowerCase());

  for (int i = 0; i < word.length; i++) {
    String character = word[i];
    String normalizedCharacter = removeDiacritics(character.toLowerCase());
    String encodedCharacter = String.fromCharCodes(encoder.convert(normalizedCharacter));

    TextStyle? textStyle = encodedCharacter == normalizedTemp ? TextStyle(color: Colors.red) : null;
    textSpans.add(TextSpan(text: character, style: textStyle));
  }

  return textSpans;
}

String removeDiacritics(String word) {
  final Map<String, String> diacriticsMap = {
    'á': 'a',
    'à': 'a',
    'ả': 'a',
    'ã': 'a',
    'ạ': 'a',
    'â': 'a',
    'ấ': 'a',
    'ầ': 'a',
    'ẩ': 'a',
    'ẫ': 'a',
    'ậ': 'a',
    'ă': 'a',
    'ắ': 'a',
    'ằ': 'a',
    'ẳ': 'a',
    'ẵ': 'a',
    'ặ': 'a',
    'è': 'e',
    'é': 'e',
    'ẻ': 'e',
    'ẽ': 'e',
    'ẹ': 'e',
    'ê': 'e',
    'ế': 'e',
    'ề': 'e',
    'ể': 'e',
    'ễ': 'e',
    'ệ': 'e',
    'í': 'i',
    'ì': 'i',
    'ỉ': 'i',
    'ĩ': 'i',
    'ị': 'i',
    'ó': 'o',
    'ò': 'o',
    'ỏ': 'o',
    'õ': 'o',
    'ọ': 'o',
    'ô': 'o',
    'ố': 'o',
    'ồ': 'o',
    'ổ': 'o',
    'ỗ': 'o',
    'ộ': 'o',
    'ơ': 'o',
    'ớ': 'o',
    'ờ': 'o',
    'ở': 'o',
    'ỡ': 'o',
    'ợ': 'o',
    'ú': 'u',
    'ù': 'u',
    'ủ': 'u',
    'ũ': 'u',
    'ụ': 'u',
    'ư': 'u',
    'ứ': 'u',
    'ừ': 'u',
    'ử': 'u',
    'ữ': 'u',
    'ự': 'u',
    'ý': 'y',
    'ỳ': 'y',
    'ỷ': 'y',
    'ỹ': 'y',
    'ỵ': 'y',
    'đ': 'd',
  };

  return word.split('').map((char) => diacriticsMap[char] ?? char).join();
}
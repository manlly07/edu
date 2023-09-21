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
  late final SpeakingLesson lesson;

  late final AnimationController _controller;

  final ValueNotifier<String> text = ValueNotifier("hello");
  final ValueNotifier<bool> _isListening = ValueNotifier(false);

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
    lesson = widget.lesson;
    STT.addListener(_statusListener);
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
    print("comparing");
    if(s1 == s2) {
      print("$s1 equal $s2");
      widget.setCompleted();
    }
  }

  void _statusListener(String status) {
    if(status == "notListening") {
      _isListening.value = false;
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    text.value = result.recognizedWords;
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
        getThumbNail(lesson.thumbnail, constraints1),
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            lesson.word,
            style: Theme.of(context).textTheme.bodyLarge,
            // style: ,
          ),
        ),
        Container(
          height: size.height/12,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
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
              return Center(child: Text(value),);
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
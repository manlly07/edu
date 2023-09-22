import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:edu/Toast.dart';
import 'package:edu/constants/color.dart';
import 'package:edu/models/Quiz.dart';
import 'package:edu/models/lesson.dart';
import 'package:edu/stt.dart';
import 'package:edu/tts.dart';
import 'package:edu/widgets/lessons/lesson_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

class QuizWidget extends LessonWidget {
  final Quiz quiz;

  const QuizWidget({Key? key, required ValueNotifier<bool> isComplete, required this.quiz}) :
        super(key: key, isComplete: isComplete);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  // List<MathQuestion> questions = generateRandomMathQuestions(10);
  // int currentIndex = 0;
  Quiz get question => widget.quiz;
  bool _isListening = false;
  String text = '';

  late final List<String> op;

  @override
  void initState() {
    super.initState();
    op = List<String>.from(question.options);
    op.shuffle();
    QuizAttempt.addNewQuiz();
    STT.addListener(statusListener);
  }

  @override
  void dispose() {
    STT.removeListener(statusListener);
    super.dispose();
  }

  void statusListener(String status) {
    if(status == "done") {
      bool result;
      if (text.contains(question.answer.toLowerCase())) {
        showToastMessage("Chính xãc", true);
        result = true;
      }else {
        showToastMessage("Chưa chính xãc", false);
        result = false;
      }
      showResult(result);
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    text = result.recognizedWords;

  }
  void _listen() async {
    if (!_isListening) {
      if (STT.isAvailable) {
        setState(() => _isListening = true,);
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
      _isListening = false;
      STT.speech.stop();
    }
  }
  ValueNotifier<bool> click = ValueNotifier(false);

  void handleChoose(choice) {
    click.value = true;
    Timer(const Duration(milliseconds: 500), () async {
      // Thực hiện các hành động sau khi độ trễ
      bool result;
      if(choice == question.answer) {
        showToastMessage("Chính xãc", true);
        result = true;
      } else {
        showToastMessage("Chưa chính xãc", false);
        result = false;
      }
      click.value = false;
      showResult(result);
    });
  }

  List<Widget> _answerList() {
    return op.map(
          (e) => _answerButton(e),
    ).toList();
  }

  Widget _answerButton(e) {
    return (
        Wrap(
          spacing: 1,
          children: [
            Center(
              child: ValueListenableBuilder<bool>(
                valueListenable: click,
                builder: (BuildContext context, bool value, Widget? child) {
                  bool isSelected = e == question.answer;
                  Color color = value ? isSelected ? Colors.greenAccent : Colors.redAccent : Colors.white;
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: color,
                        width: 3.0,
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: color, // Màu nền của nút
                      ),// Màu nền của nút
                      onPressed: () {
                        handleChoose(e);
                      },
                      child: child,
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 24),
                    child: Center(
                      child: Text(
                        e.toString(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }

  Widget _answerSpeech() {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              _listen();
            },
            child: AvatarGlow(
              endRadius: 75.0,
              animate: true,
              glowColor: kPrimaryLight,
              repeat: _isListening,
              repeatPauseDuration: const Duration(milliseconds: 100),
              showTwoGlows: true,
              child: const CircleAvatar(
                backgroundColor: kPrimaryLight,
                radius: 35,
                child: Icon(Icons.mic, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.greenAccent),
                ),
                child: Ink(
                  height: constraints.maxHeight / 6,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.greenAccent),
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        TTS.speak(question.question);
                      },
                      child: const Icon(Icons.mic),
                    ),
                  ),
                ),
              ),
              ..._buildQuiz()
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildQuiz() {
    if (question.quizType == 'mcq') {
      return _answerList();
    }
    if (question.quizType == 'speech') {
      return [_answerSpeech()];
    }
    throw Exception("Unknown Quiz Type");
  }

  Future<void> showResult(bool result) async {
    if(result) QuizAttempt.correctAnswer();
    await showDialog(context: context, builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.black.withOpacity(0.5),
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Center(
            child: Lottie.network(result ?
                'https://lottie.host/20afce16-7995-4331-9d11-af6890098b3e/XFSDj10PkH.json' :
                'https://lottie.host/fefaabe8-c28f-4641-9fda-c1c3f949d80c/BgK0YiJYvm.json',
                animate: true,
                repeat: false),
          ),
        ),
      );
    });
    widget.setCompleted();
    return ;
  }

}

class QuizAttempWidget extends LessonWidget {
  final QuizAttempt attempt;

  const QuizAttempWidget({super.key, required this.attempt, required super.isComplete});

  @override
  State<QuizAttempWidget> createState() => _QuizAttempState();
}

class QuizAttempt extends Lesson {
  static int _score = 0;
  static int _numOfQuiz = 0;
  QuizAttempt() : super(type: LessonType.QUIZ_ATTEMPT, attribute: {}) {
    _score = 0;
    _numOfQuiz = 0;
  }

  static int get numOfQuiz => _numOfQuiz;
  static int get score => _score;
  static void addNewQuiz() {
    _numOfQuiz++;
  }

  static void correctAnswer() {
    _score++;
  }
}

class _QuizAttempState extends State<QuizAttempWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: ElevatedButton(onPressed: () => widget.setCompleted(),
            child: const Text("Chuẩn bị!")
        ),
      ),
    );
  }
}


class QuizResultWidget extends LessonWidget {
  final QuizResult result;

  const QuizResultWidget({super.key, required this.result, required super.isComplete});

  @override
  State<QuizResultWidget> createState() => _QuizResultState();
}

class QuizResult extends Lesson {
  QuizResult() : super(type: LessonType.QUIZ_RESULT, attribute: {});
}

class _QuizResultState extends State<QuizResultWidget> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Kết quả",
              style: Theme.of(context).textTheme.bodyLarge!),
            Text("\n Bạn đúng được ${QuizAttempt.score}/${QuizAttempt.numOfQuiz}",
              style: Theme.of(context).textTheme.bodyLarge!),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.setCompleted();
  }
}


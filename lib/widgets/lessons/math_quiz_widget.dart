import 'dart:async';

import 'package:edu/Toast.dart';
import 'package:edu/models/math.dart';
import 'package:edu/widgets/lessons/lesson_widget.dart';
import 'package:edu/widgets/lessons/quiz_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class MathQuizWidget extends LessonWidget {
  final MathQuestion mathQuestion;

  const MathQuizWidget({super.key, required this.mathQuestion, required super.isComplete});

  @override
  _MathQuizWidgetState createState() => _MathQuizWidgetState();
}

class _MathQuizWidgetState extends State<MathQuizWidget> {


  MathQuestion get question => widget.mathQuestion;
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

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 6,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.greenAccent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(question.question),
                    ],
                  ),
                ),
              ),
              ..._answerList()
            ],
          ),
        );
      },
    );
  }

  List<Widget> _answerList() {
    return question.options.map(
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

  @override
  void initState() {
    super.initState();
    QuizAttempt.addNewQuiz();
  }
}

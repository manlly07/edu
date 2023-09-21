import 'dart:async';

import 'package:edu/constants/icons.dart';
import 'package:edu/math.dart';
import 'package:edu/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';


class MathScreen extends StatefulWidget {
  const MathScreen ({Key? key}) : super(key: key);

  @override
  _MathScreen createState() => _MathScreen();
}

class _MathScreen extends State<MathScreen> {
  List<MathQuestion> questions = generateRandomMathQuestions(10);
  int currentQuestionIndex = 0;
  bool click = false;
  String selectedAnswer = "";
  int score = 0;
  void handleChoose(choice) {
    setState(() {
      click = true;
    });
    Timer(Duration(milliseconds: 500), () {
      // Thực hiện các hành động sau khi độ trễ
      setState(() {
        if(currentQuestionIndex < 9) {
          if(choice == questions[currentQuestionIndex].answer) {
            score++;
          }

          currentQuestionIndex++;
          click = false;
        }else {
          showResult();
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          "Toán",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: CustomIconButton(
                          child: const Icon(Icons.arrow_back),
                          height: 35,
                          width: 35,
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 12),
                        height: MediaQuery.of(context).size.height,
                        child: Lottie.asset(
                          icBgMath2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15
                          ),
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 100,
                              padding: EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(width: 1, color: Colors.greenAccent),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // InkWell(
                                  //   child: Icon(Icons.mic),
                                  // ),
                                  Text(questions[currentQuestionIndex].question),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          _answerList()
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _answerList() {
    return Column(
      children: questions[currentQuestionIndex]
          .options
          .map(
            (e) => _answerButton(e),
      )
          .toList(),
    );
  }
  Future<void> showResult() async {
    return await showDialog(context: context, builder: (context) =>
      AlertDialog(
        title: Center(child: Text("Kết quả"),),
        content: Center(
          heightFactor: double.minPositive,
          child: Text("Bé làm được đúng ${score}/10"),
        ),
        actions: [
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: const Text("Làm lại")),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pop(true);
          }, child: const Text("Tiếp tục"))
        ],
      ));
  }
  Widget _answerButton(e) {
    bool isSelected = e == questions[currentQuestionIndex].answer;
    return (
      Wrap(
        spacing: 1,
        children: [
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: !click ? Colors.white : isSelected ? Colors.greenAccent : Colors.redAccent,
                  width: 3.0,
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: !click ? Colors.white : isSelected ? Colors.greenAccent : Colors.redAccent, // Màu nền của nút
                ),// Màu nền của nút
                onPressed: () {
                  handleChoose(e);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 24),
                    child: Center(
                      child: Text(
                        e.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      )
    );
  }
}

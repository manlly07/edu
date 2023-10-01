import 'dart:math';

import 'package:edu/models/Quiz.dart';
import 'package:edu/models/lesson.dart';

class VietQuestion extends Lesson {
  VietQuestion({required String question, required String answer, required List<String> options, required String type}) :
        super(type: LessonType.VIET_QUIZ, attribute: {
        "question":question,
        "answer":answer,
        "options":options,
        "type":type
      });

  String get question => getAttribute("question");
  String get answer => getAttribute("answer");
  List<String> get options => getAttribute("options");
}

Random random = Random(DateTime.timestamp().microsecond);
List<int> array = [];
List<VietQuestion> generateRandomVietQuestions(int i, int min, int max) {
  return List<VietQuestion>.generate(i, (index) {
    return generateRandomVietQuestion(min, max);
  });
}

VietQuestion generateRandomVietQuestion(int min, int max) {
  VietQuestion questions;
  int _length = listquiz.length;
  int randomNumber = min + random.nextInt(max - min + 1);
  while(array.contains(randomNumber)) {
    if(randomNumber >= min && randomNumber <= max){
      randomNumber = min + random.nextInt(max - min + 1);
    }
  }
  array.add(randomNumber);

  VietQuestion question = VietQuestion(
      question: listquiz[randomNumber].getAttribute("question"),
      answer: listquiz[randomNumber].getAttribute("answer"),
      options: listquiz[randomNumber].getAttribute("options"),
      type: listquiz[randomNumber].getAttribute("type")
  );
  questions = question;
  return questions;
}
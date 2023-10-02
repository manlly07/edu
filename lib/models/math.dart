import 'dart:math';

import 'package:edu/models/lesson.dart';

class MathQuestion extends Lesson {
  MathQuestion({required String question, required String answer, required List<String> options}) :
      super(type: LessonType.MATH_QUIZ, attribute: {
        "question":question,
        "answer":answer,
        "options":options
      });

  String get question => getAttribute("question");
  String get answer => getAttribute("answer");
  List<String> get options => getAttribute("options");
}

Random random = Random(DateTime.timestamp().microsecond);

List<MathQuestion> generateRandomMathQuestions(int i) {
  return List<MathQuestion>.generate(i, (index) {
    return generateRandomMathQuestion();
  });
}

List<MathQuestion> generateRandomCompareQuestions(int i) {
  return List<MathQuestion>.generate(i, (index) {
    return generateRandomCompareQuestion();
  });
}

MathQuestion generateRandomMathQuestion() {
  MathQuestion questions;

  int number1 = random.nextInt(10) + 1;
  int number2 = random.nextInt(10) + 1;
  bool isAddition = random.nextBool();
  String operator = isAddition ? '+' : '-';
  int result = isAddition ? number1 + number2 : number1 - number2;

  if(result > 10) {
    number1 = min(number1, number2);
    number2 = random.nextInt(10-number1) + 1;
    result = number1 + number2;
  }else if (result < 0) {
    int temp = number1;
    number1 = number2;
    number2 = temp;
    result = number1 - number2;
  }
  // Tạo một danh sách chứa câu trả lời và đáp án nhiễu
  List<String> options = [];
  options.add(result.toString());

  // Thêm 3 đáp án nhiễu vào danh sách
  while (options.length < 4) {
    int randomOption = random.nextInt(10) + 1;
    if (!options.contains(randomOption.toString())) {
      options.add(randomOption.toString());
    }
  }

  // Xáo trộn thứ tự các đáp án trong danh sách
  options.shuffle();

  // Tạo đối tượng MathQuestion và thêm vào mảng
  MathQuestion question = MathQuestion(
    question: '$number1 $operator $number2 = ?',
    answer: result.toString(),
    options: options,
  );
  questions = question;

  return questions;
}

MathQuestion generateRandomCompareQuestion() {
  int number1 = random.nextInt(10) + 1;
  int number2 = random.nextInt(10) + 1;
  String operator = '=';
  if (number1 > number2) {
    operator = '>';
  }
  if (number1 < number2) {
    operator = '<';
  }
  List<String> options = ['>', '<', '='];
  options.shuffle();
  MathQuestion question = MathQuestion(
    question: '$number1 ? $number2',
    answer: operator.toString(),
    options: options,
  );
  return question;
}
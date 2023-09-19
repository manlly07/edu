import 'dart:math';

class MathQuestion {
  String question;
  String answer;
  List<String> options;

  MathQuestion({required this.question, required this.answer, required this.options});
}

List<MathQuestion> generateRandomMathQuestions(int numQuestions) {
  List<MathQuestion> questions = [];
  Random random = Random();

  for (int i = 0; i < numQuestions; i++) {
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
    questions.add(question);
  }

  return questions;
}
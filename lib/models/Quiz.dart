import 'package:edu/models/category.dart';
import 'package:edu/models/course.dart';
import 'package:edu/models/lesson.dart';
import 'package:edu/widgets/lessons/quiz_widget.dart';

class Quiz extends Lesson {
  Quiz({
    required String question,
    required String type,
    required String answer,
    required List<String> options,
  }): super(
      type: LessonType.QUIZ,
    attribute: {
        "question" : question,
        "type" : type,
        "options" : options,
        "answer" : answer
    }
  );

  String get question => getAttribute("question");
  String get quizType => getAttribute("type");
  String get answer => getAttribute("answer");
  List<String> get options => getAttribute("options");
}

List<Lesson> listquiz = [
  QuizAttempt(),
  Quiz(
    question: 'Hãy tìm chữ a trong các đáp án dưới đây',
    type: 'mcq',
    options: ['a', 'b', 'c', 'd'],
    answer: 'b',
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ a ca sắc cá',
      type: 'speech',
      options: [''],
      answer: 'cờ a ca sắc cá'
  ),
  Quiz(
    question: 'Hãy tìm chữ a trong các đáp án dưới đây',
    type: 'mcq',
    options: ['a', 'b', 'c', 'd'],
    answer: 'b',
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ a ca sắc cá',
      type: 'speech',
      options: [''],
      answer: 'cờ a ca sắc cá'
  ),
  Quiz(
    question: 'Hãy tìm chữ a trong các đáp án dưới đây',
    type: 'mcq',
    options: ['a', 'b', 'c', 'd'],
    answer: 'b',
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ a ca sắc cá',
      type: 'speech',
      options: [''],
      answer: 'cờ a ca sắc cá'
  ),
  Quiz(
    question: 'Hãy tìm chữ a trong các đáp án dưới đây',
    type: 'mcq',
    options: ['a', 'b', 'c', 'd'],
    answer: 'b',
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ a ca sắc cá',
      type: 'speech',
      options: [''],
      answer: 'cờ a ca sắc cá'
  ),
  Quiz(
    question: 'Hãy tìm chữ a trong các đáp án dưới đây',
    type: 'mcq',
    options: ['a', 'b', 'c', 'd'],
    answer: 'b',
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ a ca sắc cá',
      type: 'speech',
      options: [''],
      answer: 'cờ a ca sắc cá'
  ),
  QuizResult()
];
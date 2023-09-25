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
      type: LessonType.VIET_QUIZ,
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
    answer: 'a',
  ),
  Quiz(
    question: 'Hãy tìm chữ ă trong các đáp án dưới đây',
    type: 'mcq',
    options: ['ă', 'a', 'â', 'd'],
    answer: 'ă',
  ),
  Quiz(
    question: 'Hãy tìm chữ â trong các đáp án dưới đây',
    type: 'mcq',
    options: ['ă', 'a', 'â', 'd'],
    answer: 'â',
  ),
  Quiz(
    question: 'Tìm chữ "b" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['a', 'b', 'c', 'd'],
    answer: 'b',
  ),
  Quiz(
    question: 'Tìm chữ "c" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['a', 'b', 'c', 'd'],
    answer: 'c',
  ),
  Quiz(
    question: 'Tìm chữ "d" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['a', 'd', 'e', 'f'],
    answer: 'd',
  ),
  Quiz(
    question: 'Tìm chữ "đ" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['đ', 'd', 'e', 'f'],
    answer: 'đ',
  ),
  Quiz(
    question: 'Tìm chữ "e" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['e', 'g', 'h', 'j'],
    answer: 'e',
  ),
  Quiz(
    question: 'Tìm chữ "ê" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['e', 'ê', 'h', 'j'],
    answer: 'ê',
  ),
  Quiz(
    question: 'Tìm chữ "g" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['g', 'n', 'p', 'q'],
    answer: 'g',
  ),
  Quiz(
    question: 'Tìm chữ "h" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['h', 'r', 's', 't'],
    answer: 'h',
  ),
  Quiz(
    question: 'Tìm chữ "i" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['i', 'u', 'v', 'x'],
    answer: 'i',
  ),
  Quiz(
    question: 'Tìm chữ "k" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['k', 'b', 'c', 'd'],
    answer: 'k',
  ),
  Quiz(
    question: 'Tìm chữ "l" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['l', 'e', 'g', 'h'],
    answer: 'l',
  ),
  Quiz(
    question: 'Tìm chữ "m" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['m', 'f', 'k', 'l'],
    answer: 'm',
  ),
  Quiz(
    question: 'Tìm chữ "n" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['n', 'g', 'n', 'p'],
    answer: 'n',
  ),
  Quiz(
    question: 'Tìm chữ "o" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['o', 'h', 'i', 'j'],
    answer: 'o',
  ),
  Quiz(
    question: 'Tìm chữ "ô" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['o', 'ô', 'ơ', 'p'],
    answer: 'ô',
  ),
  Quiz(
    question: 'Tìm chữ "ơ" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['o', 'ô', 'ơ', 'p'],
    answer: 'ơ',
  ),
  Quiz(
    question: 'Tìm chữ "p" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['p', 'r', 's', 't'],
    answer: 'p',
  ),
  Quiz(
    question: 'Tìm chữ "q" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['q', 'u', 'v', 'x'],
    answer: 'q',
  ),
  Quiz(
    question: 'Tìm chữ "r" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['r', 'y', 'z', 'w'],
    answer: 'r',
  ),
  Quiz(
    question: 'Tìm chữ "s" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['s', 'b', 'c', 'd'],
    answer: 's',
  ),
  Quiz(
    question: 'Tìm chữ "t" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['t', 'e', 'g', 'h'],
    answer: 't',
  ),
  Quiz(
    question: 'Tìm chữ "u" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['u', 'f', 'k', 'l'],
    answer: 'u',
  ),
  Quiz(
    question: 'Tìm chữ "ư" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['u', 'ư', 'k', 'l'],
    answer: 'ư',
  ),
  Quiz(
    question: 'Tìm chữ "v" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['v', 'g', 'n', 'p'],
    answer: 'v',
  ),
  Quiz(
    question: 'Tìm chữ "x" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['x', 'h', 'i', 'j'],
    answer: 'x',
  ),
  Quiz(
    question: 'Tìm chữ "y" trong bảng chữ cái tiếng Việt?',
    type: 'mcq',
    options: ['y', 'r', 's', 't'],
    answer: 'y',
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ a ca sắc cá',
      type: 'speech',
      options: [''],
      answer: 'cờ a ca sắc cá'
  ),
  QuizResult()
];
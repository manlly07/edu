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
  // Quiz(
  //     question: 'Cùng mình đánh vần nhé cờ a ca sắc cá',
  //     type: 'speech',
  //     options: [''],
  //     answer: 'cờ a ca sắc cá'
  // ),
  Quiz(
      question: 'Cùng mình đánh vần nhé bờ ô bô sắc bố',
      type: 'speech',
      options: ['assets/icons/bo.png'],
      answer: 'bờ ô bô sắc bố'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé mờ e me nặng mẹ',
      type: 'speech',
      options: ['assets/icons/me.png'],
      answer: 'mờ e me nặng mẹ'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé ô ngờ ông',
      type: 'speech',
      options: ['assets/icons/ong.png'],
      answer: 'ô ngờ ông'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé bờ a ba huyền bà',
      type: 'speech',
      options: ['assets/icons/ba.png'],
      answer: 'bờ a ba huyền bà'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé a nhờ anh',
      type: 'speech',
      options: ['assets/icons/anh.png'],
      answer: 'a nhờ anh'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé chờ i chi nặng chị',
      type: 'speech',
      options: ['assets/icons/chi.png'],
      answer: 'chờ i chi nặng chị'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé ô cờ ô cô',
      type: 'speech',
      options: ['assets/icons/co.png'],
      answer: 'ô cờ ô cô'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé dờ i di huyền dì',
      type: 'speech',
      options: ['assets/icons/di.png'],
      answer: 'd i j huyền dì'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé chờ u chu sắc chú',
      type: 'speech',
      options: ['assets/icons/chu.png'],
      answer: 'chờ u chu sắc chú'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ âu câu nặng cậu',
      type: 'speech',
      options: ['assets/icons/bac.png'],
      answer: 'cờ âu câu nặng cậu'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé lờ a la sắc lá',
      type: 'speech',
      options: ['assets/icons/la.png'],
      answer: 'lờ a la sắc lá'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé lờ ác lác nặng lạc',
      type: 'speech',
      options: ['assets/icons/lac.png'],
      answer: 'lờ ác lác nặng lạc'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé hờ oa hoa',
      type: 'speech',
      options: ['assets/icons/hoa.png'],
      answer: 'hờ oa hoa'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé chờ e che huyền chè',
      type: 'speech',
      options: ['assets/icons/che.png'],
      answer: 'chờ e che huyền chè'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ ây cây',
      type: 'speech',
      options: ['assets/icons/cay.png'],
      answer: 'cờ ây cây'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé nờ âm nâm sắc nấm',
      type: 'speech',
      options: ['assets/icons/nam.png'],
      answer: 'nờ âm nâm sắc nấm'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé cờ o co hỏi cỏ',
      type: 'speech',
      options: ['assets/icons/cor.png'],
      answer: 'c o co hỏi cỏ'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé mờ ăng măng',
      type: 'speech',
      options: ['assets/icons/mang.png'],
      answer: 'mờ ăng măng'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé lờ ua lua sắc lúa',
      type: 'speech',
      options: ['assets/icons/lua.png'],
      answer: 'lờ ua lua sắc lúa'
  ),
  Quiz(
      question: 'Cùng mình đánh vần nhé đờ ao đao huyền đào',
      type: 'speech',
      options: ['assets/icons/dao.png'],
      answer: 'đờ ao đao huyền đào'
  ),
  QuizResult()
];
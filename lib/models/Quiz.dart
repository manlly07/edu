class Quiz {
  String question;
  String type;
  String answer;
  List<String> options = ['', '', '', ''];

  Quiz({
    required this.question,
    required this.type,
    required this.options,
    required this.answer,
  });
}

List<Quiz> listquiz = [
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
];
import 'package:edu/models/Quiz.dart';
import 'package:edu/models/category.dart';
import 'package:edu/models/math.dart';
import 'package:edu/widgets/lessons/quiz_widget.dart';
import 'package:edu/widgets/lessons/speak_lesson_widget.dart';

import 'lesson.dart';

enum Class {
  MOT,HAI,BA,BON,NAM;

  @override
  String toString() {
    switch(this) {
      case MOT:
        return "Lớp 1";
      case HAI:
        return "Lớp 2";
      case BA:
        return "Lớp 3";
      case BON:
        return "Lớp 4";
      case NAM:
        return "Lớp 5";
      default:
        return "";
    }
  }
}

class Course {
  Class lop;
  Category category;
  String name;
  String thumbnail;
  int categoryId;
  List<Lesson> lessons;
  Course({
    required this.lop,
    required this.category,
    required this.name,
    required this.thumbnail,
    required this.categoryId,
    required this.lessons,
  });

  static final List<Course> courses = [
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'A',
        thumbnail: "assets/icons/a/a.riv",
        categoryId : 1,
        lessons: [
          SpeakingLesson(thumbnail: "assets/icons/a/a.riv", word: "Con cá"),
          SpeakingLesson(thumbnail: "assets/icons/a/a.riv", word: "Con cá"),
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'A',
        thumbnail: "assets/icons/a/a.riv",
        categoryId : 1,
        lessons: [
          SpeakingLesson(thumbnail: "assets/icons/a/a.riv", word: "Con cá"),
          SpeakingLesson(thumbnail: "assets/icons/a/a.riv", word: "Con cá"),
        ]
    ),
    // Course(
    //     lop: Class.MOT,
    //     category: Categories.TAPVIET.category,
    //     name: 'A',
    //     thumbnail: "assets/icons/a/a.riv",
    //     // thumbnail: "assets/icons/a.png",
    //     categoryId: 2,
    //     lessons: [
    //       SpeakingLesson(thumbnail: "assets/icons/a/a.riv", word: "Con cá"),
    //       SpeakingLesson(thumbnail: "assets/icons/a/a.riv", word: "Con cá"),
    //     ]
    // ),
    Course(
        lop: Class.MOT,
        category: Categories.TAPVIET.category,
        name: "Kiểm tra",
        thumbnail: "assets/icons/a/a.riv",
        categoryId: 2,
        lessons: listquiz
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TOAN.category,
        name: "Kiểm tra",
        thumbnail: "assets/icons/a/a.riv",
        categoryId: 4,
        lessons: [
          QuizAttempt(),
          ...generateRandomMathQuestions(10),
          QuizResult()
        ]
    )
  ];

  static List<Course> getCourseOf(Category category, Class clss) {
    List<Course> coursesRes = List.of(courses);
    coursesRes.retainWhere((element) => element.category == category && element.lop == clss);
    return coursesRes;
  }
}
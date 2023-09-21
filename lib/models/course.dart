import 'package:edu/models/category.dart';
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
        thumbnail: "assets/icons/a.riv",
        // thumbnail: "assets/icons/a.png",
        categoryId : 1,
        lessons: [
          SpeakingLesson(thumbnail: "assets/icons/a.riv", word: "Con cá"),
          SpeakingLesson(thumbnail: "assets/icons/a.png", word: "Con cá"),
          SpeakingLesson(thumbnail: "assets/icons/a.riv", word: "Con cá"),
          SpeakingLesson(thumbnail: "assets/icons/a.png", word: "Con cá"),
        ]
    ),
    Course(
        lop: Class.HAI,
        category: Categories.TAPVIET.category,
        name: 'A',
        thumbnail: "assets/icons/a.riv",
        // thumbnail: "assets/icons/a.png",
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: "assets/icons/a.riv", word: "Con cá"),
          SpeakingLesson(thumbnail: "assets/icons/a.png", word: "Con cá"),
          SpeakingLesson(thumbnail: "assets/icons/a.riv", word: "Con cá"),
          SpeakingLesson(thumbnail: "assets/icons/a.png", word: "Con cá"),
        ]
    ),
    // Course(
    //   name: 'Ă',
    //   thumbnail: "assets/icons/aw.riv",
    //   // thumbnail: "assets/icons/aw.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'Â',
    //   thumbnail: "assets/icons/aa.riv",
    //   // thumbnail: "assets/icons/aa.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'B',
    //   // thumbnail: "assets/icons/B.riv",
    //   thumbnail: "assets/icons/b.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'C',
    //   // thumbnail: "assets/icons/c.riv",
    //   thumbnail: "assets/icons/c.json",
    //   // thumbnail: "assets/icons/c.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'D',
    //   thumbnail: "assets/icons/d.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'Đ',
    //   thumbnail: "assets/icons/dd.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'E',
    //   thumbnail: "assets/icons/e.json",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'Ê',
    //   thumbnail: "assets/icons/ee.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'G',
    //   thumbnail: "assets/icons/g.json",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'H',
    //   thumbnail: "assets/icons/h.json",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'I',
    //   thumbnail: "assets/icons/i.json",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'K',
    //   thumbnail: "assets/icons/k.json",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'L',
    //   thumbnail: "assets/icons/l.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'M',
    //   thumbnail: "assets/icons/m.json",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'N',
    //   thumbnail: "assets/icons/n.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'O',
    //   thumbnail: "assets/icons/o.json",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'Ô',
    //   thumbnail: "assets/icons/oo.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'Ơ',
    //   thumbnail: "assets/icons/ow.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'P',
    //   thumbnail: "assets/icons/p.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'Q',
    //   thumbnail: "assets/icons/q.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'R',
    //   thumbnail: "assets/icons/r.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'S',
    //   thumbnail: "assets/icons/s.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'T',
    //   thumbnail: "assets/icons/t.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'U',
    //   thumbnail: "assets/icons/u.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'Ư',
    //   thumbnail: "assets/icons/uw.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'V',
    //   thumbnail: "assets/icons/v.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'x',
    //   thumbnail: "assets/icons/x.png",
    //   categoryId: 1,
    // ),
    // Course(
    //   name: 'Y',
    //   thumbnail: "assets/icons/y.png",
    //   categoryId: 1,
    // ),
  ];

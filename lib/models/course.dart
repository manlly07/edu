class Course {
  String name;
  String thumbnail;
  int categoryId;
  List<Lesson> lessons;
  Course({
    required this.name,
    required this.thumbnail,
    required this.categoryId,
    required this.lessons,
  });
}

class Lesson {
  String thumbnail;
  String word;
  Lesson({
    required this.thumbnail,
    required this.word
  });
}

List<Course> courses = [
  Course(
    name: 'A',
    thumbnail: "assets/icons/aw.riv",
    // thumbnail: "assets/icons/a.png",
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: "assets/icons/a.riv", word: "Con cá"),
      Lesson(thumbnail: "assets/icons/a.png", word: "Con cá"),
      Lesson(thumbnail: "assets/icons/a.riv", word: "Con cá"),
      Lesson(thumbnail: "assets/icons/a.png", word: "Con cá"),
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

// class Course {
//   String name;
//   double completedPercentage;
//   String author;
//   String thumbnail;
//   int categoryId;
//   Course({
//     required this.author,
//     required this.completedPercentage,
//     required this.name,
//     required this.thumbnail,
//     required this.categoryId,
//   });
// }
//
// List<Course> courses = [
//   Course(
//     author: "DevWheels",
//     completedPercentage: .75,
//     name: "Flutter Novice to Ninja",
//     thumbnail: "assets/icons/flutter.jpg",
//     categoryId: 1,
//   ),
//   Course(
//     author: "DevWheels",
//     completedPercentage: .60,
//     name: "React Novice to Ninja",
//     thumbnail: "assets/icons/react.jpg",
//     categoryId: 1,
//   ),
//   Course(
//     author: "DevWheels",
//     completedPercentage: .75,
//     name: "Node - The complete guide",
//     thumbnail: "assets/icons/node.png",
//     categoryId: 1,
//   ),
//   Course(
//     author: "DevWheels",
//     completedPercentage: .75,
//     name: "Flutter Novice to Ninja",
//     thumbnail: "assets/icons/flutter.jpg",
//     categoryId: 1,
//   ),
//   Course(
//     author: "DevWheels",
//     completedPercentage: .60,
//     name: "React Novice to Ninja",
//     thumbnail: "assets/icons/react.jpg",
//     categoryId: 1,
//   ),
//   Course(
//     author: "DevWheels",
//     completedPercentage: .75,
//     name: "Node - The complete guide",
//     thumbnail: "assets/icons/node.png",
//     categoryId: 1,
//   ),
// ];

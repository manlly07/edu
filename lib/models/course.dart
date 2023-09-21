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

const path = '/assets/icons'

List<Course> courses = [
  Course(
    name: 'A',
    thumbnail: '$path/a/a.riv',
    // thumbnail: '$path/a.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/a/a.riv', word: 'Con cá'),
      Lesson(thumbnail: '$path/a/ao.json', word: 'Cái áo'),
      Lesson(thumbnail: '$path/a/vang.json', word: 'Màu vàng'),
      Lesson(thumbnail: '$path/a/chai.json', word: 'Cái chai'),
    ]
  ),
  Course(
    name: 'Ă',
    thumbnail: '$path/aw/aw.riv',
    // thumbnail: '$path/aw.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/aw/aw.riv', word: 'Mặt Trời'),
      Lesson(thumbnail: '$path/aw/tran.png', word: 'Con trăn'),
      Lesson(thumbnail: '$path/aw/bang.riv', word: 'Tảng băng'),
      Lesson(thumbnail: '$path/aw/mang.png', word: 'Cây măng'),
    ]
  ),
  Course(
    name: 'Â',
    thumbnail: '$path/aa/aa.riv',
    // thumbnail: '$path/aa.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/aa/aa.riv', word: 'Chiếc cân'),
      Lesson(thumbnail: '$path/aa/chan.riv', word: 'Cái chân'),
      Lesson(thumbnail: '$path/aa/man.png', word: 'Quả mận'),
      Lesson(thumbnail: '$path/aa/santruong.riv', word: 'Sân trường'),
    ]
  ),
  Course(
    name: 'B',
    // thumbnail: '$path/B.riv',
    thumbnail: '$path/b/b.riv',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/b/banoi.json', word: 'Bà nội'),
      Lesson(thumbnail: '$path/b/b.riv', word: 'Con bò'),
      Lesson(thumbnail: '$path/aw/bang.riv', word: 'Tảng băng'),
      Lesson(thumbnail: '$path/b/bontam.json', word: 'Bồn tắm'),
    ]
  ),
  Course(
    name: 'C',
    thumbnail: '$path/c/c.json',
    // thumbnail: '$path/c.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/c/c.json', word: 'Con cua'),
      Lesson(thumbnail: '$path/c/cay.json', word: 'Cái cây'),
      Lesson(thumbnail: '$path/c/chim', word: 'Con chim'),
      Lesson(thumbnail: '$path/c/chanh.json', word: 'Quả chanh'),
    ]
  ),
  Course(
    name: 'D',
    thumbnail: '$path/d/d.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/d/d.png', word: 'Con dê'),
      Lesson(thumbnail: '$path/d/day.png', word: 'Cuộn dây'),
      Lesson(thumbnail: '$path/d/doanhtrai.png', word: 'Doanh trai'),
      Lesson(thumbnail: '$path/d/dinhdoclap.jpg', word: 'Dinh Độc Lập'),
    ]
  ),
  Course(
    name: 'Đ',
    thumbnail: '$path/dd/dd.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/dd/dd.png', word: 'Con đường'),
      Lesson(thumbnail: '$path/dd/vienda.json', word: 'Viên đá'),
      Lesson(thumbnail: '$path/dd/dinhvit.png', word: 'Chiếc đinh'),
      Lesson(thumbnail: '$path/dd/caudo.json', word: 'Câu đố'),
    ]
  ),
  Course(
    name: 'E',
    thumbnail: '$path/e/e.json',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/e/e.json', word: 'Xe hơi'),
      Lesson(thumbnail: '$path/e/tre.json', word: 'Cây tre'),
      Lesson(thumbnail: '$path/e/kem.json', word: 'Cây kem'),
      Lesson(thumbnail: '$path/e/nghe.json', word: 'Nghe nhạc'),
    ]
  ),
  Course(
    name: 'Ê',
    thumbnail: '$path/ee/ee.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/ee/ee.png', word: 'Cây nến'),
      Lesson(thumbnail: '$path/d/d.png', word: 'Con dê'),
      Lesson(thumbnail: '$path/ee/demen.jpg', word: 'Dế mèn'),
      Lesson(thumbnail: '$path/ee/khe.png', word: 'Quả khế'),
    ]
  ),
  Course(
    name: 'G',
    thumbnail: '$path/g/g.json', 
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/g/g.json', word: 'Con gà'),
      Lesson(thumbnail: '$path/g/gung.png', word: 'Củ gừng'),
      Lesson(thumbnail: '$path/g/giuong.json', word: 'Chiếc giường'),
      Lesson(thumbnail: '$path/g/ganket.json', word: 'Gắn kết'),
    ]
  ),
  Course(
    name: 'H',
    thumbnail: '$path/h/h.json',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/h/h.json', word: 'Bông hoa'),
      Lesson(thumbnail: '$path/h/he.json', word: 'Mùa hè'),
      Lesson(thumbnail: '$path/h/hat.json', word: 'Ca hát'),
      Lesson(thumbnail: '$path/h/anhhung.json', word: 'Anh hùng'),
    ]
  ),
  Course(
    name: 'I',
    thumbnail: '$path/i/i.json',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/i/i.json', word: 'Củ bí'),
      Lesson(thumbnail: '$path/c/chim', word: 'Con chim'),
      Lesson(thumbnail: '$path/i/phim.json', word: 'Phim ảnh'),
      Lesson(thumbnail: '$path/i/ghi.json', word: 'Ghi chép'),
    ]
  ),
  Course(
    name: 'K',
    thumbnail: '$path/k/k.json',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/k/k.json', word: 'Chiếc kính'),
      Lesson(thumbnail: '$path/e/kem.json', word: 'Cây kem'),
      Lesson(thumbnail: '$path/k/kien.json', word: 'Con kiến'),
      Lesson(thumbnail: '$path/k/kiem.json', word: 'Thanh kiếm'),
    ]
  ),
  Course(
    name: 'L',
    thumbnail: '$path/l/l.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/l/l.png', word: 'Con lạc đà'),
      Lesson(thumbnail: '$path/l/denlong.json', word: 'Đèn lồng'),
      Lesson(thumbnail: '$path/l/conluoi.json', word: 'Con lười'),
      Lesson(thumbnail: '$path/l/losuoi.png', word: 'Lò sưởi'),
    ]
  ),
  Course(
    name: 'M',
    thumbnail: '$path/m/me.json',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/m/me.json', word: 'Mẹ'),
      Lesson(thumbnail: '$path/m/m.json', word: 'Con mèo'),
      Lesson(thumbnail: '$path/aw/mang.png', word: 'Cây măng'),
      Lesson(thumbnail: '$path/m/mua.json', word: 'Cơn mưa'),
    ]
  ),
  Course(
    name: 'N',
    thumbnail: '$path/n/n.png',
    categoryId: 1,
    lessons: [
      Lesson(thumbnail: '$path/n/n.png', word: 'Chiếc nơ'),
      Lesson(thumbnail: '$path/n/nieucom.png', word: 'Niêu cơm'),
      Lesson(thumbnail: '$path/n/bepnuong', word: 'Bếp nướng'),
      Lesson(thumbnail: '$path/n/cayneu.jpg', word: 'Cây nêu'),
    ]
  ),
  // Course(
  //   name: 'O',
  //   thumbnail: '$path/o.json',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'Ô',
  //   thumbnail: '$path/oo.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'Ơ',
  //   thumbnail: '$path/ow.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'P',
  //   thumbnail: '$path/p.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'Q',
  //   thumbnail: '$path/q.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'R',
  //   thumbnail: '$path/r.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'S',
  //   thumbnail: '$path/s.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'T',
  //   thumbnail: '$path/t.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'U',
  //   thumbnail: '$path/u.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'Ư',
  //   thumbnail: '$path/uw.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'V',
  //   thumbnail: '$path/v.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'x',
  //   thumbnail: '$path/x.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'Y',
  //   thumbnail: '$path/y.png',
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
//     author: 'DevWheels',
//     completedPercentage: .75,
//     name: 'Flutter Novice to Ninja',
//     thumbnail: '$path/flutter.jpg',
//     categoryId: 1,
//   ),
//   Course(
//     author: 'DevWheels',
//     completedPercentage: .60,
//     name: 'React Novice to Ninja',
//     thumbnail: '$path/react.jpg',
//     categoryId: 1,
//   ),
//   Course(
//     author: 'DevWheels',
//     completedPercentage: .75,
//     name: 'Node - The complete guide',
//     thumbnail: '$path/node.png',
//     categoryId: 1,
//   ),
//   Course(
//     author: 'DevWheels',
//     completedPercentage: .75,
//     name: 'Flutter Novice to Ninja',
//     thumbnail: '$path/flutter.jpg',
//     categoryId: 1,
//   ),
//   Course(
//     author: 'DevWheels',
//     completedPercentage: .60,
//     name: 'React Novice to Ninja',
//     thumbnail: '$path/react.jpg',
//     categoryId: 1,
//   ),
//   Course(
//     author: 'DevWheels',
//     completedPercentage: .75,
//     name: 'Node - The complete guide',
//     thumbnail: '$path/node.png',
//     categoryId: 1,
//   ),
// ];

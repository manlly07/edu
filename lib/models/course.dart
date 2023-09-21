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

const path = 'assets/icons';

List<Course> courses = [
  Course(
    name: 'A',
    thumbnail: '$path/a/ao.json',
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
      Lesson(thumbnail: '$path/c/chim.json', word: 'Con chim'),
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
  // Course(
  //   name: 'G',
  //   thumbnail: '$path/g.json',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'H',
  //   thumbnail: '$path/h.json',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'I',
  //   thumbnail: '$path/i.json',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'K',
  //   thumbnail: '$path/k.json',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'L',
  //   thumbnail: '$path/l.png',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'M',
  //   thumbnail: '$path/m.json',
  //   categoryId: 1,
  // ),
  // Course(
  //   name: 'N',
  //   thumbnail: '$path/n.png',
  //   categoryId: 1,
  // ),
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

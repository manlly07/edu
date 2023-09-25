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




// class Course {
//   String name;
//   String thumbnail;
//   int categoryId;
//   List<Lesson> lessons;
//   Course({
//     required this.name,
//     required this.thumbnail,
//     required this.categoryId,
//     required this.lessons,
//   });
// }

// class Lesson {
//   String thumbnail;
//   String word;
//   Lesson({
//     required this.thumbnail,
//     required this.word
//   });
// }

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

  String path = '/assets/icons';

  static final List<Course> courses = [
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'A',
      thumbnail: '$path/a/a.riv',
      // thumbnail: '$path/a.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/a/a.riv', word: 'Con cá'),
        SpeakingLesson(thumbnail: '$path/a/ao.json', word: 'Cái áo'),
        SpeakingLesson(thumbnail: '$path/a/vang.json', word: 'Màu vàng'),
        SpeakingLesson(thumbnail: '$path/a/chai.json', word: 'Cái chai'),
        SpeakingLesson(thumbnail: '$path/a/a.jpg', word: 'a'),
        SpeakingLesson(thumbnail: '$path/a/A(1).jpg', word: 'A')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Ă',
      thumbnail: '$path/aw/aw.riv',
      // thumbnail: '$path/aw.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/aw/aw.riv', word: 'Mặt Trời'),
        SpeakingLesson(thumbnail: '$path/aw/tran.png', word: 'Con trăn'),
        SpeakingLesson(thumbnail: '$path/aw/bang.riv', word: 'Tảng băng'),
        SpeakingLesson(thumbnail: '$path/aw/mang.png', word: 'Cây măng'),
        SpeakingLesson(thumbnail: '$path/aw/aw.jpg', word: 'ă'),
        SpeakingLesson(thumbnail: '$path/aw/Aw(1).jpg', word: 'Ă'),
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Â',
      thumbnail: '$path/aa/aa.riv',
      // thumbnail: '$path/aa.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/aa/aa.riv', word: 'Chiếc cân'),
        SpeakingLesson(thumbnail: '$path/aa/chan.riv', word: 'Cái chân'),
        SpeakingLesson(thumbnail: '$path/aa/man.png', word: 'Quả mận'),
        SpeakingLesson(thumbnail: '$path/aa/santruong.riv', word: 'Sân trường'),
        SpeakingLesson(thumbnail: '$path/aa/aa.jpg', word: 'â'),
        SpeakingLesson(thumbnail: '$path/aw/Aa(1).jpg', word: 'Â')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'B',
      // thumbnail: '$path/B.riv',
      thumbnail: '$path/b/b.riv',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/b/banoi.json', word: 'Bà nội'),
        SpeakingLesson(thumbnail: '$path/b/b.riv', word: 'Con bò'),
        SpeakingLesson(thumbnail: '$path/aw/bang.riv', word: 'Tảng băng'),
        SpeakingLesson(thumbnail: '$path/b/bontam.json', word: 'Bồn tắm'),
        SpeakingLesson(thumbnail: '$path/b/b.jpg', word: 'b'),
        SpeakingLesson(thumbnail: '$path/b/B(1).jpg', word: 'B')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'C',
      thumbnail: '$path/c/c.json',
      // thumbnail: '$path/c.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/c/c.json', word: 'Con cua'),
        SpeakingLesson(thumbnail: '$path/c/cay.json', word: 'Cái cây'),
        SpeakingLesson(thumbnail: '$path/c/chim', word: 'Con chim'),
        SpeakingLesson(thumbnail: '$path/c/chanh.json', word: 'Quả chanh'),
        SpeakingLesson(thumbnail: '$path/c/c.jpg', word: 'c'),
        SpeakingLesson(thumbnail: '$path/c/C(1).jpg', word: 'C')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'D',
      thumbnail: '$path/d/d.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/d/d.png', word: 'Con dê'),
        SpeakingLesson(thumbnail: '$path/d/day.png', word: 'Cuộn dây'),
        SpeakingLesson(thumbnail: '$path/d/doanhtrai.png', word: 'Doanh trai'),
        SpeakingLesson(thumbnail: '$path/d/dinhdoclap.jpg', word: 'Dinh Độc Lập'),
        SpeakingLesson(thumbnail: '$path/d/d.jpg', word: 'd'),
        SpeakingLesson(thumbnail: '$path/d/D(1).jpg', word: 'D')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Đ',
      thumbnail: '$path/dd/dd.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/dd/dd.png', word: 'Con đường'),
        SpeakingLesson(thumbnail: '$path/dd/vienda.json', word: 'Viên đá'),
        SpeakingLesson(thumbnail: '$path/dd/dinhvit.png', word: 'Chiếc đinh'),
        SpeakingLesson(thumbnail: '$path/dd/caudo.json', word: 'Câu đố'),
        SpeakingLesson(thumbnail: '$path/dd/dd.jpg', word: 'đ'),
        SpeakingLesson(thumbnail: '$path/dd/Dd(1).jpg', word: 'Đ')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'E',
      thumbnail: '$path/e/e.json',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/e/e.json', word: 'Xe hơi'),
        SpeakingLesson(thumbnail: '$path/e/tre.json', word: 'Cây tre'),
        SpeakingLesson(thumbnail: '$path/e/kem.json', word: 'Cây kem'),
        SpeakingLesson(thumbnail: '$path/e/nghe.json', word: 'Nghe nhạc'),
        SpeakingLesson(thumbnail: '$path/e/e.jpg', word: 'e'),
        SpeakingLesson(thumbnail: '$path/e/e(1).jpg', word: 'E')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Ê',
      thumbnail: '$path/ee/ee.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/ee/ee.png', word: 'Cây nến'),
        SpeakingLesson(thumbnail: '$path/d/d.png', word: 'Con dê'),
        SpeakingLesson(thumbnail: '$path/ee/demen.jpg', word: 'Dế mèn'),
        SpeakingLesson(thumbnail: '$path/ee/khe.png', word: 'Quả khế'),
        SpeakingLesson(thumbnail: '$path/ee/ee.jpg', word: 'ê'),
        SpeakingLesson(thumbnail: '$path/ee/Ee(1).jpg', word: 'Ê')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'G',
      thumbnail: '$path/g/g.json', 
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/g/g.json', word: 'Con gà'),
        SpeakingLesson(thumbnail: '$path/g/gung.png', word: 'Củ gừng'),
        SpeakingLesson(thumbnail: '$path/g/giuong.json', word: 'Chiếc giường'),
        SpeakingLesson(thumbnail: '$path/g/ganket.json', word: 'Gắn kết'),
        SpeakingLesson(thumbnail: '$path/g/g.jpg', word: 'g'),
        SpeakingLesson(thumbnail: '$path/g/G(1).jpg', word: 'G')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'H',
      thumbnail: '$path/h/h.json',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/h/h.json', word: 'Bông hoa'),
        SpeakingLesson(thumbnail: '$path/h/he.json', word: 'Mùa hè'),
        SpeakingLesson(thumbnail: '$path/h/hat.json', word: 'Ca hát'),
        SpeakingLesson(thumbnail: '$path/h/anhhung.json', word: 'Anh hùng'),
        SpeakingLesson(thumbnail: '$path/h/h.jpg', word: 'h'),
        SpeakingLesson(thumbnail: '$path/h/H(1).jpg', word: 'H')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'I',
      thumbnail: '$path/i/i.json',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/i/i.json', word: 'Củ bí'),
        SpeakingLesson(thumbnail: '$path/c/chim', word: 'Con chim'),
        SpeakingLesson(thumbnail: '$path/i/phim.json', word: 'Phim ảnh'),
        SpeakingLesson(thumbnail: '$path/i/ghi.json', word: 'Ghi chép'),
        SpeakingLesson(thumbnail: '$path/i/i.jpg', word: 'i'),
        SpeakingLesson(thumbnail: '$path/h/I(1).jpg', word: 'I')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'K',
      thumbnail: '$path/k/k.json',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/k/k.json', word: 'Chiếc kính'),
        SpeakingLesson(thumbnail: '$path/e/kem.json', word: 'Cây kem'),
        SpeakingLesson(thumbnail: '$path/k/kien.json', word: 'Con kiến'),
        SpeakingLesson(thumbnail: '$path/k/kiem.json', word: 'Thanh kiếm'),
        SpeakingLesson(thumbnail: '$path/k/k.jpg', word: 'k'),
        SpeakingLesson(thumbnail: '$path/k/K(1).jpg', word: 'K')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'L',
      thumbnail: '$path/l/l.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/l/l.png', word: 'Con lạc đà'),
        SpeakingLesson(thumbnail: '$path/l/denlong.json', word: 'Đèn lồng'),
        SpeakingLesson(thumbnail: '$path/l/conluoi.json', word: 'Con lười'),
        SpeakingLesson(thumbnail: '$path/l/losuoi.png', word: 'Lò sưởi'),
        SpeakingLesson(thumbnail: '$path/l/l.jpg', word: 'l'),
        SpeakingLesson(thumbnail: '$path/k/L(1).jpg', word: 'L')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'M',
      thumbnail: '$path/m/me.json',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/m/me.json', word: 'Mẹ'),
        SpeakingLesson(thumbnail: '$path/m/m.json', word: 'Con mèo'),
        SpeakingLesson(thumbnail: '$path/aw/mang.png', word: 'Cây măng'),
        SpeakingLesson(thumbnail: '$path/m/mua.json', word: 'Cơn mưa'),
        SpeakingLesson(thumbnail: '$path/m/m.jpg', word: 'm'),
        SpeakingLesson(thumbnail: '$path/m/M(1).jpg', word: 'M')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'N',
      thumbnail: '$path/n/n.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/n/n.png', word: 'Chiếc nơ'),
        SpeakingLesson(thumbnail: '$path/n/nieucom.png', word: 'Niêu cơm'),
        SpeakingLesson(thumbnail: '$path/n/bepnuong.json', word: 'Bếp nướng'),
        SpeakingLesson(thumbnail: '$path/n/cayneu.jpg', word: 'Cây nêu'),
        SpeakingLesson(thumbnail: '$path/n/n.jpg', word: 'n'),
        SpeakingLesson(thumbnail: '$path/n/N(1).jpg', word: 'N')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'O'
      thumbnail: '$path/o/o.json',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/o/o.json', word: 'Con ong'),
        SpeakingLesson(thumbnail: '$path/o/bongbay.json', word: 'Bóng bay'),
        SpeakingLesson(thumbnail: '$path/o/chongchong.json', word: 'Chong chóng'),
        SpeakingLesson(thumbnail: '$path/o/songbien.riv', word: 'Sóng biển'),
        SpeakingLesson(thumbnail: '$path/o/o.jpg', word: 'o'),
        SpeakingLesson(thumbnail: '$path/o/O(1).jpg', word: 'O')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Ô',
      thumbnail: '$path/oo/chieco.json',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/oo/chieco.json', word: 'Chiếc ô'),
        SpeakingLesson(thumbnail: '$path/oo/concong.json', word: 'Con công'),
        SpeakingLesson(thumbnail: '$path/oo/dongsong.avif', word: 'Dòng sông'),
        SpeakingLesson(thumbnail: '$path/oo/ongnoi.jpg', word: 'Ông nội'),
        SpeakingLesson(thumbnail: '$path/oo/oo.jpg', word: 'ô'),
        SpeakingLesson(thumbnail: '$path/oo/Oo(1).jpg', word: 'Ô')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Ơ',
      thumbnail: '$path/ow/ow.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/ow/ow.png', word: 'Quả mơ'),
        SpeakingLesson(thumbnail: '$path/ow/laco.json', word: 'Lá cờ'),
        SpeakingLesson(thumbnail: '$path/ow/quabo.json', word: 'Quả bơ'),
        SpeakingLesson(thumbnail: '$path/ow/tobao.json', word: 'Tờ báo'),
        SpeakingLesson(thumbnail: '$path/ow/ow.jpg', word: 'ơ'),
        SpeakingLesson(thumbnail: '$path/ow/Ow(1).jpg', word: 'Ơ')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'P',
      thumbnail: '$path/p/p.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/p/p.png', word: 'Đèn pin'),
        SpeakingLesson(thumbnail: '$path/p/phonghoc.avif', word: 'Phòng học'),
        SpeakingLesson(thumbnail: '$path/p/phongvien.json', word: 'Phóng viên'),
        SpeakingLesson(thumbnail: '$path/p/phunu.json', word: 'Phụ nữ'),
        SpeakingLesson(thumbnail: '$path/p/p.jpg', word: 'p'),
        SpeakingLesson(thumbnail: '$path/ow/P(1).jpg', word: 'P')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Q',
      thumbnail: '$path/q/q.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/q/q.png', word: 'Con quạ'),
        SpeakingLesson(thumbnail: '$path/q/chiecquan.avif', word: 'Chiếc quần'),
        SpeakingLesson(thumbnail: '$path/q/quaquyt.json', word: 'Quả quýt'),
        SpeakingLesson(thumbnail: '$path/q/quanco.json', word: 'Quân cờ'),
        SpeakingLesson(thumbnail: '$path/q/q.jpg', word: 'q'),
        SpeakingLesson(thumbnail: '$path/q/Q(1).jpg', word: 'Q')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'R',
      thumbnail: '$path/r/r.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/r/r.png', word: 'Bóng rổ'),
        SpeakingLesson(thumbnail: '$path/r/cairang', word: 'Cái răng'),
        SpeakingLesson(thumbnail: '$path/r/conran.json', word: 'Con rắn'),
        SpeakingLesson(thumbnail: '$path/r/raucu.json', word: 'Rau củ'),
        SpeakingLesson(thumbnail: '$path/r/r.jpg', word: 'r'),
        SpeakingLesson(thumbnail: '$path/r/R(1).jpg', word: 'R')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'S',
      thumbnail: '$path/s/s.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/s/s.png', word: 'Con sóc'),
        SpeakingLesson(thumbnail: '$path/oo/dongsong.avif', word: 'Dòng sông'),
        SpeakingLesson(thumbnail: '$path/s/consua.json', word: 'Con sứa'),
        SpeakingLesson(thumbnail: '$path/s/samchop.json', word: 'Sấm chớp'),
        SpeakingLesson(thumbnail: '$path/s/s.jpg', word: 's'),
        SpeakingLesson(thumbnail: '$path/s/S(1).jpg', word: 'S')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'T',
      thumbnail: '$path/t/t.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/t/t.png', word: 'Con tôm'),
        SpeakingLesson(thumbnail: '$path/t/taobien.json', word: 'Tảo biển'),
        SpeakingLesson(thumbnail: '$path/t/buctuong.json', word: 'Bức tường'),
        SpeakingLesson(thumbnail: '$path/t/xetang.json', word: 'Xe tăng'),
        SpeakingLesson(thumbnail: '$path/t/t.jpg', word: 't'),
        SpeakingLesson(thumbnail: '$path/t/T(1).jpg', word: 'T')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'U',
      thumbnail: '$path/u/u.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/u/u.png', word: 'Quả đu đủ'),
        SpeakingLesson(thumbnail: '$path/u/concu.json', word: 'Con cú'),
        SpeakingLesson(thumbnail: '$path/u/xichdu.json', word: 'Xích đu'),
        SpeakingLesson(thumbnail: '$path/u/suhao.png', word: 'Su hào'),
        SpeakingLesson(thumbnail: '$path/u/u.jpg', word: 'u'),
        SpeakingLesson(thumbnail: '$path/u/U(1).jpg', word: 'U')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Ư',
      thumbnail: '$path/uw/uw.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/uw/uw.png', word: 'Con sư tử'),
        SpeakingLesson(thumbnail: '$path/uw/banhchung.png', word: 'Bánh chưng'),
        SpeakingLesson(thumbnail: '$path/uw/khurung.riv', word: 'Khu rừng'),
        SpeakingLesson(thumbnail: '$path/uw/nhasu.png', word: 'Nhà sư'),
        SpeakingLesson(thumbnail: '$path/uw/uw.jpg', word: 'ư'),
        SpeakingLesson(thumbnail: '$path/uw/Uw(1).jpg', word: 'Ư')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'V',
      thumbnail: '$path/v/v.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/v/v.png', word: 'Con vịt'),
        SpeakingLesson(thumbnail: '$path/a/vang.json', word: 'Màu vàng'),
        SpeakingLesson(thumbnail: '$path/v/quavai.json', word: 'Quả vải'),
        SpeakingLesson(thumbnail: '$path/v/vetranh.png', word: 'Vẽ tranh'),
        SpeakingLesson(thumbnail: '$path/v/v.jpg', word: 'v'),
        SpeakingLesson(thumbnail: '$path/v/V(1).jpg', word: 'V')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'x',
      thumbnail: '$path/x/x.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/x/x.png', word: 'Quả xoài'),
        SpeakingLesson(thumbnail: '$path/t/xetang.json', word: 'Xe tăng'),
        SpeakingLesson(thumbnail: '$path/x/xanhla.json', word: 'Màu xanh lá'),
        SpeakingLesson(thumbnail: '$path/x/khucxuong.json', word: 'Khúc xương'),
        SpeakingLesson(thumbnail: '$path/x/x.jpg', word: 'x'),
        SpeakingLesson(thumbnail: '$path/x/X(1).jpg', word: 'X')
      ]
    ),
    Course(
      lop: Class.MOT,
      category: Categories.TIENGVIET.category,
      name: 'Y',
      thumbnail: '$path/y/y.png',
      categoryId: 1,
      lessons: [
        SpeakingLesson(thumbnail: '$path/y/y.png', word: 'Y tá'),
        SpeakingLesson(thumbnail: '$path/y/chimyen.png', word: 'Chim yến'),
        SpeakingLesson(thumbnail: '$path/y/yenngua.png', word: 'Yên ngựa'),
        SpeakingLesson(thumbnail: '$path/y/yeuthuong.json', word: 'Yêu thương'),
        SpeakingLesson(thumbnail: '$path/y/y.jpg', word: 'y'),
        SpeakingLesson(thumbnail: '$path/y/Y(1).jpg', word: 'Y')
      ]
    ),
  ];
  static List<Course> getCourseOf(Category category, Class clss) {
    List<Course> coursesRes = List.of(courses);
    coursesRes.retainWhere((element) => element.category == category && element.lop == clss);
    return coursesRes;
  }
}

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

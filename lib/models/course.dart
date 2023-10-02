import 'package:edu/models/Quiz.dart';
import 'package:edu/models/category.dart';
import 'package:edu/models/math.dart';
import 'package:edu/models/viet.dart';
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
  // String path = '/assets/icons';

  static final List<Course> courses = [
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'A',
        thumbnail: 'assets/icons/a/a.riv',
        // thumbnail: 'assets/icons/a.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/a/a.riv', word: 'Con cá'),
          SpeakingLesson(thumbnail: 'assets/icons/a/ao.json', word: 'Cái áo'),
          SpeakingLesson(thumbnail: 'assets/icons/a/vang.json', word: 'Màu vàng'),
          SpeakingLesson(thumbnail: 'assets/icons/a/chai.json', word: 'Cái chai'),
          SpeakingLesson(thumbnail: 'assets/icons/a/a.jpg', word: 'a'),
          SpeakingLesson(thumbnail: 'assets/icons/a/A(1).jpg', word: 'A')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Ă',
        thumbnail: 'assets/icons/aw/aw.riv',
        // thumbnail: 'assets/icons/aw.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/aw/aw.riv', word: 'Mặt Trời'),
          SpeakingLesson(thumbnail: 'assets/icons/aw/tran.png', word: 'Con trăn'),
          SpeakingLesson(thumbnail: 'assets/icons/aw/bang.riv', word: 'Tảng băng'),
          SpeakingLesson(thumbnail: 'assets/icons/aw/mang.png', word: 'Cây măng'),
          SpeakingLesson(thumbnail: 'assets/icons/aw/aw.jpg', word: 'ă'),
          SpeakingLesson(thumbnail: 'assets/icons/aw/Aw(1).jpg', word: 'Ă'),
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Â',
        thumbnail: 'assets/icons/aa/aa.riv',
        // thumbnail: 'assets/icons/aa.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/aa/aa.riv', word: 'Chiếc cân'),
          SpeakingLesson(thumbnail: 'assets/icons/aa/chan.riv', word: 'Cái chân'),
          SpeakingLesson(thumbnail: 'assets/icons/aa/man.png', word: 'Quả mận'),
          SpeakingLesson(thumbnail: 'assets/icons/aa/santruong.riv', word: 'Sân trường'),
          SpeakingLesson(thumbnail: 'assets/icons/aa/aa.jpg', word: 'â'),
          SpeakingLesson(thumbnail: 'assets/icons/aw/Aa(1).jpg', word: 'Â')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'B',
        // thumbnail: 'assets/icons/B.riv',
        thumbnail: 'assets/icons/b/b.riv',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/b/banoi.json', word: 'Bà nội'),
          SpeakingLesson(thumbnail: 'assets/icons/b/b.riv', word: 'Con bò'),
          SpeakingLesson(thumbnail: 'assets/icons/aw/bang.riv', word: 'Tảng băng'),
          SpeakingLesson(thumbnail: 'assets/icons/b/bontam.json', word: 'Bồn tắm'),
          SpeakingLesson(thumbnail: 'assets/icons/b/b.jpg', word: 'b'),
          SpeakingLesson(thumbnail: 'assets/icons/b/B(1).jpg', word: 'B')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'C',
        thumbnail: 'assets/icons/c/c.json',
        // thumbnail: 'assets/icons/c.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/c/c.json', word: 'Con cua'),
          SpeakingLesson(thumbnail: 'assets/icons/c/cay.json', word: 'Cái cây'),
          SpeakingLesson(thumbnail: 'assets/icons/c/chim.json', word: 'Con chim'),
          SpeakingLesson(thumbnail: 'assets/icons/c/chanh.json', word: 'Quả chanh'),
          SpeakingLesson(thumbnail: 'assets/icons/c/c.jpg', word: 'c'),
          SpeakingLesson(thumbnail: 'assets/icons/c/C(1).jpg', word: 'C')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'D',
        thumbnail: 'assets/icons/d/d.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/d/d.png', word: 'Con dê'),
          SpeakingLesson(thumbnail: 'assets/icons/d/day.png', word: 'Cuộn dây'),
          SpeakingLesson(thumbnail: 'assets/icons/d/doanhtrai.png', word: 'Doanh trai'),
          SpeakingLesson(thumbnail: 'assets/icons/d/dinhdoclap.jpg', word: 'Dinh Độc Lập'),
          SpeakingLesson(thumbnail: 'assets/icons/d/d.jpg', word: 'd'),
          SpeakingLesson(thumbnail: 'assets/icons/d/D(1).jpg', word: 'D')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Đ',
        thumbnail: 'assets/icons/dd/dd.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/dd/dd.png', word: 'Con đường'),
          SpeakingLesson(thumbnail: 'assets/icons/dd/vienda.json', word: 'Viên đá'),
          SpeakingLesson(thumbnail: 'assets/icons/dd/dinhvit.png', word: 'Chiếc đinh'),
          SpeakingLesson(thumbnail: 'assets/icons/dd/caudo.json', word: 'Câu đố'),
          SpeakingLesson(thumbnail: 'assets/icons/dd/dd.jpg', word: 'đ'),
          SpeakingLesson(thumbnail: 'assets/icons/dd/Dd(1).jpg', word: 'Đ')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'E',
        thumbnail: 'assets/icons/e/e.json',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/e/e.json', word: 'Xe hơi'),
          SpeakingLesson(thumbnail: 'assets/icons/e/tre.json', word: 'Cây tre'),
          SpeakingLesson(thumbnail: 'assets/icons/e/kem.json', word: 'Cây kem'),
          SpeakingLesson(thumbnail: 'assets/icons/e/nghe.json', word: 'Nghe nhạc'),
          SpeakingLesson(thumbnail: 'assets/icons/e/e.jpg', word: 'e'),
          SpeakingLesson(thumbnail: 'assets/icons/e/e(1).jpg', word: 'E')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Ê',
        thumbnail: 'assets/icons/ee/ee.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/ee/ee.png', word: 'Cây nến'),
          SpeakingLesson(thumbnail: 'assets/icons/d/d.png', word: 'Con dê'),
          SpeakingLesson(thumbnail: 'assets/icons/ee/demen.jpg', word: 'Dế mèn'),
          SpeakingLesson(thumbnail: 'assets/icons/ee/khe.png', word: 'Quả khế'),
          SpeakingLesson(thumbnail: 'assets/icons/ee/ee.jpg', word: 'ê'),
          SpeakingLesson(thumbnail: 'assets/icons/ee/Ee(1).jpg', word: 'Ê')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'G',
        thumbnail: 'assets/icons/g/g.json',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/g/g.json', word: 'Con gà'),
          SpeakingLesson(thumbnail: 'assets/icons/g/gung.png', word: 'Củ gừng'),
          SpeakingLesson(thumbnail: 'assets/icons/g/giuong.json', word: 'Chiếc giường'),
          SpeakingLesson(thumbnail: 'assets/icons/g/ganket.json', word: 'Gắn kết'),
          SpeakingLesson(thumbnail: 'assets/icons/g/g.jpg', word: 'g'),
          SpeakingLesson(thumbnail: 'assets/icons/g/G(1).jpg', word: 'G')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'H',
        thumbnail: 'assets/icons/h/h.json',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/h/h.json', word: 'Bông hoa'),
          SpeakingLesson(thumbnail: 'assets/icons/h/he.json', word: 'Mùa hè'),
          SpeakingLesson(thumbnail: 'assets/icons/h/hat.json', word: 'Ca hát'),
          SpeakingLesson(thumbnail: 'assets/icons/h/anhhung.json', word: 'Anh hùng'),
          SpeakingLesson(thumbnail: 'assets/icons/h/h.jpg', word: 'hờ'),
          SpeakingLesson(thumbnail: 'assets/icons/h/H(1).jpg', word: 'Hờ')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'I',
        thumbnail: 'assets/icons/i/i.json',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/i/i.json', word: 'Củ bí'),
          SpeakingLesson(thumbnail: 'assets/icons/c/chim', word: 'Con chim'),
          SpeakingLesson(thumbnail: 'assets/icons/i/phim.json', word: 'Phim ảnh'),
          SpeakingLesson(thumbnail: 'assets/icons/i/ghi.json', word: 'Ghi chép'),
          SpeakingLesson(thumbnail: 'assets/icons/i/i.jpg', word: 'i'),
          SpeakingLesson(thumbnail: 'assets/icons/h/I(1).jpg', word: 'I')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'K',
        thumbnail: 'assets/icons/k/k.json',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/k/k.json', word: 'Chiếc kính'),
          SpeakingLesson(thumbnail: 'assets/icons/e/kem.json', word: 'Cây kem'),
          SpeakingLesson(thumbnail: 'assets/icons/k/kien.json', word: 'Con kiến'),
          SpeakingLesson(thumbnail: 'assets/icons/k/kiem.json', word: 'Thanh kiếm'),
          SpeakingLesson(thumbnail: 'assets/icons/k/k.jpg', word: 'k'),
          SpeakingLesson(thumbnail: 'assets/icons/k/K(1).jpg', word: 'K')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'L',
        thumbnail: 'assets/icons/l/l.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/l/l.png', word: 'Con lạc đà'),
          SpeakingLesson(thumbnail: 'assets/icons/l/denlong.json', word: 'Đèn lồng'),
          SpeakingLesson(thumbnail: 'assets/icons/l/conluoi.json', word: 'Con lười'),
          SpeakingLesson(thumbnail: 'assets/icons/l/losuoi.png', word: 'Lò sưởi'),
          SpeakingLesson(thumbnail: 'assets/icons/l/l.jpg', word: 'l'),
          SpeakingLesson(thumbnail: 'assets/icons/k/L(1).jpg', word: 'L')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'M',
        thumbnail: 'assets/icons/m/me.json',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/m/me.json', word: 'Mẹ'),
          SpeakingLesson(thumbnail: 'assets/icons/m/m.json', word: 'Con mèo'),
          SpeakingLesson(thumbnail: 'assets/icons/aw/mang.png', word: 'Cây măng'),
          SpeakingLesson(thumbnail: 'assets/icons/m/mua.json', word: 'Cơn mưa'),
          SpeakingLesson(thumbnail: 'assets/icons/m/m.jpg', word: 'm'),
          SpeakingLesson(thumbnail: 'assets/icons/m/M(1).jpg', word: 'M')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'N',
        thumbnail: 'assets/icons/n/n.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/n/n.png', word: 'Chiếc nơ'),
          SpeakingLesson(thumbnail: 'assets/icons/n/nieucom.png', word: 'Niêu cơm'),
          SpeakingLesson(thumbnail: 'assets/icons/n/bepnuong.json', word: 'Bếp nướng'),
          SpeakingLesson(thumbnail: 'assets/icons/n/cayneu.jpg', word: 'Cây nêu'),
          SpeakingLesson(thumbnail: 'assets/icons/n/n.jpg', word: 'n'),
          SpeakingLesson(thumbnail: 'assets/icons/n/N(1).jpg', word: 'N')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'O',
        thumbnail: 'assets/icons/o/o.json',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/o/o.json', word: 'Con ong'),
          SpeakingLesson(thumbnail: 'assets/icons/o/bongbay.json', word: 'Bóng bay'),
          SpeakingLesson(thumbnail: 'assets/icons/o/chongchong.json', word: 'Chong chóng'),
          SpeakingLesson(thumbnail: 'assets/icons/o/songbien.riv', word: 'Sóng biển'),
          SpeakingLesson(thumbnail: 'assets/icons/o/o.jpg', word: 'o'),
          SpeakingLesson(thumbnail: 'assets/icons/o/O(1).jpg', word: 'O')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Ô',
        thumbnail: 'assets/icons/oo/chieco.json',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/oo/chieco.json', word: 'Chiếc ô'),
          SpeakingLesson(thumbnail: 'assets/icons/oo/concong.json', word: 'Con công'),
          SpeakingLesson(thumbnail: 'assets/icons/oo/dongsong.avif', word: 'Dòng sông'),
          SpeakingLesson(thumbnail: 'assets/icons/oo/ongnoi.jpg', word: 'Ông nội'),
          SpeakingLesson(thumbnail: 'assets/icons/oo/oo.jpg', word: 'ô'),
          SpeakingLesson(thumbnail: 'assets/icons/oo/Oo(1).jpg', word: 'Ô')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Ơ',
        thumbnail: 'assets/icons/ow/ow.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/ow/ow.png', word: 'Quả mơ'),
          SpeakingLesson(thumbnail: 'assets/icons/ow/laco.json', word: 'Lá cờ'),
          SpeakingLesson(thumbnail: 'assets/icons/ow/quabo.json', word: 'Quả bơ'),
          SpeakingLesson(thumbnail: 'assets/icons/ow/tobao.json', word: 'Tờ báo'),
          SpeakingLesson(thumbnail: 'assets/icons/ow/ow.jpg', word: 'ơ'),
          SpeakingLesson(thumbnail: 'assets/icons/ow/Ow(1).jpg', word: 'Ơ')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'P',
        thumbnail: 'assets/icons/p/p.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/p/p.png', word: 'Đèn pin'),
          SpeakingLesson(thumbnail: 'assets/icons/p/phonghoc.jpg', word: 'Phòng học'),
          SpeakingLesson(thumbnail: 'assets/icons/p/phongvien.json', word: 'Phóng viên'),
          SpeakingLesson(thumbnail: 'assets/icons/p/phunu.json', word: 'Phụ nữ'),
          SpeakingLesson(thumbnail: 'assets/icons/p/p.jpg', word: 'p'),
          SpeakingLesson(thumbnail: 'assets/icons/ow/P(1).jpg', word: 'P')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Q',
        thumbnail: 'assets/icons/q/q.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/q/q.png', word: 'Con quạ'),
          SpeakingLesson(thumbnail: 'assets/icons/q/chiecquan.avif', word: 'Chiếc quần'),
          SpeakingLesson(thumbnail: 'assets/icons/q/quaquyt.json', word: 'Quả quýt'),
          SpeakingLesson(thumbnail: 'assets/icons/q/quanco.json', word: 'Quân cờ'),
          SpeakingLesson(thumbnail: 'assets/icons/q/q.jpg', word: 'q'),
          SpeakingLesson(thumbnail: 'assets/icons/q/Q(1).jpg', word: 'Q')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'R',
        thumbnail: 'assets/icons/r/r.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/r/r.png', word: 'Bóng rổ'),
          SpeakingLesson(thumbnail: 'assets/icons/r/cairang', word: 'Cái răng'),
          SpeakingLesson(thumbnail: 'assets/icons/r/conran.json', word: 'Con rắn'),
          SpeakingLesson(thumbnail: 'assets/icons/r/raucu.json', word: 'Rau củ'),
          SpeakingLesson(thumbnail: 'assets/icons/r/r.jpg', word: 'r'),
          SpeakingLesson(thumbnail: 'assets/icons/r/R(1).jpg', word: 'R')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'S',
        thumbnail: 'assets/icons/s/s.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/s/s.png', word: 'Con sóc'),
          SpeakingLesson(thumbnail: 'assets/icons/oo/dongsong.avif', word: 'Dòng sông'),
          SpeakingLesson(thumbnail: 'assets/icons/s/consua.json', word: 'Con sứa'),
          SpeakingLesson(thumbnail: 'assets/icons/s/samchop.json', word: 'Sấm chớp'),
          SpeakingLesson(thumbnail: 'assets/icons/s/s.jpg', word: 's'),
          SpeakingLesson(thumbnail: 'assets/icons/s/S(1).jpg', word: 'S')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'T',
        thumbnail: 'assets/icons/t/t.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/t/t.png', word: 'Con tôm'),
          SpeakingLesson(thumbnail: 'assets/icons/t/taobien.json', word: 'Tảo biển'),
          SpeakingLesson(thumbnail: 'assets/icons/t/buctuong.json', word: 'Bức tường'),
          SpeakingLesson(thumbnail: 'assets/icons/t/xetang.json', word: 'Xe tăng'),
          SpeakingLesson(thumbnail: 'assets/icons/t/t.jpg', word: 't'),
          SpeakingLesson(thumbnail: 'assets/icons/t/T(1).jpg', word: 'T')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'U',
        thumbnail: 'assets/icons/u/u.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/u/u.png', word: 'Quả đu đủ'),
          SpeakingLesson(thumbnail: 'assets/icons/u/concu.json', word: 'Con cú'),
          SpeakingLesson(thumbnail: 'assets/icons/u/xichdu.json', word: 'Xích đu'),
          SpeakingLesson(thumbnail: 'assets/icons/u/suhao.png', word: 'Su hào'),
          SpeakingLesson(thumbnail: 'assets/icons/u/u.jpg', word: 'u'),
          SpeakingLesson(thumbnail: 'assets/icons/u/U(1).jpg', word: 'U')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Ư',
        thumbnail: 'assets/icons/uw/uw.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/uw/uw.png', word: 'Con sư tử'),
          SpeakingLesson(thumbnail: 'assets/icons/uw/banhchung.png', word: 'Bánh chưng'),
          SpeakingLesson(thumbnail: 'assets/icons/uw/khurung.riv', word: 'Khu rừng'),
          SpeakingLesson(thumbnail: 'assets/icons/uw/nhasu.png', word: 'Nhà sư'),
          SpeakingLesson(thumbnail: 'assets/icons/uw/uw.jpg', word: 'ư'),
          SpeakingLesson(thumbnail: 'assets/icons/uw/Uw(1).jpg', word: 'Ư')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'V',
        thumbnail: 'assets/icons/v/v.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/v/v.png', word: 'Con vịt'),
          SpeakingLesson(thumbnail: 'assets/icons/a/vang.json', word: 'Màu vàng'),
          SpeakingLesson(thumbnail: 'assets/icons/v/quavai.json', word: 'Quả vải'),
          SpeakingLesson(thumbnail: 'assets/icons/v/vetranh.json', word: 'Vẽ tranh'),
          SpeakingLesson(thumbnail: 'assets/icons/v/v.jpg', word: 'v'),
          SpeakingLesson(thumbnail: 'assets/icons/v/V(1).jpg', word: 'V')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'x',
        thumbnail: 'assets/icons/x/x.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/x/x.png', word: 'Quả xoài'),
          SpeakingLesson(thumbnail: 'assets/icons/t/xetang.json', word: 'Xe tăng'),
          SpeakingLesson(thumbnail: 'assets/icons/x/xanhla.json', word: 'Màu xanh lá'),
          SpeakingLesson(thumbnail: 'assets/icons/x/khucxuong.json', word: 'Khúc xương'),
          SpeakingLesson(thumbnail: 'assets/icons/x/x.jpg', word: 'x'),
          SpeakingLesson(thumbnail: 'assets/icons/x/X(1).jpg', word: 'X')
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TIENGVIET.category,
        name: 'Y',
        thumbnail: 'assets/icons/y/y.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/y/y.png', word: 'Y tá'),
          SpeakingLesson(thumbnail: 'assets/icons/y/chimyen.png', word: 'Chim yến'),
          SpeakingLesson(thumbnail: 'assets/icons/y/yenngua.png', word: 'Yên ngựa'),
          SpeakingLesson(thumbnail: 'assets/icons/y/yeuthuong.json', word: 'Yêu thương'),
          SpeakingLesson(thumbnail: 'assets/icons/y/y.jpg', word: 'y'),
          SpeakingLesson(thumbnail: 'assets/icons/y/Y(1).jpg', word: 'Y')
        ]
    ),

    Course(
        lop: Class.MOT,
        category: Categories.DEMSO.category,
        name: 'Đếm số',
        thumbnail: 'assets/icons/demso.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/0.png', word: 'Số 0'),
          SpeakingLesson(thumbnail: 'assets/icons/1.png', word: 'Số 1'),
          SpeakingLesson(thumbnail: 'assets/icons/2.png', word: 'Số 2'),
          SpeakingLesson(thumbnail: 'assets/icons/3.png', word: 'Số 3'),
          SpeakingLesson(thumbnail: 'assets/icons/4.png', word: 'Số 4'),
          SpeakingLesson(thumbnail: 'assets/icons/5.png', word: 'Số 5'),
          SpeakingLesson(thumbnail: 'assets/icons/6.png', word: 'Số 6'),
          SpeakingLesson(thumbnail: 'assets/icons/7.png', word: 'Số 7'),
          SpeakingLesson(thumbnail: 'assets/icons/8.png', word: 'Số 8'),
          SpeakingLesson(thumbnail: 'assets/icons/9.png', word: 'Số 9'),
          SpeakingLesson(thumbnail: 'assets/icons/10.png', word: 'Số 10'),
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.DEMSO.category,
        name: 'Hình vẽ',
        thumbnail: 'assets/icons/hinhhoc.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/sq.png', word: 'Hình vuông'),
          SpeakingLesson(thumbnail: 'assets/icons/rec.png', word: 'Hình chữ nhật'),
          SpeakingLesson(thumbnail: 'assets/icons/cle.png', word: 'Hình tròn'),
          SpeakingLesson(thumbnail: 'assets/icons/qq6.png', word: 'Hình lục giác'),
          SpeakingLesson(thumbnail: 'assets/icons/qq5.png', word: 'Hình lục giác'),
          SpeakingLesson(thumbnail: 'assets/icons/qq3.png', word: 'Hình tam giác'),
          SpeakingLesson(thumbnail: 'assets/icons/qq4.png', word: 'Hình tứ giác'),
        ]
    ),

    Course(
        lop: Class.MOT,
        category: Categories.DEMSO.category,
        name: 'So sánh',
        thumbnail: 'assets/icons/compare.png',
        categoryId: 1,
        lessons: [
          SpeakingLesson(thumbnail: 'assets/icons/gr.png', word: 'Dấu lớn'),
          SpeakingLesson(thumbnail: 'assets/icons/lt.png', word: 'Dấu bé'),
          SpeakingLesson(thumbnail: 'assets/icons/eq.png', word: 'Dấu bằng'),
          SpeakingLesson(thumbnail: 'assets/icons/zz1.png', word: '8 lớn hơn 3'),
          SpeakingLesson(thumbnail: 'assets/icons/zz2.png', word: '5 bằng 5'),
          SpeakingLesson(thumbnail: 'assets/icons/zz3.png', word: '7 lớn hơn 2'),
          SpeakingLesson(thumbnail: 'assets/icons/zz4.png', word: '2 bé hơn 5'),
          SpeakingLesson(thumbnail: 'assets/icons/zz5.png', word: '4 lớn hơn 1'),
          SpeakingLesson(thumbnail: 'assets/icons/zz6.png', word: '3 bằng 3'),
        ]
    ),

    Course(
        lop: Class.MOT,
        category: Categories.TAPVIET.category,
        name: "Tìm từ",
        thumbnail: "assets/icons/word.png",
        categoryId: 2,
        lessons: [
          QuizAttempt(),
          ...generateRandomVietQuestions(10, 1, 29),
          QuizResult()
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TAPVIET.category,
        name: "Gia đình",
        thumbnail: "assets/icons/giadinh.png",
        categoryId: 2,
        lessons: [
          QuizAttempt(),
          ...generateRandomVietQuestions(10, 30, 39),
          QuizResult()
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TAPVIET.category,
        name: "Món ăn",
        thumbnail: "assets/icons/thucvat.png",
        categoryId: 2,
        lessons: [
          QuizAttempt(),
          ...generateRandomVietQuestions(10, 40, 49),
          QuizResult()
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TOAN.category,
        name: "Tính toán",
        thumbnail: "assets/icons/math.png",
        categoryId: 4,
        lessons: [
          QuizAttempt(),
          ...generateRandomMathQuestions(10),
          QuizResult()
        ]
    ),
    Course(
        lop: Class.MOT,
        category: Categories.TOAN.category,
        name: "So sánh",
        thumbnail: "assets/icons/compare.png",
        categoryId: 4,
        lessons: [
          QuizAttempt(),
          ...generateRandomCompareQuestions(10),
          QuizResult()
        ]
    ),
  ];

  static List<Course> getCourseOf(Category category, Class clss) {
    List<Course> coursesRes = List.of(courses);
    coursesRes.retainWhere((element) => element.category == category && element.lop == clss);
    return coursesRes;
  }
}
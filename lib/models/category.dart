class Category {
  final int id;
  final String thumbnail;
  final String name;
  final int noOfCourses;

  const Category({
    required this.id,
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

enum Categories {
  TIENGVIET(Category(
    id: 1,
    name: 'Học Tiếng Việt',
    noOfCourses: 55,
    thumbnail: 'assets/icons/word.png',
  )),
  TAPVIET(Category(
    id: 2,
    name: 'Luyện Tiếng Việt',
    noOfCourses: 20,
    thumbnail: 'assets/icons/tv.png',
  )),
  DEMSO(Category(id: 3, name: 'Đếm số', noOfCourses: 10, thumbnail: 'assets/icons/demso.png')),
  TOAN(Category(
    id: 4,
    name: 'Luyện Toán',
    noOfCourses: 16,
    thumbnail: 'assets/icons/math.png',
  ));

  final Category category;

  const Categories(this.category);
}

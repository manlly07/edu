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
    name: 'Tiếng Việt',
    noOfCourses: 55,
    thumbnail: 'assets/icons/laptop.jpg',
  )),
  TAPVIET(Category(
    id: 2,
    name: 'Tập Viết',
    noOfCourses: 20,
    thumbnail: 'assets/icons/accounting.jpg',
  )),
  TOAN(Category(
    id: 3,
    name: 'Toán',
    noOfCourses: 16,
    thumbnail: 'assets/icons/photography.jpg',
  ));

  final Category category;

  const Categories(this.category);
}

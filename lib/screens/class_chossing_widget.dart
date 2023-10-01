import 'dart:math';

import 'package:edu/models/category.dart';
import 'package:edu/models/course.dart';
import 'package:edu/screens/course_screen.dart';
import 'package:flutter/material.dart';

class ClassChoosingWidget extends StatefulWidget {
  final Category category;

  const ClassChoosingWidget({Key? key, required this.category}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ClassChossingWidgetState();
}

class _ClassChossingWidgetState extends State<ClassChoosingWidget> {
  Category get category => widget.category;

  List<Course> getCourses(Class lop) {
    return Course.getCourseOf(category, lop);
  }

  void onPressed(Class lop) {
    print("hello");
    List<Course> courses = getCourses(lop);
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => CourseScreen(courses: courses),
    ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double appBarHeight = min(size.height/10, 50);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: _AppBar(appBarHeight: appBarHeight, title: category.name,key: const Key("app bar"),),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ListView.builder(
                        clipBehavior: Clip.none,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return LopWidget(lop: Class.values[index], onPressed: onPressed);
                        },
                        itemCount: Class.values.length,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LopWidget extends StatelessWidget {
  final Class lop;
  final void Function(Class lop) onPressed;

  const LopWidget({super.key, required this.lop, required this.onPressed});

  void _onPressed() {
    onPressed(lop);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double size = min(constraints.maxWidth ,constraints.maxHeight)/2;
          return GestureDetector(
            onTap: _onPressed,
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  // BorderSide(color: Colors.green, width: size)
                  color: Colors.green,
                  width: size/20
                )
              ),
              child: Center(
                child: Text(lop.toString(),
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: size / 5
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  final double appBarHeight;
  final String title;

  _AppBar({super.key, required this.appBarHeight, required this.title}) {
    appBarShape = ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(appBarHeight / 5),
            bottomRight: Radius.circular(appBarHeight / 5)
        )
    );
  }

  late final ContinuousRectangleBorder appBarShape;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: appBarShape,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      centerTitle: true,
      title: Text(title, style: Theme.of(context).textTheme.titleLarge,),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 0.5],
                colors: [
                  Color(0xff81FBB8),
                  Color(0xff28C76F),
                ]
            )
        ),
      ),
    );
  }
}


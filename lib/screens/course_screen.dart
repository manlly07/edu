import 'package:edu/constants/icons.dart';
import 'package:edu/models/course.dart';
import 'package:edu/screens/details_screen.dart';
import 'package:edu/tts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class CourseScreen extends StatefulWidget {
  final List<Course> courses;

  const CourseScreen({Key? key, required this.courses}) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

  List<Course> get courses => widget.courses;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          'Tiếng Việt',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 10,
                        child: CustomIconButton(
                          height: 35,
                          width: 35,
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      const RiveAnimation.asset(
                        icBg,
                        fit: BoxFit.fill,
                      ),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: size.width > 700 ? 3 : 2,
                          childAspectRatio: 0.85,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 24,
                        ),
                        itemBuilder: (context, index) {
                          return CourseContainer(course: courses[index], position: index);
                        },
                        itemCount: courses.length,
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseContainer extends StatelessWidget {
  final Course course;
  final int position;
  const CourseContainer({
    Key? key,
    required this.course,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(course.lessons);
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    title: course.name,
                    lessons: course.lessons
                  ))),
      child:Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            ), //BoxShadow
          ],
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double fontSize = (constraints.maxHeight + constraints.maxWidth) / 12;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getThumbNail(course.thumbnail ,constraints, ""),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      course.name,
                      style: TextStyle(
                          fontSize: fontSize
                      ),
                      // style: ,
                    ),
                  ),
                )
                // Text(
                //   "${category.noOfCourses.toString()} courses",
                //   style: Theme.of(context).textTheme.bodySmall,
                // ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget getThumbNail(String thumbnail ,BoxConstraints constraints, String text) {
  if(thumbnail == "") {
    return SizedBox();
  }
  if (text == "") {
    if (thumbnail.contains("riv")) {
      return Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 3 / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: RiveAnimation.asset(
                  thumbnail,
                  fit: BoxFit.cover,
                ),
              )
          )
      );
    }
    //json lottie
    if (thumbnail.contains("json")) {
      return Align(
          alignment: Alignment.topRight,
          child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 3 / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Lottie.asset(
                    thumbnail
                ),
              )
          )
      );
    }
    // image
    if (thumbnail.contains("png") || thumbnail.contains("jpg")) {
      return Align(
          alignment: Alignment.topRight,
          child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 3 / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                    thumbnail
                ),
              )
          )
      );
    }
  }
  if (text != "") {
    if (thumbnail.contains("riv")) {
      return Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 3 / 5,
              child: InkWell(
                onTap: () {
                  TTS.speak(text);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: RiveAnimation.asset(
                    thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              )
          )
      );
    }
    //json lottie
    if (thumbnail.contains("json")) {
      return Align(
          alignment: Alignment.topRight,
          child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 3 / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    TTS.speak(text);
                  },
                  child: Lottie.asset(
                      thumbnail
                  ),
                ),
              )
          )
      );
    }
    // image
    if (thumbnail.contains("png") || thumbnail.contains("jpg")) {
    return Align(
        alignment: Alignment.topRight,
        child: SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight * 3 / 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  TTS.speak(text);
                },
                child: Image.asset(
                    thumbnail
                ),
              ),
            )
        )
    );
  }
  }
  return const SizedBox();
}

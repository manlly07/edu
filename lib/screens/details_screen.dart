import 'package:edu/constants/color.dart';
import 'package:edu/models/Quiz.dart';
import 'package:edu/models/lesson.dart';
import 'package:edu/widgets/lessons/quiz_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class DetailsScreen extends StatefulWidget {
  final String title;
  final List<Lesson> lessons;
  const DetailsScreen({
    Key? key,
    required this.title,required this.lessons,
  }) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String lastStatus = '';
  //final double _confidence = 1.0;

  late final String title;
  late final List<Lesson> lessons;
  late final ValueNotifier<int> index;
  late final ValueNotifier<bool> _isComplete;

  int? getLearningProgress() {
    //TODO: Get Learning Progress
    return null;
  }

  @override
  void initState() {
    super.initState();
    title = widget.title;
    lessons = widget.lessons;
    _isComplete = ValueNotifier(false);
    index = ValueNotifier(getLearningProgress() ?? 0);
    index.addListener(() {
      _isComplete.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                child: IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      CustomIconButton(
                        height: size.height / 15,
                        width: size.height / 15,
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                    child: ValueListenableBuilder<int>(
                      valueListenable: index,
                      builder: (BuildContext context, int value, Widget? widget) {
                        return AnimatedSwitcher(
                          duration: const Duration(seconds: 1),
                          transitionBuilder: (child, animation) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0, 0.0), // Slide in from the right
                                end: const Offset(0.0, 0.0),
                              ).animate(animation),
                              child: child,
                            );
                          },
                          child: LessonContainer(
                            key: Key(value.toString()),
                            lesson: lessons[value],
                            setState: setState,
                            isComplete: _isComplete,
                          ),
                        );
                      },
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                child: SizedBox(
                  height: size.height /15,
                  child: ValueListenableBuilder(
                    valueListenable: index,
                    builder: (BuildContext context, int value, Widget? widget) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _buildRow(size),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildRow(Size size) {
    var i = index.value;
    return <Widget>[
      if(i > 0)
        ValueListenableBuilder(
          valueListenable: _isComplete,
          builder: (BuildContext context, bool value, Widget? child) {
            return CustomIconButton(
                height: size.height / 15,
                width: size.height / 15,
                onTap: () => index.value = i - 1,
                disable: lessons[index.value] is Quiz || lessons[index.value] is QuizResult,
                child: const Icon(Icons.arrow_back)
            );
          },
        ),

      if(i == 0)
        SizedBox(height: size.height / 15, width: size.height / 15),

      Text("${i+1}/${lessons.length}", style: Theme.of(context).textTheme.labelSmall,),

      if(i < lessons.length-1)
        ValueListenableBuilder(
          valueListenable: _isComplete,
          builder: (BuildContext context, bool value, Widget? child) {
            return CustomIconButton(
              height: size.height / 15,
              width: size.height / 15,
              onTap: () => index.value = i + 1,
              disable: !_isComplete.value,
              child: const Icon(Icons.arrow_forward),
            );
          },
        ),
      if(i == lessons.length-1)
        SizedBox(height: size.height / 15, width: size.height / 15),
    ];
  }
}

typedef SetState = void Function(void Function() callback);

class LessonContainer extends StatelessWidget {
  final Lesson lesson;
  final SetState setState;
  final ValueNotifier<bool> isComplete;
  const LessonContainer({
    Key? key,
    required this.setState,
    required this.lesson,
    required this.isComplete
  }) : super(key: key);
  @override



  Widget build(BuildContext context) {

    return GestureDetector(
      child: Container(
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
        child: LessonProvider.getProvider(lesson.type)(lesson, isComplete),
      ),
    );
  }
}


//





































//
//
// class PlayList extends StatelessWidget {
//   const PlayList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       // child: ListView.separated(
//         separatorBuilder: (_, __) {
//           return const SizedBox(
//             height: 20,
//           );
//         },
//         padding: const EdgeInsets.only(top: 20, bottom: 40),
//         shrinkWrap: true,
//         // itemCount: lessonList.length,
//         itemBuilder: (_, index) {
//           // return LessonCard(lesson: lessonList[index]);
//         },
//       ),
//     );
//   }
// }

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          "Build Flutter iOS and Android Apps with a Single Codebase: Learn Google's Flutter Mobile Development Framework & Dart"),
    );
  }
}

// class CustomTabView extends StatefulWidget {
//   final Function(int) changeTab;
//   final int index;
//   const CustomTabView({Key? key, required this.changeTab, required this.index})
//       : super(key: key);
//
//   @override
//   // State<CustomTabView> createState() => _CustomTabViewState();
// }

// class _CustomTabViewState extends State<CustomTabView> {
//   final List<String> _tags = ["Playlist (22)", "Description"];
//
//   Widget _buildTags(int index) {
//     return GestureDetector(
//       onTap: () {
//         widget.changeTab(index);
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(
//             horizontal: MediaQuery.of(context).size.width * .08, vertical: 15),
//         decoration: BoxDecoration(
//           color: widget.index == index ? kPrimaryColor : null,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Text(
//           _tags[index],
//           style: TextStyle(
//             color: widget.index != index ? Colors.black : Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.grey.shade200,
//       ),
//       child: Row(
//         children: _tags
//             .asMap()
//             .entries
//             .map((MapEntry map) => _buildTags(map.key))
//             .toList(),
//       ),
//     );
//   }
// }

class EnrollBottomSheet extends StatefulWidget {
  const EnrollBottomSheet({Key? key}) : super(key: key);

  @override
  _EnrollBottomSheetState createState() => _EnrollBottomSheetState();
}

class _EnrollBottomSheetState extends State<EnrollBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Row(
        children: [
          CustomIconButton(
            onTap: () {},
            height: 45,
            width: 45,
            child: const Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: CustomIconButton(
              onTap: () {},
              color: kPrimaryColor,
              height: 45,
              width: 45,
              child: const Text(
                "Enroll Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final Color? color;
  final VoidCallback onTap;
  final bool disable;

  const CustomIconButton({
    Key? key,
    required this.child,
    required this.height,
    required this.width,
    this.color = Colors.white,
    required this.onTap,
    this.disable = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disable,
      child: Ink(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: disable ? Colors.grey : color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 2.0,
              spreadRadius: .05,
            ), //BoxShadow
          ],
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Center(child: child),
        ),
      ),
    );
  }
}
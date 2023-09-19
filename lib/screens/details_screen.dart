import 'package:edu/Toast.dart';
import 'package:edu/constants/color.dart';
import 'package:edu/constants/icons.dart';
import 'package:edu/models/course.dart';
import 'package:edu/stt.dart';
import 'package:edu/tts.dart';
// import 'package:edu/models/lesson.dart';
import 'package:edu/widgets/custom_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import 'package:video_player/video_player.dart';

import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:speech_to_text/speech_recognition_result.dart';

import '../widgets/lesson_card.dart';

class DetailsScreen extends StatefulWidget {
  final String title;
  final List<Lesson> lessons;
  const DetailsScreen({
    Key? key,
    required this.title,required this.lessons,
  }) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState(title: title, lessons: lessons);
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _selectedTag = 0;
  String text = 'hello';
  List<String> answers = ['', '', '', ''];
  int currentIndex = 0;
  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String lastStatus = '';
  String _text = 'Press the button and start speaking';
  double _confidence = 1.0;
  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }
  final String title;
  final List<Lesson> lessons;

  void changeTab(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  void statusListener(String status) {
    print(status);
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      answers[currentIndex] = result.recognizedWords;
    });
    if(!_speech.isListening) {
      if (answers[currentIndex].contains(lessons[currentIndex].word.toLowerCase())) {
        showToastMessage("Chính xãc", true);
      }else {
        showToastMessage("Chưa chính xãc", false);
      }
    }
  }
  void _listen(index) async {

    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: statusListener,
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => {
          _isListening = true,
          currentIndex = index,
        });
        _speech.listen(
          onResult: _onSpeechResult,
          listenFor: Duration(seconds: 30),
          pauseFor: Duration(seconds: 3),
          localeId: "vi_VN",
          partialResults: true,
          cancelOnError: true,
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }


  _DetailsScreenState({
    required this.title,
    required this.lessons,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: CustomIconButton(
                          child: const Icon(Icons.arrow_back),
                          height: 35,
                          width: 35,
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 24,
                    ),
                    itemBuilder: (context, index) {
                      return LessonContainer(index: index,lesson: lessons[index], text: answers[index], setState: setState, listen: _listen);
                    },
                    itemCount: lessons.length,
                  ),
                ),
                Image.asset(
                  iA,
                  height: 200,
                )
              ],
            ),
          ),
        ),
        // bottomSheet: BottomSheet(
        //   onClosing: () {},
        //   backgroundColor: Colors.white,
        //   enableDrag: false,
        //   builder: (context) {
        //     return const SizedBox(
        //       height: 80,
        //       child: EnrollBottomSheet(),
        //     );
        //   },
        // ),
      ),
    );
  }
}


//
//
//

class LessonContainer extends StatelessWidget {
  final Lesson lesson;
  final String text;
  final setState;
  final listen;
  final int index;
  const LessonContainer({
    Key? key,
    required this.text,
    required this.setState,
    required this.lesson,
    required this.listen,
    required this.index,
  }) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        // padding: const EdgeInsets.all(),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 3,
              color: text != '' ? text.contains(lesson.word.toLowerCase()) ? Colors.greenAccent : Colors.redAccent : Colors.white,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 4.0,
                spreadRadius: .05,
              ), //BoxShadow
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      //rive
                      if(lesson.thumbnail.contains("riv"))
                        Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                                width: 150,
                                height: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: InkWell(
                                    onTap: () {
                                      TextToSpeech.speak(lesson.word);
                                    },
                                    child: RiveAnimation.asset(
                                      lesson.thumbnail,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                            )
                        ),
                      //json lottie
                      if(lesson.thumbnail.contains("json"))
                        Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                                width: 150,
                                height: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: InkWell(
                                    onTap: () {
                                      TextToSpeech.speak(lesson.word);
                                    },
                                    child: Lottie.asset(
                                        lesson.thumbnail
                                    ),
                                  ),
                                )
                            )
                        ),
                      // image
                      if(lesson.thumbnail.contains("png"))
                        Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                                width: 150,
                                height: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: InkWell(
                                    onTap: () {
                                      TextToSpeech.speak(lesson.word);
                                    },
                                    child: Image.asset(
                                        lesson.thumbnail
                                    ),
                                  ),
                                )
                            )
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          lesson.word,
                          style: TextStyle(
                              fontSize: 16
                          ),
                          // style: ,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    width: 36,
                    height: 36,
                    top: 5,
                    right: 5,
                    child: InkWell(
                      onTap: () {
                        listen(index);
                      },
                      child: Center(
                        child: Icon(Icons.mic),
                      ),
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
// Widget build(BuildContext context) {
//   return GestureDetector(
//     onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => DetailsScreen(
//               title: course.name,
//             ))),
//     child: Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.white,
//       ),
//       padding: const EdgeInsets.all(10),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.asset(
//               course.thumbnail,
//               height: 60,
//             ),
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(course.name),
//                 Text(
//                   "Author ${course.author}",
//                   style: Theme.of(context).textTheme.bodySmall,
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 LinearProgressIndicator(
//                   value: course.completedPercentage,
//                   backgroundColor: Colors.black12,
//                   color: kPrimaryColor,
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
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

  const CustomIconButton({
    Key? key,
    required this.child,
    required this.height,
    required this.width,
    this.color = Colors.white,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        child: Center(child: child),
        onTap: onTap,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 2.0,
            spreadRadius: .05,
          ), //BoxShadow
        ],
      ),
    );
  }
}

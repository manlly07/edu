import 'dart:collection';

import 'package:edu/widgets/lessons/speak_lesson_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/lessons/lesson_widget.dart';
List<int> a = [1,2];

enum LessonType {
  SPEAKING(attribute: [
    "word",
    "thumbnail"
  ]),
  CHOOSING2X2(attribute: [
    "word",
    "thumbnail"
  ]),
  ANSWER(attribute: [
    "word",
    "thumbnail"
  ]),
  WRITING(attribute: [
    "word",
    "thumbnail"
  ]);

  final List<String> attribute;
  const LessonType({required this.attribute});
}

typedef Provider = LessonWidget Function(Lesson lesson, ValueNotifier<bool> isComplete);

class LessonProvider{
  static Provider SPEAKING = ((Lesson lesson, ValueNotifier<bool> isComplete) {
    if(lesson.type == LessonType.SPEAKING) return SpeakLessonWidget(lesson: lesson as SpeakingLesson, isComplete: isComplete);
    throw Exception("Improper Lesson input for this Provider");
  });

  static Provider getProvider(LessonType type) {
    switch(type) {
      case LessonType.SPEAKING:
        return SPEAKING;
      default:
        throw Exception("Unknown type: $type");
    }
  }
}

typedef LessonAttribute = HashMap<String,dynamic>;

abstract class Lesson {
  final LessonType type;
  final LessonAttribute _attributes = HashMap();

  Lesson({required this.type, required Map<String,dynamic> attribute}) {
    Map<String, bool> temp = Map.fromIterable(type.attribute, value: (value) => false);
    attribute.forEach((key, value) {
      if(type.attribute.contains(key)) {
        _attributes[key] = value;
        temp[key] = true;
      }
    });
    bool check = true;
    List<String> missingEntry = <String>[];
    for(MapEntry b in temp.entries) {
      if(!b.value) {
        missingEntry.add(b.key);
        check = false;
      }
    }
    if(!check) throw Exception("Lesson not contain enough content: missing $missingEntry");
  }

  UnmodifiableMapView get attributes => UnmodifiableMapView(_attributes);

  dynamic getAttribute(String name) {
    if(type.attribute.contains(name)) {
      return _attributes[name];
    }
    return null;
  }
}


import 'dart:collection';

import 'package:edu/models/Quiz.dart';
import 'package:edu/models/math.dart';
import 'package:edu/models/viet.dart';
import 'package:edu/widgets/lessons/math_quiz_widget.dart';
import 'package:edu/widgets/lessons/quiz_widget.dart';
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
  ]),
  QUIZ(attribute: [
    "question",
    "type",
    "options",
    "answer"
  ]),
  MATH_QUIZ(attribute: [
    "question",
    "options",
    "answer"
  ]),
  VIET_QUIZ(attribute: [
    "question",
    "options",
    "answer",
    "type"
  ]),
  QUIZ_ATTEMPT(attribute: []),
  QUIZ_RESULT(attribute: []);

  final List<String> attribute;
  const LessonType({required this.attribute});
}

typedef Provider = LessonWidget Function(Lesson lesson, ValueNotifier<bool> isComplete);

class LessonProvider{
  static Provider SPEAKING = ((Lesson lesson, ValueNotifier<bool> isComplete) {
    if(lesson.type == LessonType.SPEAKING) return SpeakLessonWidget(lesson: lesson as SpeakingLesson, isComplete: isComplete);
    throw Exception("Improper Lesson input for this Provider");
  });
  //
  // static Provider QUIZ = ((Lesson lesson, ValueNotifier<bool> isComplete) {
  //   if(lesson.type == LessonType.QUIZ) return QuizWidget(isComplete: isComplete, quiz: lesson as Quiz);
  //   throw Exception("Improper Lesson input for this Provider");
  // });

  static Provider MATH_QUIZ = ((Lesson lesson, ValueNotifier<bool> isComplete) {
    if(lesson.type == LessonType.MATH_QUIZ) return MathQuizWidget(isComplete: isComplete, mathQuestion: lesson as MathQuestion);
    throw Exception("Improper Lesson input for this Provider");
  });

  static Provider VIET_QUIZ = ((Lesson lesson, ValueNotifier<bool> isComplete) {
    if(lesson.type == LessonType.VIET_QUIZ) return VietQuizWidget(isComplete: isComplete, vietQuestion: lesson);
    throw Exception("Improper Lesson input for this Provider");
  });

  static Provider QUIZ_ATTEMPT = ((Lesson lesson, ValueNotifier<bool> isComplete) {
    if(lesson.type == LessonType.QUIZ_ATTEMPT) return QuizAttempWidget(isComplete: isComplete, attempt: lesson as QuizAttempt);
    throw Exception("Improper Lesson input for this Provider");
  });

  static Provider QUIZ_RESULT = ((Lesson lesson, ValueNotifier<bool> isComplete) {
    if(lesson.type == LessonType.QUIZ_RESULT) return QuizResultWidget(isComplete: isComplete, result: lesson as QuizResult);
    throw Exception("Improper Lesson input for this Provider");
  });

  static Provider getProvider(LessonType type) {
    switch(type) {
      case LessonType.SPEAKING:
        return SPEAKING;
      // case LessonType.QUIZ:
      //   return QUIZ;
      case LessonType.VIET_QUIZ:
        return VIET_QUIZ;
      case LessonType.MATH_QUIZ:
        return MATH_QUIZ;
      case LessonType.QUIZ_ATTEMPT:
        return QUIZ_ATTEMPT;
      case LessonType.QUIZ_RESULT:
        return QUIZ_RESULT;
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


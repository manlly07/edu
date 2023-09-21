import 'package:flutter/material.dart';

abstract class LessonWidget extends StatefulWidget {
  final ValueNotifier<bool> _isComplete;

  const LessonWidget({Key? key, required ValueNotifier<bool> isComplete}) : _isComplete = isComplete, super(key: key);

  /// need to call this to forward the Course, keep in mind
  void setCompleted() {
    _isComplete.value = true;
  }
}

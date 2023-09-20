import 'dart:math';

import 'package:flutter/material.dart';

class ClassChoosingWidget extends StatelessWidget {
  const ClassChoosingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double appBarHeight = min(size.height/10, 50);
    final appBarShape = ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(appBarHeight / 5),
            bottomRight: Radius.circular(appBarHeight / 5)
        )
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: AppBar(
          shape: appBarShape,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
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
        ),
      ),
    );
  }
}

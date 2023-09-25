import 'dart:math';

import 'package:edu/constants/color.dart';
import 'package:edu/constants/icons.dart';
import 'package:edu/models/category.dart';
import 'package:edu/screens/class_chossing_widget.dart';
import 'package:edu/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/search_testfield.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var appBarHeight = size.height / 3.5;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: const Body(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight > 220 ? 220 : appBarHeight),
          child: const AppBar(),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    var ecSize = size.width / 18;
    var saSize = size.width / 20;
    return Stack(
      children: [
        Image.asset(
          bgHome,
          fit: BoxFit.fitHeight,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore Categories",
                    style: Theme.of(context).textTheme.bodyLarge!
                        .copyWith(fontSize: ecSize > 25 ? 25 : ecSize),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                          color: kPrimaryColor,
                          fontSize: saSize > 20 ? 20 : saSize
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (size.width > 700 ? 3 : 2),
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 24,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    category: Categories.values[index].category,
                  );
                },
                itemCount: Categories.values.length,
              ),
            )
          ],
        ),
      ]
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ClassChoosingWidget(category: category,),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
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
            var fontSize = constraints.maxWidth /10;
            var padding = constraints.maxWidth * 0.05;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: ClipRect(
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      category.thumbnail,
                      height: constraints.maxHeight * 3/5,
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 2/5,
                  width: constraints.maxWidth,
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(category.name,
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(fontSize: fontSize),
                        ),
                        Text(
                          "${category.noOfCourses.toString()} courses",
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(fontSize: fontSize - 3),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    var appendTop = size.height/20;
    return Container(
      padding: EdgeInsets.only(top: (min(appendTop, 50)) + 20, left: 20, right: 20, bottom: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xff81FBB8),
            Color(0xff28C76F),
          ],
        ),
      ),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var titleFontSize = constraints.maxHeight / 6;
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hello, \nGood Morning",
                    style: Theme.of(context).textTheme.titleLarge!
                        .copyWith(fontSize: max(titleFontSize,23)),
                  ),
                  CircleButton(
                    icon: Icons.notifications,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.4,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SearchTextField(
                    size: constraints.maxHeight / 7,
                    labelSize: constraints.maxHeight / 9 ,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

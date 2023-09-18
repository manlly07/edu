import 'package:edu/constants/color.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final double size;
  final double? labelSize;

  const SearchTextField({
    Key? key,
    this.size = 26,
    this.labelSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5,top: 2,right: 2,bottom: 2),
          child:  Icon(
            Icons.search,
            color: Colors.grey,
            size: size > 26 ? 26 : size,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 2,top: 2,right: 5,bottom: 2),
          child: Icon(
            Icons.mic,
            color: kPrimaryColor,
            size: size > 26 ? 26 : size,
          ),
        ),
        // helperText: "Search your topic",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "Search your topic",
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: labelSize! > 20 ? 20 : labelSize
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        isDense: true,
      ),
    );
  }
}

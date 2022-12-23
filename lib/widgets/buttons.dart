
// ignore_for_file: prefer_const_constructors, must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeButton extends StatelessWidget {
  String text;
  Color? bgColor;

  void Function()? onPress = () {};

  HomeButton({
    Key? key,
    required this.text,
    this.bgColor,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ButtonStyle(
            fixedSize: MaterialStatePropertyAll(
              Size(500, 50),
            ),
            backgroundColor: MaterialStatePropertyAll(bgColor),
          ),
          onPressed: onPress,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "$text",
              style: GoogleFonts.aBeeZee(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeInput extends StatelessWidget {
  bool? required;
  String label;
  TextEditingController? controller;
  TextInputType? keyType;
  String? errorText;

  HomeInput({
    Key? key,
    this.required = true,
    required this.label,
    this.controller,
    this.keyType,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: label,
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                if (required!)
                  TextSpan(
                    text: " *",
                    style: GoogleFonts.aBeeZee(
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          ),
          TextField(
            keyboardType: keyType,
            controller: controller,
            decoration: InputDecoration(
              errorText: errorText,
              errorStyle: GoogleFonts.actor(
                color: Colors.red,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

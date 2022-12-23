// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_edu/widgets/connextion_dialog.dart';

import '../widgets/buttons.dart';
import '../widgets/create_account_dialog.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network("https://picsum.photos/500/250"),
            Column(
              children: [
                Text(
                  "Online Edu",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Site d'éducation en ligne pour tous",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                HomeButton(
                  text: "CREER UN COMPTE",
                  onPress: () {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return CreateAccountDialog();
                        }));
                  },
                ),
                HomeButton(
                  text: "SE CONNECTER",
                  onPress: () {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return ConnexionDialog();
                        }));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

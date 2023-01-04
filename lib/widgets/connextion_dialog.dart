// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_edu/widgets/inputs.dart';

class ConnexionDialog extends StatefulWidget {
  const ConnexionDialog({super.key});

  @override
  State<ConnexionDialog> createState() => _ConnexionDialogState();
}

class _ConnexionDialogState extends State<ConnexionDialog> {
  static const errorRequis = "Ce champ est requis";

  var email = TextEditingController();

  var mdp = TextEditingController();

  String? errorEmail;
  String? errorMdp;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.all(20),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(),
          Text(
            "CONNEXION",
            style: GoogleFonts.aBeeZee(
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close,
              color: Colors.red,
            ),
          ),
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        HomeInput(
          label: "Adresse email",
          keyType: TextInputType.emailAddress,
          controller: email,
          errorText: errorEmail,
        ),
        HomeInput(
          label: "Votre mot de passe",
          keyType: TextInputType.visiblePassword,
          controller: mdp,
          errorText: errorMdp,
          obscure: true,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            bool good = true;
            errorEmail = null;
            errorMdp = null;
            if (email.text.isEmpty) {
              errorEmail = errorRequis;
              good = false;
            }
            if (mdp.text.isEmpty) {
              errorMdp = errorRequis;
              good = false;
            }

            setState(() {});
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text("SE CONNECTER"),
          ),
        )
      ],
    );
  }
}

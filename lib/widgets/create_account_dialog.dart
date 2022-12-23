// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_edu/widgets/inputs.dart';

class CreateAccountDialog extends StatefulWidget {
  const CreateAccountDialog({super.key});

  @override
  State<CreateAccountDialog> createState() => _CreateAccountDialogState();
}

class _CreateAccountDialogState extends State<CreateAccountDialog> {
  var nom = TextEditingController();
  String? errorNom;

  var prenom = TextEditingController();

  var phone = TextEditingController();

  var email = TextEditingController();
  String? errorEmail;

  var mdp = TextEditingController();
  String? errorMdp;

  var cmdp = TextEditingController();
  String? errorCmdp;

  @override
  Widget build(BuildContext context) {
    Map<TextEditingController, String?> ctrls = {
      nom: errorNom,
      email: errorEmail,
      mdp: errorMdp,
      cmdp: errorCmdp,
    };
    return SimpleDialog(
      contentPadding: EdgeInsets.all(20),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(),
          Text(
            "CREATION DU COMPTE",
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
          label: "Votre nom",
          controller: nom,
          errorText: errorNom,
        ),
        HomeInput(
          label: "Votre prénom",
          required: false,
          controller: prenom,
        ),
        HomeInput(
          label: "Numéro de téléphone",
          required: false,
          keyType: TextInputType.phone,
          controller: phone,
        ),
        HomeInput(
          label: "Adresse email",
          keyType: TextInputType.emailAddress,
          controller: email,
          errorText: errorEmail,
        ),
        HomeInput(
          label: "Créer un mot de passe",
          keyType: TextInputType.visiblePassword,
          controller: mdp,
          errorText: errorMdp,
        ),
        HomeInput(
          label: "Confirmation",
          keyType: TextInputType.visiblePassword,
          controller: cmdp,
          errorText: errorCmdp,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            bool good = true;
            if (nom.text.isEmpty) {
              errorNom = "Ce champ est requis";
              good = false;
            }

            setState(() {});
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text("S'ENREGISTRER"),
          ),
        )
      ],
    );
  }
}

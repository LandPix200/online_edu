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
  static const errorRequis = "Ce champ est requis";

  var nom = TextEditingController();

  var prenom = TextEditingController();

  var phone = TextEditingController();

  var email = TextEditingController();

  var mdp = TextEditingController();

  var cmdp = TextEditingController();

  String? errorNom;
  String? errorEmail;
  String? errorMdp;
  String? errorCmdp;

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
          obscure: true,
        ),
        HomeInput(
          label: "Confirmation",
          keyType: TextInputType.visiblePassword,
          controller: cmdp,
          errorText: errorCmdp,
          obscure: true,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            errorNom = null;
            errorEmail = null;
            errorMdp = null;
            errorCmdp = null;

            bool good = true;
            if (nom.text.isEmpty) {
              errorNom = errorRequis;
              good = false;
            }
            if (email.text.isEmpty) {
              errorEmail = errorRequis;
              good = false;
            }
            if (mdp.text.isEmpty) {
              errorMdp = errorRequis;
              good = false;
            }
            if (cmdp.text.isEmpty) {
              errorCmdp = errorRequis;
              good = false;
            } else if (cmdp.text != mdp.text) {
              errorCmdp = "Les Mots de passe de sont pas similaires";
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

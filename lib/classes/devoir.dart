import 'package:online_edu/classes/prof.dart';

import 'classe.dart';

class Devoir {
  int id;
  String titre;
  DateTime dateCreation;
  Classe classe;
  Prof prof;

  Devoir(this.id, this.titre, this.dateCreation, this.classe, this.prof);
}

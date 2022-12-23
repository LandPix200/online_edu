import 'package:online_edu/classes/etudiant.dart';
import 'package:online_edu/classes/prof.dart';

class Classe {
  int id;
  String nom;
  int? niveau;
  List<Etudiant>? etudiants;
  Prof? prof;

  Classe(this.id, this.nom);
}

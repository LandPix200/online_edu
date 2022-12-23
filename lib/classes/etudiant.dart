import 'package:online_edu/classes/classe.dart';
import 'package:online_edu/classes/user.dart';

class Etudiant extends User {
  Classe? classe;
  double? note;

  Etudiant(super.id, super.nom, super.email, super.mdp) {
    isProf = false;
  }
}

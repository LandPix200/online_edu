import 'package:online_edu/classes/classe.dart';
import 'package:online_edu/classes/user.dart';

class Prof extends User {
  String? specialite;
  List<Classe>? classes;

  Prof(super.id, super.nom, super.email, super.mdp) {
    isProf = true;
  }
}

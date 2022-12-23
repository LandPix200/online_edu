abstract class User {
  int id;
  String nom;
  String? prenom;
  String? phone;
  String email;
  String mdp;
  String? ville;
  bool? isProf;
  DateTime? naissanceDate;
  String? imageUrl;

  User(this.id, this.nom, this.email, this.mdp);
}

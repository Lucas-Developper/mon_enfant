class Model {
  late int id;
  late String titre;
  late String soustitre;
  late String texte;
  late String pathimage;

  Model(
      {required this.id,
      required this.titre,
      required this.soustitre,
      required this.texte,
      required this.pathimage});

  Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titre = json['titre'];
    texte = json['texte'];
    soustitre = json['prix'];
    pathimage = json['pathLogo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['titre'] = titre;
    data['soustitre'] = soustitre;
    data['texte']=texte;
    data['pathimage'] = pathimage;
    return data;
  }
}

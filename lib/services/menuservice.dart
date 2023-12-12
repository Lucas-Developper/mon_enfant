import '../model/menu.dart';

class Controllermenu {
  List<Personne> getpersonne() {
    return [
      Personne(id: 1, nom: 'OUOBA', prenom: 'Dambo', age: 40, cartier: 'ouidi'),
      Personne(id: 2, nom: 'OUDRAOGO', prenom: 'david', age: 18, cartier: 'Dapoya'),
      Personne(id: 3, nom: 'SAWADOGO', prenom: 'adamo', age: 20, cartier: 'ouidi'),
      Personne(id: 4, nom: 'OUOBA', prenom: 'bouba', age: 50, cartier: 'Zone1'),
      Personne(id: 5, nom: 'Zangre', prenom: 'boukari', age: 20, cartier: 'ouidi'),
      Personne(id: 6, nom: 'OUOBA', prenom: 'Mohamed', age: 30, cartier: 'gounghuin'),
    ];
  }
}

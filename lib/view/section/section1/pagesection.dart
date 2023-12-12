import 'package:flutter/material.dart';
import 'package:mon_enfant_grandit/component/header.dart';
import 'package:mon_enfant_grandit/model/menu.dart';
import 'package:mon_enfant_grandit/services/menuservice.dart';
import 'package:mon_enfant_grandit/view/homes/navDrawer.dart';
import 'package:mon_enfant_grandit/component/bottomnavigation.dart';
//import 'menu.dart';
import 'menu2.dart';

class PersonneDetail extends StatefulWidget {
  final Personne personne;

  const PersonneDetail({Key? key, required this.personne}) : super(key: key);

  @override
  _PersonneDetailState createState() => _PersonneDetailState();
}

class _PersonneDetailState extends State<PersonneDetail> {
  late List<Personne> personnes;
  late int index;

  @override
  void initState() {
    super.initState();
    final controllerMenu = Controllermenu();
    personnes = controllerMenu.getpersonne();
    index = personnes.indexOf(widget.personne);
    if (index == -1) {
      // Si l'index initial est -1, on le fixe à 0.
      index = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${personnes[index].nom}'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(
                Icons.dehaze,
                color: Colors.black,
              ),
            );
          },
        ),
        automaticallyImplyLeading: false, // Désactiver le bouton de retour
        flexibleSpace: const Headerpage(
          title: '',
          backgroundcolor: Colors.blue,
        ),
      ),
      drawer: const NavDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nom : ${personnes[index].nom}'),
            Text('Prénom : ${personnes[index].prenom}'),
            Text('Âge : ${personnes[index].age}'),
            Text('Quartier : ${personnes[index].cartier}'),
            // Ajoutez plus de détails si nécessaire
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                _navigateToPreviousPerson();
              },
              tooltip: 'Afficher le popup',

            ),
            IconButton(
              onPressed: () {
                Menu.show(context, currentPage: 'Page 3');
                //Menu.show(context);
              },
              tooltip: 'Afficher le popup',

              icon: const Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {
                _navigateToNextPerson();
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToPreviousPerson() {
    setState(() {
      index = (index - 1) % personnes.length;
      if (index < 0) {
        index = personnes.length - 1;
      }
    });
  }

  void _navigateToNextPerson() {
    setState(() {
      index = (index + 1) % personnes.length;
    });
  }

  void _navigatepopop() {
    setState(() {
      //index = (index + 1) % personnes.length;
    });
  }
}

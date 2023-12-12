// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/colors.dart';
import '../../shared/custom_text.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyDrawer(); /*Drawer(
      backgroundColor: blanc(),
      elevation: 10,
      width: MediaQuery.of(context).size.width * 0.75,
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: DrawerHeader(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.person_circle_fill,
                      size: MediaQuery.of(context).size.height * 0.1,
                      color: noir().withOpacity(0.5),
                    ),
                    CustomText(
                      "OUOBA Dambo",
                      tex: TailleText(context).titre,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomText(
                      "ouobaf96@gmail.com",
                      tex: TailleText(context).contenu * 0.8,
                      fontWeight: FontWeight.normal,
                      color: noir().withOpacity(0.5),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 15,
          ),
          ListTile(
            title: CustomText(
              "Accueil",
              tex: TailleText(context).titre,
              textAlign: TextAlign.left,
              color: noir(),
            ),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Container(
            height: 15,
          ),
          ListTile(
            title: CustomText("A propos",
                tex: TailleText(context).titre,
                textAlign: TextAlign.left,
                color: noir()),
            leading: Icon(
              Icons.menu_book,
              color: noir(),
            ),
            onTap: () {},
          ),
          Container(
            height: 15,
          ),
          Container(
            height: 15,
          ),
          CustomDrawerItem(
            titre: "Accueil",
            icon: Icons.home,
            page: "/accueil", // Remplacez "/accueil" par le chemin réel de votre page
          ),
          ListTile(
            title: CustomText(
              "Paramètres",
              tex: TailleText(context).titre,
              textAlign: TextAlign.left,
              color: noir(),
            ),
            leading: const Icon(Icons.settings),
            onTap: () {},
          ),
          Container(
            height: 15,
          ),
          ListTile(
            title: CustomText(
              "Présentation",
              tex: TailleText(context).titre,
              textAlign: TextAlign.left,
              color: noir(),
            ),
            leading: const Icon(Icons.question_mark),
            onTap: () {},
          ),
          Container(
            height: 15,
          ),
        ],
      ),
    );*/
  }
}

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String currentPage = '/accueil';

  Widget buildDrawerButton(String title, IconData icon, String page) {
    return Container(
      //width: MediaQuery.of(context).size.width - 40,
      child: ListTile(
        title: Text(title),

        leading: Icon(icon),
        onTap: () {
          // Naviguer vers la page spécifiée

          Navigator.pushNamed(context, page);

          // Fermer le tiroir
          Navigator.pop(context);

          // Mettre à jour la page active
          setState(() {
            currentPage = page;
          });
        },
        tileColor: currentPage == page ? Colors.green : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(10.0), // Correction ici
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Image.asset('assets/images/drawer.jpeg', height: 100.0),
          ),
          buildDrawerButton('Menu Principal', Icons.home, '/accueil'),
          buildDrawerButton('Mes informations', Icons.info_outline, 'pagesection'),
          buildDrawerButton('Mes visites', Icons.date_range, '/mes_visites'),
          buildDrawerButton('Paramètre', Icons.settings, '/parametres'),
          buildDrawerButton('À propos', Icons.import_contacts, '/a_propos'),
          buildDrawerButton('Présentation', Icons.question_mark, '/presentation'),
        ],
      ),
    );
  }
}

/*class Page extends StatelessWidget {
  final String title;

  Page(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Contenu de la page $title'),
      ),
    );
  }
}
*/
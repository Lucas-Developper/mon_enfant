import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_enfant_grandit/shared/colors.dart';
import 'package:mon_enfant_grandit/view/homes/navDrawer.dart';

import '../section/section1/pagesection.dart';
import '../../shared/custom_text.dart';

class HomePage extends StatefulWidget {
 // final String title;
 // HomePage(this.title);
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          'Menu Principale',
          tex: TailleText(context).titre * 1.5,
          fontWeight: FontWeight.bold,
          color: noir(),
        ),
        centerTitle: true,
        backgroundColor: blanc(),
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
      ),
      drawer: const NavDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildClickableImageWithText(context,
                      'assets/images/lancement.jpg', 'Titre 4', 'page1'),
                  buildClickableImageWithText(context,
                      'assets/images/lancement.jpg', 'Titre 6', 'page1'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildClickableImageWithText(
                      context, 'assets/images/lancement.jpg', 'Titre', 'page3'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildClickableImageWithText(context,
                      'assets/images/lancement.jpg', 'Titre 1', 'page1'),
                  buildClickableImageWithText(context,
                      'assets/images/lancement.jpg', 'Titre 2', 'page1'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildClickableImageWithText(
                      context, 'assets/images/lancement.jpg', 'titre', 'page2'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildClickableImageWithText(context,
                      'assets/images/lancement.jpg', 'Titre 3', 'page1'),
                  buildClickableImageWithText(context,
                      'assets/images/lancement.jpg', 'Titre 8', 'page3'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildClickableImageWithText(
      BuildContext context, String imagePath, String title, String routeName) {
    return GestureDetector(
      onTap: () {
        context.go('/$routeName', extra: {
          'imagePath': imagePath,
          'title': title,
        });
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 8),
          CustomText(
            title,
            color: noir(),
          )
        ],
      ),
    );
  }
}

// Exemple de pages spécifiques pour chaque image

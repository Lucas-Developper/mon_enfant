import 'package:flutter/material.dart';
import '../../../component/bottomnavigation.dart';
import '../../../component/header.dart';
import '../../homes/navDrawer.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key, required this.imagePath, required this.title})
      : super(key: key);
  final String imagePath;
  final String title;
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          title: 'mon texte dynamique',
          backgroundcolor: Colors.blue,
        ),
      ),
      drawer: const NavDrawer(),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(widget.imagePath),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bottonnavigation(),
    );
  }
}

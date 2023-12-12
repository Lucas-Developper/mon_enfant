// ignore_for_file: camel_case_types, depend_on_referenced_packages, constant_identifier_names, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mon_enfant_grandit/view/homes/home.dart';
import 'shared/colors.dart';

class launchPage extends StatefulWidget {
  const launchPage({super.key});

  @override
  State<launchPage> createState() => _launchPageState();
}

class _launchPageState extends State<launchPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      ),
      //context.go('acceuil')
      // Navigator.pushReplacementNamed(context,
      // './acceuil'), // Remplace la page actuelle par la page d'accueil
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanc(),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // decoration: backGround,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/lancement.jpg'),
                          fit: BoxFit.contain,
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

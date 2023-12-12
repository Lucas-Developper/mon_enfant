import 'package:flutter/material.dart';
import 'package:mon_enfant_grandit/services/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter De',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const launchPage(),

        debugShowCheckedModeBanner: false,
        /* initialRoute: './lancement',
      routes: {
        './lancement': (context) => const launchPage(),
        './accueil': (context) => const HomePage(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        './page4': (context) => Page4(),
      },*/
        routerConfig: router);
  }
}

import 'package:flutter/material.dart';

import '../../../component/bottomnavigation.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: SingleChildScrollView(
       child: Column(
        children: [ Text('Contenu de la page 2'),
        ],
       ),
      ),
            bottomNavigationBar: Bottonnavigation(),

    );
  }
}

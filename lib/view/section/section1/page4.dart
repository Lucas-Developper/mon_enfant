import 'package:flutter/material.dart';

import '../../../component/bottomnavigation.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text('Contenu de la page 4'),
        ],
      )),
      bottomNavigationBar: Bottonnavigation(),
    );
  }
}

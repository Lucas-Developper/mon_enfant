import 'package:flutter/material.dart';

import '../../../component/bottomnavigation.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('Contenu de la page 3'),
      ),
      bottomNavigationBar: Bottonnavigation(),
    );
  }
}

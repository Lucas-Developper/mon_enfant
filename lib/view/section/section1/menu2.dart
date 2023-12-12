import 'package:flutter/material.dart';

class Menu {
  static void show(BuildContext context, {required String currentPage}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MenuDialog(currentPage: currentPage);
      },
    );
  }
}

class MenuDialog extends StatelessWidget {
  final String currentPage;

  MenuDialog({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Menu de la $currentPage'),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop(); // Fermer le popup
                    },
                  ),
                ],
              ),
            ),
            ...buildPageSpecificActions(context),
          ],
        ),
      ),
    );
  }

  List<Widget> buildPageSpecificActions(BuildContext context) {
    switch (currentPage) {
      case 'Page 1':
        return [
          customDialogButton('Action 1', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction1(context);
          }),
          customDialogButton('Action 2', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction2(context);
          }),
        ];
      case 'Page 2':
        return [
          customDialogButton('Action 3', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction3(context);
          }),
          customDialogButton('Action 4', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction4(context);
          }),
        ];
      case 'Page 3':
        return [
          customDialogButton('Dambo', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction3(context);
          }),
          customDialogButton('Adamo', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction4(context);
          }),
          customDialogButton('Lucas', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction4(context);
          }),
          customDialogButton('Zeba', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction4(context);
          }),
        ];
      case 'Page 4':
        return [
          customDialogButton('ODG', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction3(context);
          }),
          customDialogButton('SWD', () {
            Navigator.of(context).pop(); // Fermer le popup
            performAction4(context);
          }),
        ];
    // Ajoutez d'autres cas pour d'autres pages si nécessaire
      default:
        return [];
    }
  }

  Widget customDialogButton(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }

  void performAction1(BuildContext context) {
    print('Effectuer l\'action 1 sur $currentPage');
    // Logique spécifique à la page 1
  }

  void performAction2(BuildContext context) {
    print('Effectuer l\'action 2 sur $currentPage');
    // Logique spécifique à la page 1
  }

  void performAction3(BuildContext context) {
    print('Effectuer l\'action 3 sur $currentPage');
    // Logique spécifique à la page 2
  }

  void performAction4(BuildContext context) {
    print('Effectuer l\'action 4 sur $currentPage');
    // Logique spécifique à la page 2
  }
}

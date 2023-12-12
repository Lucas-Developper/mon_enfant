// menu.dart
import 'package:flutter/material.dart';

class Menu {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MenuDialog();
      },
    );
  }
}

class MenuDialog extends StatelessWidget {
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
                  Text('Choisissez une action'),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop(); // Fermer le popup
                    },
                  ),
                ],
              ),
            ),
            customDialogButton('Page 1', () {
              Navigator.of(context).pop(); // Fermer le popup
              navigateToPage(context, 'Page 1');
            }),
            customDialogButton('Page 2', () {
              Navigator.of(context).pop(); // Fermer le popup
              navigateToPage(context, 'Page 2');
            }),
            customDialogButton('Page 3', () {
              Navigator.of(context).pop(); // Fermer le popup
              navigateToPage(context, 'Page 3');
            }),
            customDialogButton('Page 4', () {
              Navigator.of(context).pop(); // Fermer le popup
              navigateToPage(context, 'Page 4');
            }),
          ],
        ),
      ),
    );
  }

  Widget customDialogButton(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }

  void navigateToPage(BuildContext context, String pageName) {
    // Implémentez la logique pour naviguer vers la page spécifique ici
    // Par exemple, utilisez Navigator.push pour naviguer vers une nouvelle page.
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => YourPageWidget()),
    // );
    print('Naviguer vers la page $pageName');
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_enfant_grandit/view/section/section1/pagesection.dart';
import 'package:mon_enfant_grandit/component/resultcart.dart';

import '../model/menu.dart';
import '../services/menuservice.dart';
import '../shared/colors.dart';
import '../shared/custom_text.dart';
import '../view/section/section2/page2.dart';

class Bottonnavigation extends StatefulWidget {
  const Bottonnavigation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottonnavigationState createState() => _BottonnavigationState();
}

class _BottonnavigationState extends State<Bottonnavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        // Perform navigation based on the selected index
        _navigateTo(index);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_forward),
          label: '',
        ),
      ],
    );
  }

  void _navigateTo(int index) {
    final controllerMenu = Controllermenu();
    final List<Personne> personnes = controllerMenu.getpersonne();

    print("List of personnes: $personnes");

    if (index >= 0 && index < personnes.length) {
      print("Navigating to person at index $index");

      navigateToPersonDetails(personnes[index]);
    }
  }

  void navigateToPersonDetails(Personne personne) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PersonneDetail(personne: personne),
    ));
  }

  Future<void> resultatPop(BuildContext context) async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              backgroundColor: blanc(),
              insetPadding:
                  EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              content: Builder(
                builder: (context) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 1.6,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Center(
                        child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                'chez nous àprès la naissance',
                                color: noir(),
                                tex: TailleText(context).titre * 0.8,
                                fontWeight: FontWeight.w700,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.clear_sharp,
                                    color: red(),
                                  )),
                            ],
                          ),
                          ResultCard(
                            titre: "Soins du bebe",
                            x: Page2(),
                          ),
                          ResultCard(
                            titre: "Soins du bebe",
                            x: Page2(),
                          ),
                          ResultCard(
                            titre: "Soins du bebe",
                            x: Page2(),
                          ),
                          ResultCard(
                            titre: "Soins du bebe",
                            x: Page2(),
                          ),
                          ResultCard(
                            titre: "Soins du bebe",
                            x: Page2(),
                          ),
                          Container(
                            height: 1,
                          ),
                        ],
                      ),
                    )),
                  );
                },
              ),
            ));
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mon_enfant_grandit/view/section/section3/page3.dart';
import '../shared/colors.dart';
import '../shared/custom_text.dart';
import '../view/section/section1/page4.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.titre,
    required this.x,
  });
  final String titre;

  final Widget x;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Divider(
          color: noir(),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /* CircleAvatar(
                    radius: 3,
                    backgroundColor: green(),
                  ),*/
                  Container(
                    width: 1,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
                      );
                    },
                    child: CustomText(
                      color: noir(),
                      titre,
                      tex: TailleText(context).titre,
                      fontWeight: FontWeight.w700,
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

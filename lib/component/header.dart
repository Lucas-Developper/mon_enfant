import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_enfant_grandit/shared/colors.dart';
import 'package:mon_enfant_grandit/shared/custom_text.dart';

class Headerpage extends StatefulWidget {
  const Headerpage(
      {Key? key, required this.title, required this.backgroundcolor})
      : super(key: key);
  final String title;
  final Color backgroundcolor;

  @override
  State<Headerpage> createState() => _HeaderpageState();
}

class _HeaderpageState extends State<Headerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          widget.title, 
          tex: TailleText(context).soustitre,
          fontWeight: FontWeight.bold,
          color: noir(),
        ),
        centerTitle: true,
        backgroundColor: widget
            .backgroundcolor, 
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
        actions: [
          IconButton(
            onPressed: () {
              context.go('/acceuil');
            },
            icon: const Icon(Icons.home),
          ),
          Container(
            width: 20,
          ),
        ],
      ),
    );
  }
}

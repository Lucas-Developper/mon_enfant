import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Color green() {
  return HexColor("#019540");
}

Color greenLight() {
  return HexColor("#88D4B2");
}

Color red() {
  return HexColor("#E30514");
}

Color redLight() {
  return HexColor("#E38A90");
}

Color yellow() {
  return HexColor("#F5C21C");
}

Color yellowLight() {
  return HexColor("#ECE78A");
}

Color noir() {
  return HexColor("#000000");
}

Color blanc() {
  return HexColor("#FFFFFF");
}

Color noirLight() {
  return HexColor("#132B1D");
}

Color gris() {
  return HexColor("#707070");
}

Decoration backGround = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
        begin: Alignment.bottomRight,
        stops: const [0.1, 0.9],
        colors: [greenLight(), green()]));

Decoration backGroundBody = BoxDecoration(
    borderRadius: BorderRadius.circular(0),
    gradient: LinearGradient(
        begin: Alignment.bottomRight,
        stops: const [0.1, 0.9],
        colors: [blanc(), green()]));

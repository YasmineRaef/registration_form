import 'package:flutter/material.dart';

class ThemeManager {
  Color scaffoldColor = const Color.fromRGBO(255, 255, 255, 0.9);
  Color appBarColor = const Color.fromARGB(255, 31, 0, 117);
  Color circleColor = const Color.fromARGB(255, 199, 226, 240);
  TextStyle titleHeading = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24);
  TextStyle headLineNav = const TextStyle(
      color: Color.fromARGB(255, 137, 247, 3),
      fontWeight: FontWeight.bold,
      fontSize: 25,
      decoration: TextDecoration.underline);
  TextStyle headline2 =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  TextStyle askQuestion =
      const TextStyle(color: Color.fromARGB(255, 244, 234, 234), fontSize: 20);
  ButtonStyle signingButton = const ButtonStyle(
      backgroundColor:
          MaterialStatePropertyAll(Color.fromARGB(255, 0, 57, 86)));
  TextStyle buttonLabel = const TextStyle(color: Colors.white, fontSize: 16);
  static InputDecoration inputDecoration(String hintText) {
    return InputDecoration(
        contentPadding: const EdgeInsets.all(8),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 0, 57, 86)),
        fillColor: Colors.blueGrey[200],
        filled: true,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500)));
  }
}

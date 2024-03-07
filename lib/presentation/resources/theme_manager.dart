import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
            bodyLarge: TextStyle(
                color: Color.fromARGB(255, 137, 247, 3),
                fontWeight: FontWeight.bold,
                fontSize: 25,
                decoration: TextDecoration.underline),
            bodySmall: TextStyle(
                color: Color.fromARGB(255, 244, 234, 234), fontSize: 20)),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 31, 0, 117)),
        textButtonTheme: const TextButtonThemeData(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 0, 57, 86)))),
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.all(8),
            hintStyle: const TextStyle(color: Color.fromARGB(255, 0, 57, 86)),
            fillColor: Colors.blueGrey[200],
            filled: true,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500))));
  }
}

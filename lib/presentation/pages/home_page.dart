import 'package:flutter/material.dart';
import 'package:registration_form/presentation/resources/theme_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager = ThemeManager();
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text('Welcome to home page!'),
      TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'signIn');
        },
        style: themeManager.signingButton.copyWith(
            backgroundColor: const MaterialStatePropertyAll(
                Color.fromARGB(255, 175, 227, 253))),
        child: const Text('Back to sign in screen'),
      )
    ])));
  }
}

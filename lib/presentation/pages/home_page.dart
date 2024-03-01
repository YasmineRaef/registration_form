import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        'Welcome to home page!',
        style: TextStyle(color: Colors.black),
      ),
      TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'signIn');
        },
        child: const Text('Back to sign in screen'),
      )
    ])));
  }
}

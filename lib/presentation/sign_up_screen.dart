import 'package:flutter/material.dart';
import 'package:registration_form/presentation/custom_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static const route = 'signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
        appBar: AppBar(
            title: const Center(child: Text('CYBER WEB')),
            backgroundColor: const Color.fromARGB(255, 31, 0, 117)),
        body: const SingleChildScrollView(
            child: Center(
                child: Column(children: [
          Stack(children: [
            Image(image: AssetImage('Images/bgimage2.jpg')),
            CustomPage(
                pageTitle: 'Sign-up',
                fTextBoxTitle: 'Username',
                sTextBoxTitle: 'Confirm Password',
                buttonTitle: 'Sign-up',
                question: "Already have an account?",
                signWhere: 'Sign-in now')
          ])
        ]))));
  }
}

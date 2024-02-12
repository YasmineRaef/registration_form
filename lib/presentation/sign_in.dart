import 'package:flutter/material.dart';
import 'package:registration_form/presentation/custom_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  static const route = 'signIn';
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
            Image(image: AssetImage('Images/bg-image.jpg')),
            CustomPage(
                pageTitle: "You're port to a new world 😎",
                fTextBoxTitle: 'E-mail',
                sTextBoxTitle: 'Phone-number',
                buttonTitle: 'Sign-in',
                question: "Don't have an account?",
                signWhere: 'Sign-up now')
          ])
        ]))));
  }
}

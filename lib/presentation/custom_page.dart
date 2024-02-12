import 'package:flutter/material.dart';
import 'package:registration_form/presentation/custom_widgets.dart';

class CustomPage extends StatelessWidget {
  const CustomPage(
      {super.key,
      required this.pageTitle,
      required this.fTextBoxTitle,
      required this.sTextBoxTitle,
      required this.signWhere,
      required this.question,
      required this.imagePath});
  final String pageTitle;
  final String fTextBoxTitle;
  final String sTextBoxTitle;
  final String signWhere;
  final String question;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
        appBar: AppBar(
            title: const Center(child: Text("You're port to a new world 😎")),
            backgroundColor: const Color.fromARGB(255, 31, 0, 117)),
        body: SingleChildScrollView(
            child: Center(
                child: Stack(children: [
          Image(image: AssetImage(imagePath)),
          Column(children: [
            const SizedBox(height: 50),
            Text(
              pageTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            CustomTextField(
                label: fTextBoxTitle, hintText: 'enter your $fTextBoxTitle'),
            const CustomTextField(
                label: 'Password', hintText: 'enter your password'),
            CustomTextField(
                label: sTextBoxTitle, hintText: 'enter your $sTextBoxTitle'),
            CustomButton(text: pageTitle),
            const SizedBox(height: 15),
            Text(
              question,
              style: const TextStyle(
                  color: Color.fromARGB(255, 244, 234, 234), fontSize: 20),
            ),
            InkWell(
              onTap: () {
                if (signWhere == 'Sign-up now') {
                  Navigator.pushReplacementNamed(context, 'signUp');
                } else if (signWhere == 'Sign-in now') {
                  Navigator.pushReplacementNamed(context, 'signIn');
                }
              },
              child: Text(signWhere,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 137, 247, 3),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      decoration: TextDecoration.underline)),
            ),
            const SizedBox(height: 10),
            const Text(
              'Or Continue with ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const Padding(
                padding: EdgeInsets.all(40),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomCircleAvatar(path: 'Images/microsoft-logo.png'),
                      SizedBox(width: 50),
                      CustomCircleAvatar(path: 'Images/Apple-logo-solid.png'),
                      SizedBox(width: 50),
                      CustomCircleAvatar(path: 'Images/google-logo.png')
                    ]))
          ])
        ])))); //scaffold
  }
}

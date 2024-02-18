import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registration_form/presentation/custom_widgets.dart';
import 'package:registration_form/presentation/custom_form.dart';

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
            const Gap(50),
            Text(
              pageTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const Gap(20),
            CustomForm(
                firstTextField: fTextBoxTitle,
                secondTextField: sTextBoxTitle,
                labelButton: pageTitle),
            const Gap(20),
            Text(
              question,
              style: const TextStyle(
                  color: Color.fromARGB(255, 244, 234, 234), fontSize: 20),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, signWhere == 'Sign-up now' ? 'signUp' : 'signIn');
              },
              child: Text(signWhere,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 137, 247, 3),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      decoration: TextDecoration.underline)),
            ),
            const Gap(10),
            const Text(
              'Or Continue with ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: const EdgeInsets.all(40),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++) ...[
                        CustomCircleAvatar(path: paths[i]),
                        const Gap(42),
                      ]
                    ]))
          ])
        ]))));
  }
}

List<String> paths = [
  'Images/microsoft-logo.png',
  'Images/Apple-logo-solid.png',
  'Images/google-logo.png'
];

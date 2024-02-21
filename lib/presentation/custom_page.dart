import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registration_form/presentation/custom_form.dart';
import 'package:registration_form/presentation/custom_widgets.dart';
import 'package:registration_form/presentation/resources/theme_manager.dart';

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
    ThemeManager themeManager = ThemeManager();
    return Scaffold(
        backgroundColor: themeManager.scaffoldColor,
        appBar: AppBar(
            title: const Center(child: Text("You're port to a new world 😎")),
            backgroundColor: themeManager.appBarColor),
        body: SingleChildScrollView(
            child: Center(
                child: Stack(children: [
          Image(image: AssetImage(imagePath)),
          Column(children: [
            const Gap(50),
            Text(pageTitle, style: themeManager.titleHeading),
            const Gap(20),
            CustomForm(
                firstTextField: fTextBoxTitle,
                secondTextField: sTextBoxTitle,
                labelButton: pageTitle),
            const Gap(20),
            Text(question, style: themeManager.askQuestion),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, signWhere == 'Sign-up now' ? 'signUp' : 'signIn');
              },
              child: Text(signWhere, style: themeManager.headLineNav),
            ),
            const Gap(10),
            Text('Or Continue with ', style: themeManager.headline2),
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

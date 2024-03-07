import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registration_form/presentation/customs/custom_form.dart';
import 'package:registration_form/presentation/customs/custom_widgets.dart';

class CustomPage extends StatelessWidget {
  const CustomPage(
      {super.key,
      required this.pageTitle,
      required this.fTextBoxTitle,
      required this.sTextBoxTitle,
      required this.signWhere,
      required this.question,
      required this.imagePath,
      required this.textFieldNum});
  final String pageTitle;
  final String fTextBoxTitle;
  final String sTextBoxTitle;
  final String signWhere;
  final String question;
  final String imagePath;
  final int textFieldNum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text("You're port to a new world 😎"))),
        body: SingleChildScrollView(
            child: Center(
                child: Stack(children: [
          Image(image: AssetImage(imagePath)),
          Column(children: [
            const Gap(50),
            Text(pageTitle),
            const Gap(20),
            CustomForm(
              firstTextField: fTextBoxTitle,
              secondTextField: sTextBoxTitle,
              labelButton: pageTitle,
              textNum: textFieldNum,
              currentPage: pageTitle,
            ),
            const Gap(20),
            Text(question, style: Theme.of(context).textTheme.bodySmall),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, signWhere == 'Sign-up now' ? 'signUp' : 'signIn');
              },
              child:
                  Text(signWhere, style: Theme.of(context).textTheme.bodyLarge),
            ),
            const Gap(10),
            Text('Or Continue with ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18)),
            Padding(
                padding: const EdgeInsets.all(40),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++) ...[
                        CustomCircleAvatar(path: paths[i]),
                        const Gap(42)
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

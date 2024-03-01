import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registration_form/presentation/customs/adding_users_and_verifying.dart';
import 'package:registration_form/presentation/customs/custom_widgets.dart';

class CustomForm extends StatelessWidget {
  CustomForm(
      {super.key,
      required this.firstTextField,
      required this.secondTextField,
      required this.labelButton,
      required this.textNum,
      required this.currentPage});

  final String firstTextField;
  final String secondTextField;
  final String labelButton;
  final int textNum;
  final String currentPage;
  final formField = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formField,
        child: Column(children: [
          for (int i = 0; i < textNum; i++) ...[
            textFormField(parameters[i]),
            const Gap(20),
          ],
          SizedBox(
              height: 50,
              width: 150,
              child: TextButton(
                  child: Text(labelButton,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 15)),
                  onPressed: () {
                    if (formField.currentState!.validate()) {
                      if (currentPage == 'Sign-up') {
                        if (checkEmail(Validator.emailIdentifier()) == true) {
                          print('Account exists..try another e-mail');
                        } else if (checkEmail(Validator.emailIdentifier()) ==
                            false) {
                          storeUsers(Validator.email, Validator.correctPass);
                        }
                      } else if (currentPage == 'Sign-In') {
                        if (checkInputs(Validator.emailIdentifier(),
                                Validator.passIdentifier()) ==
                            true) {
                          Navigator.pushReplacementNamed(context, 'home');
                          print('validated');
                        } else {
                          print('Sign-Up first please!');
                        }
                      }
                      for (var user in userCredentials) {
                        print(user);
                      }
                    } else {
                      print('invalid');
                    }
                  }))
        ]));
  }

  // late --> to wait until the variables are given ...
  late List<String> parameters = [firstTextField, 'Password', secondTextField];
}

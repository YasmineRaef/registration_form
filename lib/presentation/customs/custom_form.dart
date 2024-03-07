import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registration_form/presentation/customs/custom_widgets.dart';
import 'package:registration_form/presentation/customs/logic_functions.dart';

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
            const Gap(20)
          ],
          SizedBox(
              height: 50,
              width: 150,
              child: TextButton(
                  onPressed: () {
                    LogicFunctions.onButtonPress(
                        formField, currentPage, context);
                  },
                  child: Text(labelButton,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 15))))
        ]));
  }

  // late --> to wait until the variables are given ...
  late List<String> parameters = [firstTextField, 'Password', secondTextField];
}

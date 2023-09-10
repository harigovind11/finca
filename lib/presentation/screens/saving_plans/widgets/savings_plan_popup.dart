import 'package:auto_route/auto_route.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/infrastructure/hive/saving_plans_db.dart';
import 'package:finca/domain/models/saving_plans_model.dart';
import 'package:finca/presentation/screens/widgets/custom_textfield.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';

Future<void> showSavingPlansAddPopup(BuildContext context) async {
  final _planNameEditingController = TextEditingController();

  final _goalAmountEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
    ),
    context: context,
    builder: (ctx) {
      return Form(
        key: _formKey,
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            height: 500,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                kHeight30,
                const TextWidget(
                  text: 'Create Saving Plan',
                  color: kBluegrey,
                  fontSize: 30,
                ),
                kHeight40,
                CustomTextField.light(
                  hintText: 'Plan Name',
                  prefixIcon: LineIcons.pollH,
                  controller: _planNameEditingController,
                  inputFormatter: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Z]'),
                    ),
                  ],
                  maxLength: 25,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Plan Name';
                    }
                    return null;
                  },
                ),
                kHeight20,
                CustomTextField.light(
                  hintText: 'Goal Amount',
                  prefixIcon: LineIcons.coins,
                  controller: _goalAmountEditingController,
                  keyboardType: TextInputType.number,
                  inputFormatter: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Goal Amount';
                    }
                    return null;
                  },
                  maxLength: 10,
                ),
                kHeight30,
                RoundedButton(
                  title: 'ADD',
                  backgroundColor: kBluegrey,
                  textColor: kWhite,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      addTransaction(_planNameEditingController.text,
                          _goalAmountEditingController.text);
                      print('pressed');
                      AutoRouter.of(context).pop();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<void> addTransaction(planNameText, goalAmountText) async {
  final _parsedAmount = double.tryParse(goalAmountText);

  final _model = SavingPlansModel(
    planName: planNameText,
    goalAmount: _parsedAmount!,
  );

  await SavingPlansDb.instance.addTransaction(_model);
  SavingPlansDb.instance.refresh();
}

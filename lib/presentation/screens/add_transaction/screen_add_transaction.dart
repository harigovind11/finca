// ignore_for_file: unused_local_variable

import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/models/category/category_model.dart';
import 'package:finca/presentation/widgets/custom_textfield.dart';
import 'package:finca/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'widgets/custom_radio_button.dart';

class AddTransaction extends StatelessWidget {
  AddTransaction({super.key});
  final _amount = TextEditingController();
  final _purpose = TextEditingController();
  final _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: kfincaPinkBg,
          elevation: 0,
          title: const TextWidget(
            text: 'Add Transaction',
            color: kWhite,
            fontSize: 28,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 1000,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kfincaPinkBg,
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(25),
                bottomEnd: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextField(
                    hintText: 'Amount',
                    prefixIcon: LineIcons.coins,
                    controller: _amount,
                    keyboardType: TextInputType.number,
                  ),
                  kHeight30,
                  CustomTextField(
                    hintText: 'Purpose',
                    prefixIcon: LineIcons.pollH,
                    controller: _purpose,
                  ),
                  kHeight30,
                  CustomTextField(
                    hintText: 'Date',
                    keyboardType: TextInputType.datetime,
                    controller: _date,
                    prefixIcon: LineIcons.calendar,
                    onTap: () async {
                      final _selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now().subtract(
                            const Duration(days: 30),
                          ),
                          lastDate: DateTime.now());
                      if (_selectedDate == null) {
                        return;
                      } else {
                        _date.text = _selectedDate.toString();
                      }
                    },
                  ),
                  kHeight30,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomRadioButton(
                          type: CategoryType.income, title: 'Income'),
                      CustomRadioButton(
                          type: CategoryType.expense, title: 'Expense'),
                    ],
                  ),
                  kHeight30,
                  RoundedButton(
                    title: 'ADD',
                    colour: kWhite,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

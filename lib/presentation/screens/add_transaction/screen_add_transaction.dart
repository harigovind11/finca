// ignore_for_file: unused_local_variable, must_be_immutable, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/db/transaction/transaction_db.dart';
import 'package:finca/domain/models/category/category_model.dart';
import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:finca/presentation/screens/main_page/screen_main_page.dart';
import 'package:finca/presentation/widgets/custom_textfield.dart';
import 'package:finca/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'widgets/custom_radio_button.dart';

class AddTransaction extends StatelessWidget {
  AddTransaction({super.key});
  final _amountController = TextEditingController();
  final _purposeController = TextEditingController();
  final _dateController = TextEditingController();
  DateTime? _selectedDate;
  CategoryType? _selectedCategoryType = CategoryType.income;
  @override
  Widget build(BuildContext ctx) {
    Size size = MediaQuery.of(ctx).size;
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
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                  ),
                  kHeight30,
                  CustomTextField(
                    hintText: 'Purpose',
                    prefixIcon: LineIcons.pollH,
                    controller: _purposeController,
                  ),
                  kHeight30,
                  CustomTextField(
                    hintText: 'Date',
                    keyboardType: TextInputType.datetime,
                    controller: _dateController,
                    prefixIcon: LineIcons.calendar,
                    onTap: () async {
                      final _selectedDateTemp = await showDatePicker(
                          context: ctx,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now().subtract(
                            const Duration(days: 30),
                          ),
                          lastDate: DateTime.now());
                      if (_selectedDateTemp == null) {
                        return;
                      } else {
                        final _date = parseDate(_selectedDateTemp);
                        _dateController.text = _date;

                        _selectedDate = _selectedDateTemp;
                      }
                    },
                  ),
                  kHeight30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomRadioButton(
                        title: 'Income',
                        type: CategoryType.income,
                        onPressed: () {
                          selectedCategoryTypeNotifier.value =
                              CategoryType.income;
                          _selectedCategoryType = CategoryType.income;
                          selectedCategoryTypeNotifier.notifyListeners();
                          print(selectedCategoryTypeNotifier.value);
                        },
                      ),
                      CustomRadioButton(
                        title: 'Expense',
                        type: CategoryType.expense,
                        onPressed: () {
                          selectedCategoryTypeNotifier.value =
                              CategoryType.expense;
                          _selectedCategoryType = CategoryType.expense;
                          selectedCategoryTypeNotifier.notifyListeners();
                          print(selectedCategoryTypeNotifier.value);
                        },
                      ),
                    ],
                  ),
                  kHeight30,
                  RoundedButton(
                    title: 'ADD',
                    colour: kWhite,
                    onPressed: () {
                      addTransaction(ctx);
                      print('pressed');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> addTransaction(BuildContext context) async {
    final _amountText = _amountController.text;
    final _purposeText = _purposeController.text;

    final _parsedAmount = double.tryParse(_amountText);

    if (_amountText.isEmpty ||
        _purposeText.isEmpty ||
        _selectedDate == null ||
        _parsedAmount == null) {
      return;
    } else {
      final _model = TransactionModel(
        amount: _parsedAmount,
        purpose: _purposeText,
        date: _selectedDate!,
        type: _selectedCategoryType!,
      );

      await TransactionDb.instance.addTransaction(_model);
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ScreenMainPage(
          title: 'MainPage',
        ),
      ));
      TransactionDb.instance.refresh();
    }
  }

  String parseDate(DateTime date) {
    final _date = DateFormat.MMMd().format(date);
    final _splitedDate = _date.split(' ');
    return '${_splitedDate.last}\t${_splitedDate.first}';
    // return '${date.day}\n${date.month}';
  }
}

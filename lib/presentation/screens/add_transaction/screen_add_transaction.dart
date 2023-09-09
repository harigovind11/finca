import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/amount_field_widger.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/date_picker_widget.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/purpose_field_widget.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/saving_in_progress_overlay.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:finca/presentation/screens/widgets/warning_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/custom_radio_button.dart';

@RoutePage()
class AddTransactionScreen extends StatelessWidget {
  const AddTransactionScreen({super.key, this.transaction});
  final TransactionEntity? transaction;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TransactionFormBloc>()
        ..add(
          TransactionFormEvent.initialized(
            optionOf(transaction),
          ),
        ),
      child: BlocConsumer<TransactionFormBloc, TransactionFormState>(
        listenWhen: ((previous, current) =>
            previous.saveFailureOrSucessOption !=
            current.saveFailureOrSucessOption),
        listener: (context, state) {
          state.saveFailureOrSucessOption.fold(() {}, (either) {
            either.fold((failure) {
              popUpWarning(
                context,
                failure.map(
                  insufficientPermissions: (_) => 'Insufficient permissions ❌',
                  unableToUpdate: (_) => "Couldn't update the transaction.",
                  unexpected: (_) =>
                      'Unexpected error occured, please contact support.',
                ),
              );
            }, (_) {
              // BottomNavPageChanger.instance.pageChanger(3);
            });
          });
        },
        buildWhen: ((previous, current) =>
            previous.isSaving != current.isSaving),
        builder: (context, state) {
          return Stack(
            children: [
              const TransactionFormScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class TransactionFormScaffold extends StatelessWidget {
  const TransactionFormScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: kBluegrey,
      appBar: AppBar(
        backgroundColor: kBluegrey,
        elevation: 0,
        title: BlocBuilder<TransactionFormBloc, TransactionFormState>(
          buildWhen: ((previous, current) =>
              previous.isEditing != current.isEditing),
          builder: (context, state) {
            return TextWidget(
              text: state.isEditing ? 'Edit Transaction' : 'Add Transaction',
              color: kWhite,
              fontSize: 28,
            );
          },
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 700,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kBluegrey,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    kHeight20,
                    const AmountField(),
                    kHeight30,
                    const PurposeField(),
                    kHeight30,

                    //? Date picker
                    BlocBuilder<TransactionFormBloc, TransactionFormState>(
                      builder: (context, state) {
                        return DatePickerWidget(
                            selectedDate: state.transactionEntity.date);
                      },
                    ),
                    kHeight30,

                    //? Radio button
                    const CustomRadioButtonWidget(),
                    kHeight30,
                    RoundedButton(
                      title: 'ADD',
                      backgroundColor: kWhite,
                      textColor: kBluegrey,
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<TransactionFormBloc>()
                              .add(const TransactionFormEvent.saved());
                          await Future.delayed(const Duration(seconds: 1));
                          context.navigateTo(const TransactionRoute());
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Future<void> addTransactionScreen() async {
//   final _amountText = _amountController.text;
//   final _purposeText = _purposeController.text;

//   final _parsedAmount = double.tryParse(_amountText);

//   if (_amountText.isEmpty ||
//       _purposeText.isEmpty ||
//       _selectedDate == null ||
//       _parsedAmount == null) {
//     return;
//   } else {
//     final _model = TransactionModel(
//       amount: _parsedAmount,
//       purpose: _purposeText,
//       date: _selectedDate!,
//       type: _selectedCategoryType!,
//     );

//     await TransactionDb.instance.addTransactionScreen(_model);

//     BottomNavPageChanger.instance.pageChanger(3);

//     TransactionDb.instance.refresh();

//     TransactionDb.instance.recentTransaction();
//   }
// }

// Future<void> clearTextFieldData() async {
//   _amountController.clear();
//   _purposeController.clear();
//   _dateController.clear();
// }

// String parseDate(DateTime date) {
//   final _date = DateFormat.MMMMd().format(date);
//   final _splitedDate = _date.split(' ');
//   return '${_splitedDate.last}\t${_splitedDate.first}';
//   // return '${date.day}\n${date.month}';
// }

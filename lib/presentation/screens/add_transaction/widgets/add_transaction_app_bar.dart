import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_radio_button.dart';

class AddTransactionAppBar extends StatelessWidget {
  const AddTransactionAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, top: 10),
      color: kBluegrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<TransactionFormBloc, TransactionFormState>(
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
          kHeight10,
          const CustomRadioButtonWidget(),
        ],
      ),
    );
  }
}

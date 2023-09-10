import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:flutter/material.dart';

import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/models/transaction_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomRadioButtonWidget extends StatelessWidget {
  const CustomRadioButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomOutlineButton(
          title: 'Income',
          type: TransactionType.income,
          onPressed: () {
            context.read<TransactionFormBloc>().add(
                const TransactionFormEvent.typeChanged(TransactionType.income));
          },
        ),
        kWidth20,
        CustomOutlineButton(
          title: 'Expense',
          type: TransactionType.expense,
          onPressed: () {
            context.read<TransactionFormBloc>().add(
                const TransactionFormEvent.typeChanged(
                    TransactionType.expense));
          },
        ),
      ],
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.type,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final TransactionType type;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: (context, state) {
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: kRadius20),
            side: const BorderSide(width: 1, color: kOutlineWhite),
            backgroundColor: kWhite.withOpacity(.2),
          ),
          child: Text(
            title,
            style: TextStyle(
                color: (context
                            .read<TransactionFormBloc>()
                            .state
                            .transactionEntity
                            .type ==
                        type)
                    ? kWhite
                    : kBlack),
          ),
        );
      },
    );
  }
}
//*Default Radio Buttom
        // return ListTile(
        //   title: Text(title),
        //   leading: Radio<TransactionType>(
        //     value: type,
        //     groupValue: newCategory,
        //     fillColor: MaterialStateColor.resolveWith((states) => kWhite),
        //     focusColor: MaterialStateColor.resolveWith((states) => kWhite),
        //     onChanged: (value) {
        //       if (value == null) {
        //         return;
        //       }
        //       selectedTransactionTypeNotifier.value = value;
        //       selectedTransactionTypeNotifier.notifyListeners();
        //     },
        //   ),
        // );

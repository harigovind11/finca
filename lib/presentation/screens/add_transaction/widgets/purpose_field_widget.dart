import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/presentation/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';

class PurposeField extends HookWidget {
  const PurposeField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<TransactionFormBloc, TransactionFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text =
            state.transactionEntity.purpose.getOrCrash();
      },
      child: CustomTextField.dark(
        hintText: 'Purpose',
        prefixIcon: LineIcons.pollH,
        inputFormatter: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'[a-zA-Z]'),
          ),
        ],
        maxLength: 25,
        controller: textEditingController,
        onChanged: (value) => context.read<TransactionFormBloc>().add(
              TransactionFormEvent.purposeChanged(value),
            ),
        validator: (_) => context
            .read<TransactionFormBloc>()
            .state
            .transactionEntity
            .purpose
            .value
            .fold(
              (f) => f.maybeMap(
                  empty: (f) => 'Cannot be empty', orElse: (() => null)),
              (_) => null,
            ),
      ),
    );
  }
}

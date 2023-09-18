import 'package:finca/application/bill/bill_form/bill_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';

import 'package:finca/presentation/screens/widgets/custom_textfield.dart';

class AmountField extends HookWidget {
  const AmountField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<BillFormBloc, BillFormState>(
      listenWhen: ((previous, current) =>
          previous.isEditing != current.isEditing),
      listener: (context, state) {
        textEditingController.text = state.billEntity.billAmount.getOrCrash();
      },
      child: CustomTextField.light(
        hintText: 'Amount',
        prefixIcon: LineIcons.coins,
        keyboardType: TextInputType.number,
        inputFormatter: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        maxLength: 10,
        controller: textEditingController,
        onChanged: (value) => context.read<BillFormBloc>().add(
              BillFormEvent.billAmountChanged(value),
            ),
        validator: (_) =>
            context.read<BillFormBloc>().state.billEntity.billAmount.value.fold(
                  (f) => f.maybeMap(
                      empty: (f) => 'Cannot be empty', orElse: (() => null)),
                  (_) => null,
                ),
      ),
    );
  }
}

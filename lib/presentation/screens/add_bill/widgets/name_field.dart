import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';

import 'package:finca/application/bill/bill_form/bill_form_bloc.dart';
import 'package:finca/presentation/screens/widgets/custom_textfield.dart';

class NameField extends HookWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<BillFormBloc, BillFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.billEntity.billName.getOrCrash();
      },
      child: CustomTextField.light(
        hintText: 'Name',
        prefixIcon: LineIcons.pollH,
        inputFormatter: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'[a-zA-Z]'),
          ),
        ],
        maxLength: 25,
        controller: textEditingController,
        onChanged: (value) => context.read<BillFormBloc>().add(
              BillFormEvent.billNameChanged(value),
            ),
        validator: (_) =>
            context.read<BillFormBloc>().state.billEntity.billName.value.fold(
                  (f) => f.maybeMap(
                      empty: (f) => 'Cannot be empty', orElse: (() => null)),
                  (_) => null,
                ),
      ),
    );
  }
}

import 'package:finca/application/debt/debt_form/debt_form_bloc.dart';
import 'package:finca/presentation/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';

class NameField extends HookWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<DebtFormBloc, DebtFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.debtEntity.name.getOrCrash();
      },
      child: CustomTextField.dark(
        hintText: 'Name',
        prefixIcon: LineIcons.pollH,
        inputFormatter: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'[a-zA-Z]'),
          ),
        ],
        maxLength: 10,
        controller: textEditingController,
        onChanged: (value) => context.read<DebtFormBloc>().add(
              DebtFormEvent.nameChanged(value),
            ),
        validator: (_) =>
            context.read<DebtFormBloc>().state.debtEntity.name.value.fold(
                  (f) => f.maybeMap(
                      empty: (f) => 'Cannot be empty', orElse: (() => null)),
                  (_) => null,
                ),
      ),
    );
  }
}

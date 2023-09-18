import 'package:finca/application/account/account_form/account_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';
import 'package:finca/presentation/screens/widgets/custom_textfield.dart';

class AccountNameField extends HookWidget {
  const AccountNameField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<AccountFormBloc, AccountFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text =
            state.accountEntity.accountName.getOrCrash();
      },
      child: CustomTextField.light(
        hintText: 'Account name',
        prefixIcon: LineIcons.pollH,
        inputFormatter: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(
            RegExp(r'[a-zA-Z]'),
          ),
        ],
        maxLength: 25,
        controller: textEditingController,
        onChanged: (value) => context.read<AccountFormBloc>().add(
              AccountFormEvent.accountNameChanged(value),
            ),
        validator: (_) => context
            .read<AccountFormBloc>()
            .state
            .accountEntity
            .accountName
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

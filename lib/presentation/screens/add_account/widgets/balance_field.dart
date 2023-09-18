import 'package:finca/application/account/account_form/account_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';

import 'package:finca/presentation/screens/widgets/custom_textfield.dart';

class AccountBalanceField extends HookWidget {
  const AccountBalanceField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<AccountFormBloc, AccountFormState>(
      listenWhen: ((previous, current) =>
          previous.isEditing != current.isEditing),
      listener: (context, state) {
        textEditingController.text =
            state.accountEntity.accountBalance.getOrCrash();
      },
      child: CustomTextField.light(
        hintText: 'Account balance',
        prefixIcon: LineIcons.coins,
        keyboardType: TextInputType.number,
        inputFormatter: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        maxLength: 10,
        controller: textEditingController,
        onChanged: (value) => context.read<AccountFormBloc>().add(
              AccountFormEvent.accountBalanceChanged(value),
            ),
        validator: (_) => context
            .read<AccountFormBloc>()
            .state
            .accountEntity
            .accountBalance
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

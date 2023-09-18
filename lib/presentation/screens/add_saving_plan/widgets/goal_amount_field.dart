import 'package:finca/application/saving_plan/saving_plan_form/saving_plan_form_bloc.dart';
import 'package:finca/presentation/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';

class GoalAmountField extends HookWidget {
  const GoalAmountField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<SavingPlanFormBloc, SavingPlanFormState>(
      listenWhen: ((previous, current) =>
          previous.isEditing != current.isEditing),
      listener: (context, state) {
        textEditingController.text =
            state.savingPlanEntity.goalAmount.getOrCrash();
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
        onChanged: (value) => context.read<SavingPlanFormBloc>().add(
              SavingPlanFormEvent.goalAmountChanged(value),
            ),
        validator: (_) => context
            .read<SavingPlanFormBloc>()
            .state
            .savingPlanEntity
            .goalAmount
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

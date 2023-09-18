import 'package:finca/application/saving_plan/saving_plan_form/saving_plan_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddSavingPlanAppBar extends StatelessWidget {
  const AddSavingPlanAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, top: 10),
      color: kBluegrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<SavingPlanFormBloc, SavingPlanFormState>(
            buildWhen: ((previous, current) =>
                previous.isEditing != current.isEditing),
            builder: (context, state) {
              return TextWidget(
                text: state.isEditing ? 'Edit Saving plan' : 'Add Saving plan',
                color: kWhite,
                fontSize: 28,
              );
            },
          ),
          kHeight10,
        ],
      ),
    );
  }
}

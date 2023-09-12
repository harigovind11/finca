import 'package:finca/application/debt/debt_form/debt_form_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/screens/add_debt/widgets/debt_radio_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDebtAppBar extends StatelessWidget {
  const AddDebtAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, top: 10),
      color: kBluegrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<DebtFormBloc, DebtFormState>(
            buildWhen: ((previous, current) =>
                previous.isEditing != current.isEditing),
            builder: (context, state) {
              return TextWidget(
                text: state.isEditing ? 'Edit Debt' : 'Add Debt',
                color: kWhite,
                fontSize: 28,
              );
            },
          ),
          kHeight10,
          const DebtRadioButtonWidget(),
        ],
      ),
    );
  }
}

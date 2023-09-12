import 'package:finca/application/debt/debt_form/debt_form_bloc.dart';
import 'package:finca/domain/models/debt_model.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DebtRadioButtonWidget extends StatelessWidget {
  const DebtRadioButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomOutlineButton(
          title: 'Debt',
          type: DebtType.debt,
          onPressed: () {
            context
                .read<DebtFormBloc>()
                .add(const DebtFormEvent.typeChanged(DebtType.debt));
          },
        ),
        kWidth20,
        CustomOutlineButton(
          title: 'Credit',
          type: DebtType.credit,
          onPressed: () {
            context
                .read<DebtFormBloc>()
                .add(const DebtFormEvent.typeChanged(DebtType.credit));
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
  final DebtType type;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DebtFormBloc, DebtFormState>(
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
                color:
                    (context.read<DebtFormBloc>().state.debtEntity.type == type)
                        ? kWhite
                        : kBlack),
          ),
        );
      },
    );
  }
}

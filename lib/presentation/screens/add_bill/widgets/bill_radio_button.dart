import 'package:finca/application/bill/bill_form/bill_form_bloc.dart';
import 'package:finca/domain/bill/bill_type.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BillRadioButtonWidget extends StatelessWidget {
  const BillRadioButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomOutlineButton(
          title: 'Bill',
          type: BillType.bill,
          onPressed: () {
            context
                .read<BillFormBloc>()
                .add(const BillFormEvent.billTypeChanged(BillType.bill));
          },
        ),
        kWidth20,
        CustomOutlineButton(
          title: 'Subscription',
          type: BillType.subscription,
          onPressed: () {
            context.read<BillFormBloc>().add(
                const BillFormEvent.billTypeChanged(BillType.subscription));
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
  final BillType type;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BillFormBloc, BillFormState>(
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
                    (context.read<BillFormBloc>().state.billEntity.billType ==
                            type)
                        ? kWhite
                        : kBlack),
          ),
        );
      },
    );
  }
}
//*Default Radio Buttom
        // return ListTile(
        //   title: Text(title),
        //   leading: Radio<TransactionType>(
        //     value: type,
        //     groupValue: newCategory,
        //     fillColor: MaterialStateColor.resolveWith((states) => kWhite),
        //     focusColor: MaterialStateColor.resolveWith((states) => kWhite),
        //     onChanged: (value) {
        //       if (value == null) {
        //         return;
        //       }
        //       selectedTransactionTypeNotifier.value = value;
        //       selectedTransactionTypeNotifier.notifyListeners();
        //     },
        //   ),
        // );

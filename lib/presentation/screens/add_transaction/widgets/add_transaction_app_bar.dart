import 'package:finca/application/transaction/transaction_actor/transaction_actor_bloc.dart';
import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'transaction_radio_button.dart';

class AddTransactionAppBar extends StatelessWidget {
  const AddTransactionAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<TransactionActorBloc, TransactionActorState>(
      listener: (context, state) {
        state.maybeMap(
            deleteFailure: (state) {
              showTopSnackBar(
                Overlay.of(context),
                CustomSnackBar.error(
                  backgroundColor: kGreyShade,
                  message: state.firestoreFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support',
                      insufficientPermissions: (_) => 'InsufficientPermissions',
                      unableToUpdate: (_) => 'Unable to update'),
                ),
              );
            },
            orElse: () => null);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 22, top: 10, right: 15),
        color: kBluegrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<TransactionFormBloc, TransactionFormState>(
              buildWhen: ((previous, current) =>
                  previous.isEditing != current.isEditing),
              builder: (context, state) {
                return TextWidget(
                  text:
                      state.isEditing ? 'Edit Transaction' : 'Add Transaction',
                  color: kWhite,
                  fontSize: 28,
                );
              },
            ),
            kHeight10,
            const TransactionRadioButtonWidget(),
          ],
        ),
      ),
    );
  }
}

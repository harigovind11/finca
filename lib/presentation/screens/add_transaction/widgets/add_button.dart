import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: (context, state) {
        return RoundedButton(
          title: state.isEditing ? 'Edit' : 'Add',
          backgroundColor: kWhite,
          textColor: kBluegrey,
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              final transactionFormBloc = context.read<TransactionFormBloc>();
              if (transactionFormBloc.selectedAccountId.isNotEmpty) {
                if (transactionFormBloc.selectedCategoryId.isNotEmpty) {
                  transactionFormBloc.add(const Saved());
                  await Future.delayed(const Duration(seconds: 1));
                } else {
                  showTopSnackBar(
                    Overlay.of(context),
                    const CustomSnackBar.error(
                      backgroundColor: kGreyShade,
                      message: 'Select an category',
                    ),
                  );
                  return;
                }
              } else {
                showTopSnackBar(
                  Overlay.of(context),
                  const CustomSnackBar.error(
                    backgroundColor: kGreyShade,
                    message: 'Select an account',
                  ),
                );
                return;
              }
            }
          },
        );
      },
    );
  }
}

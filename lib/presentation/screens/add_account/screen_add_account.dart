import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/application/account/account_form/account_form_bloc.dart';
import 'package:finca/domain/account/account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/saving_in_progress_overlay.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';

import 'widgets/account_name_field.dart';
import 'widgets/add_account_app_bar.dart';
import 'widgets/balance_field.dart';

@RoutePage()
class AddAccountScreen extends StatelessWidget {
  const AddAccountScreen({super.key, this.accountEntity});
  final AccountEntity? accountEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AccountFormBloc>()
        ..add(
          AccountFormEvent.initialized(
            optionOf(accountEntity),
          ),
        ),
      child: BlocConsumer<AccountFormBloc, AccountFormState>(
        listenWhen: ((previous, current) =>
            previous.saveFailureOrSucessOption !=
            current.saveFailureOrSucessOption),
        listener: (context, state) {
          state.saveFailureOrSucessOption.fold(() {}, (either) {
            either.fold((failure) {
              showTopSnackBar(
                Overlay.of(context),
                CustomSnackBar.error(
                  backgroundColor: kGreyShade,
                  message: failure.map(
                    insufficientPermissions: (_) =>
                        'Insufficient permissions ❌',
                    unableToUpdate: (_) => "Couldn't update the transaction.",
                    unexpected: (_) =>
                        'Unexpected error occured, please contact support.',
                  ),
                ),
              );
            }, (_) {
              context.popRoute();
            });
          });
        },
        buildWhen: ((previous, current) =>
            previous.isSaving != current.isSaving),
        builder: (context, state) {
          return Stack(
            children: [
              const AccountScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class AccountScaffold extends StatelessWidget {
  const AccountScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBluegrey,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(120), child: AddAccountAppBar()),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                const AccountNameField(),
                kHeight40,
                const AccountBalanceField(),
                kHeight40,
                RoundedButton(
                  title: 'ADD',
                  backgroundColor: kWhite,
                  textColor: kBluegrey,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      context
                          .read<AccountFormBloc>()
                          .add(const AccountFormEvent.saved());
                      await Future.delayed(const Duration(seconds: 1));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

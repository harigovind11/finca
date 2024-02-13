import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/application/debt/debt_form/debt_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/debt/debt.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/saving_in_progress_overlay.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'widgets/amount_field_widget.dart';
import 'widgets/app_bar.dart';
import 'widgets/date_picker_widget.dart';
import 'widgets/description_field.dart';
import 'widgets/name_field.dart';

@RoutePage()
class AddDebtScreen extends StatelessWidget {
  const AddDebtScreen({super.key, this.debt});
  final DebtEntity? debt;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DebtFormBloc>()
        ..add(
          DebtFormEvent.initialized(
            optionOf(debt),
          ),
        ),
      child: BlocConsumer<DebtFormBloc, DebtFormState>(
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
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support',
                      insufficientPermissions: (_) => 'InsufficientPermissions',
                      unableToUpdate: (_) => 'Unable to update'),
                ),
              );
            }, (_) {
              context.navigateTo(const DebtRoute());
            });
          });
        },
        buildWhen: ((previous, current) =>
            previous.isSaving != current.isSaving),
        builder: (context, state) {
          return Stack(
            children: [
              const DebtFormScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class DebtFormScaffold extends StatelessWidget {
  const DebtFormScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBluegrey,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(120), child: AddDebtAppBar()),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                kHeight20,
                const AmountField(),
                kHeight30,
                const NameField(),
                kHeight30,
                const DescriptionField(),
                kHeight30,

                //? Date picker
                const DebtDatePicker(),

                kHeight30,

                RoundedButton(
                  title: 'ADD',
                  backgroundColor: kWhite,
                  textColor: kBluegrey,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      context
                          .read<DebtFormBloc>()
                          .add(const DebtFormEvent.saved());
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

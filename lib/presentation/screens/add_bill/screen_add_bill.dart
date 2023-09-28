import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/application/bill/bill_actor/bill_actor_bloc.dart';
import 'package:finca/application/bill/bill_form/bill_form_bloc.dart';
import 'package:finca/domain/bill/bill.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';

import 'package:finca/injectable.dart';

import 'package:finca/presentation/screens/add_transaction/widgets/saving_in_progress_overlay.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'widgets/app_bar.dart';
import 'widgets/amount_field.dart';
import 'widgets/date_picker.dart';
import 'widgets/name_field.dart';

@RoutePage()
class AddBillScreen extends StatelessWidget {
  const AddBillScreen({super.key, this.billEntity});
  final BillEntity? billEntity;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<BillFormBloc>()
            ..add(
              BillFormEvent.initialized(
                optionOf(billEntity),
              ),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<BillActorBloc>(),
        ),
      ],
      child: BlocConsumer<BillFormBloc, BillFormState>(
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
              const BillScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class BillScaffold extends StatelessWidget {
  const BillScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBluegrey,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(120), child: AddBillAppBar()),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                const NameField(),
                kHeight40,
                const AmountField(),
                kHeight40,
                const BillDatePickerWidget(),
                kHeight40,
                RoundedButton(
                  title: 'ADD',
                  backgroundColor: kWhite,
                  textColor: kBluegrey,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      context
                          .read<BillFormBloc>()
                          .add(const BillFormEvent.saved());
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

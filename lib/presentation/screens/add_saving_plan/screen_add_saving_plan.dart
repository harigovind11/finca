import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finca/application/saving_plan/saving_plan_form/saving_plan_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/screens/add_saving_plan/widgets/goal_amount_field.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/saving_in_progress_overlay.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'widgets/add_saving_plan_app_bar.dart';
import 'widgets/plan_name_field.dart';

@RoutePage()
class AddSavingPlanScreen extends StatelessWidget {
  const AddSavingPlanScreen({super.key, this.savingPlanEntity});
  final SavingPlanEntity? savingPlanEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SavingPlanFormBloc>()
        ..add(
          SavingPlanFormEvent.initialized(
            optionOf(savingPlanEntity),
          ),
        ),
      child: BlocConsumer<SavingPlanFormBloc, SavingPlanFormState>(
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
              const SavingPlanScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingPlanScaffold extends StatelessWidget {
  const SavingPlanScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBluegrey,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(120), child: AddSavingPlanAppBar()),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                const PlanNameField(),
                kHeight40,
                const GoalAmountField(),
                kHeight40,
                RoundedButton(
                  title: 'ADD',
                  backgroundColor: kWhite,
                  textColor: kBluegrey,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      context
                          .read<SavingPlanFormBloc>()
                          .add(const SavingPlanFormEvent.saved());
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

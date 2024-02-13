import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:finca/injectable.dart';

import 'package:finca/core/constants.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/application/account/account_watcher/account_watcher_bloc.dart';
import 'package:finca/application/category/category_watcher/category_watcher_bloc.dart';
import 'package:finca/application/transaction/transaction_actor/transaction_actor_bloc.dart';
import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/app_bar.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/amount_field_widger.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/date_picker_widget.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/purpose_field_widget.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/saving_in_progress_overlay.dart';

import 'widgets/account_picker.dart';
import 'widgets/add_button.dart';
import 'widgets/category_picker.dart';

@RoutePage()
class AddTransactionScreen extends StatelessWidget {
  const AddTransactionScreen({super.key, this.transaction});
  final TransactionEntity? transaction;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TransactionFormBloc>()
            ..add(
              TransactionFormEvent.initialized(
                optionOf(transaction),
              ),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<TransactionActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AccountWatcherBloc>()
            ..add(const AccountWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<CategoryWatcherBloc>()
            ..add(const CategoryWatcherEvent.watchAllStarted()),
        ),
      ],
      child: BlocConsumer<TransactionFormBloc, TransactionFormState>(
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
              context.navigateTo(const TransactionRoute());
            });
          });
        },
        buildWhen: ((previous, current) =>
            previous.isSaving != current.isSaving),
        builder: (context, state) {
          return Stack(
            children: [
              const TransactionFormScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class TransactionFormScaffold extends StatelessWidget {
  const TransactionFormScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBluegrey,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(120), child: AddTransactionAppBar()),
        body: ListView(
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              // height: 700,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kBluegrey,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const AmountField(),
                      kHeight15,
                      const PurposeField(),
                      kHeight10,
                      const AccountPicker(),
                      kHeight10,
                      const CategoryPicker(),
                      kHeight10,
                      const TransactionDatePickerWidget(),
                      kHeight30,
                      AddButton(formKey: _formKey),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

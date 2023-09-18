import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/application/category/category_form/category_form_bloc.dart';
import 'package:finca/domain/category/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/screens/add_transaction/widgets/saving_in_progress_overlay.dart';
import 'package:finca/presentation/screens/widgets/rounded_button.dart';

import 'widgets/add_category_app_bar.dart';
import 'widgets/categoty_name_field.dart';
import 'widgets/color_picker.dart';
import 'widgets/icon_picker.dart';

@RoutePage()
class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key, this.categoryEntity});
  final CategoryEntity? categoryEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryFormBloc>()
        ..add(
          CategoryFormEvent.initialized(
            optionOf(categoryEntity),
          ),
        ),
      child: BlocConsumer<CategoryFormBloc, CategoryFormState>(
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
              const CategoryScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class CategoryScaffold extends StatelessWidget {
  const CategoryScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBluegrey,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AddCategoryAppBar(),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                const CategoryNameField(),
                kHeight20,
                //?Icon picker
                const IconPicker(),
                kHeight20,
                //?Color picker
                const ColorPickerWidget(), kHeight20,
                RoundedButton(
                  title: 'ADD',
                  backgroundColor: kWhite,
                  textColor: kBluegrey,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      context
                          .read<CategoryFormBloc>()
                          .add(const CategoryFormEvent.saved());
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

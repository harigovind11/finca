import 'package:finca/application/category/category_watcher/category_watcher_bloc.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'category_card.dart';
import 'critical_failure_display_widget.dart';
import 'error_card.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryWatcherBloc, CategoryWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSucess: (state) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 7,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final categoryEntity = state.categories[index];
                    if (categoryEntity.failureOption.isSome()) {
                      return CategoryErrorCard(categoryEntity: categoryEntity);
                    } else {
                      return CategoryCard(
                        categoryEntity: categoryEntity,
                      );
                    }
                  },
                  separatorBuilder: (context, index) => kHeight15,
                  itemCount: state.categories.length,
                ),
              );
            },
            loadFailure: (state) => CriticalFailureDisplay(
                  failure: state.firestoreFailure,
                ));
      },
    );
  }
}

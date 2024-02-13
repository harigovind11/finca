import 'package:auto_route/auto_route.dart';
import 'package:finca/application/category/category_watcher/category_watcher_bloc.dart';
import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/category/category.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CategoryPicker extends StatelessWidget {
  const CategoryPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Category',
          style: kSubtitleTextStyle,
        ),
        kHeight20,
        BlocBuilder<CategoryWatcherBloc, CategoryWatcherState>(
          builder: (context, state) {
            return state.maybeMap(
              loadSuccess: (state) {
                return SelectedCategoryWidget(
                  categories: state.categories,
                );
              },
              orElse: () => const Text(
                'There is no data ',
                style: kTextStyleLight,
              ),
            );
          },
        ),
      ],
    );
  }
}

class SelectedCategoryWidget extends HookWidget {
  const SelectedCategoryWidget({
    required this.categories,
    super.key,
  });
  final List<CategoryEntity> categories;
  @override
  Widget build(BuildContext context) {
    final _categorySelected = useState(false);

    return Wrap(
      spacing: 7,
      runSpacing: 10,
      children: List.generate(
        categories.length + 1,
        (index) {
          if (index == 0) {
            return ItemWidget(
                selected: false,
                onSelected: (p0) =>
                    AutoRouter.of(context).push(AddCategoryRoute()),
                icon: Icons.add,
                title: 'Add Category',
                iconColor: kBlueShade,
                titleColor: kBlueShade);
          } else {
            final category = categories[index - 1];
            return ItemWidget(
              selected: category.id ==
                  BlocProvider.of<TransactionFormBloc>(context)
                      .state
                      .transactionEntity
                      .categoryId,
              title: category.categoryName.getOrCrash(),
              icon: category.getIconData(),
              iconColor: category.color,
              titleColor: category.color,
              onSelected: (value) {
                final transactionFormBloc = context.read<TransactionFormBloc>();
                transactionFormBloc
                    .add(CategorySelected(category.id.getOrCrash()));
                transactionFormBloc.selectedCategoryId =
                    category.id.getOrCrash();
                _categorySelected.value = !_categorySelected.value;
                print(category.id.getOrCrash());
              },
            );
          }
        },
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.selected,
    required this.onSelected,
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.titleColor,
  });

  final IconData icon;
  final Function(bool) onSelected;
  final bool selected;
  final String title;
  final Color iconColor;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: selected,
      onSelected: onSelected,
      backgroundColor: kBluegreyShade,
      selectedColor: selected ? titleColor.withOpacity(0.2) : null,
      avatar: Icon(
        color: iconColor,
        icon,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
        side: const BorderSide(
          width: 1,
          color: kOutlineWhite,
        ),
      ),
      showCheckmark: false,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: Text(title),
      labelStyle: kTextStyleDark.copyWith(fontSize: 14, color: titleColor),
      labelPadding: const EdgeInsets.all(5),
    );
  }
}

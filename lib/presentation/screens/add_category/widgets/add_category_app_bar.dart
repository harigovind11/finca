import 'package:finca/application/category/category_form/category_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCategoryAppBar extends StatelessWidget {
  const AddCategoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, top: 10),
      color: kBluegrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<CategoryFormBloc, CategoryFormState>(
            buildWhen: ((previous, current) =>
                previous.isEditing != current.isEditing),
            builder: (context, state) {
              return TextWidget(
                text: state.isEditing ? 'Edit Category' : 'Add Category',
                color: kWhite,
                fontSize: 28,
              );
            },
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/models/category/category_model.dart';

ValueNotifier<CategoryType> selectedCategoryTypeNotifier =
    ValueNotifier(CategoryType.income);

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    Key? key,
    required this.type,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final CategoryType type;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedCategoryTypeNotifier,
      builder: (BuildContext context, CategoryType newCategory, _) {
        //*Default Radio Buttom
        // return ListTile(
        //   title: Text(title),
        //   leading: Radio<CategoryType>(
        //     value: type,
        //     groupValue: newCategory,
        //     fillColor: MaterialStateColor.resolveWith((states) => kWhite),
        //     focusColor: MaterialStateColor.resolveWith((states) => kWhite),
        //     onChanged: (value) {
        //       if (value == null) {
        //         return;
        //       }
        //       selectedCategoryTypeNotifier.value = value;
        //       selectedCategoryTypeNotifier.notifyListeners();
        //     },
        //   ),
        // );

        //*Custom Radio button
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: kRadius20),
            side: const BorderSide(width: 1, color: kOutlineWhite),
            backgroundColor: kWhite.withOpacity(.2),
          ),
          child: Text(
            title,
            style: TextStyle(
                color: (selectedCategoryTypeNotifier.value == type)
                    ? kWhite
                    : kBlack),
          ),
        );
      },
    );
  }
}

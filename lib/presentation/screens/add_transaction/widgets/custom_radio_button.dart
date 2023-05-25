import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/models/category/category_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<CategoryType> selectedCategoryTypeNotifier =
    ValueNotifier(CategoryType.income);

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key, required this.type, required this.title});
  final CategoryType type;
  final String title;

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedCategoryTypeNotifier,
      builder: (BuildContext context, CategoryType newCategory, _) {
        //?Default Radio Buttom
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

        //?Custom Radio button
        return OutlinedButton(
          onPressed: () {
            selectedCategoryTypeNotifier.value = widget.type;
            print(newCategory);
            print(widget.type);
          },
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: kRadius20),
            side: const BorderSide(width: 1, color: kOutlineWhite),
            backgroundColor: kWhite.withOpacity(.2),
          ),
          child: Text(
            widget.title,
            style: TextStyle(
                color: (selectedCategoryTypeNotifier.value == widget.type)
                    ? kWhite
                    : kBlack),
          ),
        );
      },
    );
  }
}

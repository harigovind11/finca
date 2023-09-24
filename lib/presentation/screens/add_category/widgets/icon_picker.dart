import 'package:finca/application/category/category_form/category_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';

class IconPicker extends StatelessWidget {
  const IconPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryFormBloc, CategoryFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Material(
            elevation: 5,
            color: kBluegreyShade,
            borderRadius: BorderRadius.circular(20.0),
            child: GestureDetector(
              onTap: () async {
                final IconData? icon = await pickIcon(context);
                if (icon != null) {
                  context.read<CategoryFormBloc>().add(
                        CategoryFormEvent.categoryIconChanged(icon),
                      );
                } else {
                  return;
                }
              },
              child: ListTile(
                title: const Text(
                  'Select icon',
                  style: TextStyle(
                    color: kWhite,
                  ),
                ),
                subtitle: const Text(
                  'Tap to select icon',
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                trailing: Icon(
                  color: kWhite,
                  state.categoryEntity.getIconData(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<IconData?> pickIcon(BuildContext context) async {
    return FlutterIconPicker.showIconPicker(context,
        iconColor: kOffWhite,
        backgroundColor: kBluegrey,
        mainAxisSpacing: 15,
        crossAxisSpacing: 5,
        iconPickerShape: RoundedRectangleBorder(borderRadius: kRadius20),
        iconPackModes: [IconPack.material]);
  }
}

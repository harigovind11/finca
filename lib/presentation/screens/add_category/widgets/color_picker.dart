import 'package:finca/application/category/category_form/category_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/domain/core/value_transformers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerWidget extends StatelessWidget {
  const ColorPickerWidget({super.key});
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
                final Color? color = await changeColor(context);
                if (color != null) {
                  context.read<CategoryFormBloc>().add(
                        CategoryFormEvent.colorChanged(color),
                      );
                } else {
                  return;
                }
              },
              child: ListTile(
                title: const Text(
                  'Select color',
                  style: TextStyle(
                    color: kWhite,
                  ),
                ),
                subtitle: const Text(
                  'Tap to select color',
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                trailing: CircleAvatar(
                    backgroundColor: makeColorOpaque(context
                        .read<CategoryFormBloc>()
                        .state
                        .categoryEntity
                        .color)),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<Color?> changeColor(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Pick a color'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor:
                  context.read<CategoryFormBloc>().state.categoryEntity.color,
              onColorChanged: (color) {
                // currentColor.value = color;
                context.read<CategoryFormBloc>().add(
                      CategoryFormEvent.colorChanged(color),
                    );
              },
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Done'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

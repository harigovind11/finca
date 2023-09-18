import 'package:finca/application/category/category_form/category_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/injectable.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ColorPickerWidget extends HookWidget {
  const ColorPickerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final currentColor = useState<Color>(Colors.lightBlue);
    void changeColor() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Pick a color'),
            content: BlocProvider(
              create: (context) => getIt<CategoryFormBloc>(),
              child: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: currentColor.value,
                  onColorChanged: (color) {
                    currentColor.value = color;
                    context.read<CategoryFormBloc>().add(
                          CategoryFormEvent.colorChanged(color),
                        );
                  },
                  pickerAreaHeightPercent: 0.8,
                ),
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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5,
        color: kBluegreyShade,
        borderRadius: BorderRadius.circular(20.0),
        child: GestureDetector(
          onTap: changeColor,
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
              backgroundColor: currentColor.value,
            ),
          ),
        ),
      ),
    );
  }
}

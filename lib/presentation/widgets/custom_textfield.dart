// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/colors_picker.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconButton? suffixIconButton;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final Color cursorColor;
  final Color textColor;
  final Color prefixIconColor;
  final Color suffixIconColor;
  final Color counterColor;
  final Color hintTextColor;
  final Color fillColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final Color errorBorderColor;
  final Color focusedErrorBorderColor;
  final Color errorStyleColor;

  int? maxLength;
  bool readOnly;
  CustomTextField.dark(
      {Key? key,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIconButton,
      this.obscureText = false,
      this.keyboardType,
      this.validator,
      this.inputFormatter,
      required this.controller,
      this.readOnly = false,
      this.onTap,
      this.maxLength,
      this.cursorColor = kWhite,
      this.textColor = kWhite,
      this.prefixIconColor = kWhite,
      this.suffixIconColor = kOffWhite,
      this.counterColor = kOffWhite,
      this.hintTextColor = kBluegreyShade,
      this.fillColor = kWhite,
      this.enabledBorderColor = kOutlineWhite,
      this.focusedBorderColor = kWhite,
      this.errorBorderColor = kBlueShade,
      this.focusedErrorBorderColor = kBlueShade,
      this.errorStyleColor = kOffWhite})
      : super(key: key);

  CustomTextField.light(
      {Key? key,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIconButton,
      this.obscureText = false,
      this.keyboardType,
      this.validator,
      this.inputFormatter,
      required this.controller,
      this.readOnly = false,
      this.onTap,
      this.maxLength,
      this.cursorColor = kBluegrey,
      this.textColor = kBluegrey,
      this.prefixIconColor = kBluegrey,
      this.suffixIconColor = kBluegrey,
      this.counterColor = kBluegrey,
      this.hintTextColor = kBluegreyShade,
      this.fillColor = kBluegrey,
      this.enabledBorderColor = kBluegrey,
      this.focusedBorderColor = kBluegreyShade,
      this.errorBorderColor = kBlueShade,
      this.focusedErrorBorderColor = kBlueShade,
      this.errorStyleColor = kBluegreyShade})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatter,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      readOnly: readOnly,
      maxLength: maxLength,
      cursorColor: cursorColor,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIconButton,
        suffixIconColor: suffixIconColor,
        counterStyle: TextStyle(
          color: counterColor,
        ),
        hintText: hintText,
        hintMaxLines: 1,
        hintStyle: TextStyle(
          color: hintTextColor,
        ),
        filled: true,
        fillColor: fillColor.withOpacity(.2),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: enabledBorderColor,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: focusedBorderColor,
            width: 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: errorBorderColor,
            width: 2.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: focusedErrorBorderColor,
            width: 2.0,
          ),
        ),
        errorStyle: TextStyle(
          color: errorStyleColor,
          fontSize: 13,
        ),
      ),
    );
  }
}

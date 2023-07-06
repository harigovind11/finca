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

  int? maxLength;
  bool readOnly;
  CustomTextField({
    Key? key,
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
  }) : super(key: key);

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
      cursorColor: kWhite,
      style: const TextStyle(color: kWhite),
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: kWhite,
        suffixIcon: suffixIconButton,
        suffixIconColor: kWhite,
        hintText: hintText,
        hintMaxLines: 1,
        hintStyle: const TextStyle(
          color: kBluegrey,
        ),
        filled: true,
        fillColor: kWhite.withOpacity(.2),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: kOutlineWhite,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: kWhite,
            width: 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: kBlack,
            width: 2.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: kBlack,
            width: 2.0,
          ),
        ),
        errorStyle: const TextStyle(
          color: kBlack,
          fontSize: 13,
        ),
      ),
    );
  }
}

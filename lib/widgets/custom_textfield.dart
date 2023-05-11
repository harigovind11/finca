import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/colors_picker.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconButton? suffixIconButton;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController controller;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIconButton,
    this.validator,
    this.inputFormatter,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      cursorColor: kWhite,
      style: const TextStyle(color: kWhite),
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          color: kGrey,
          fontSize: 13,
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kRed, width: 2),
        ),
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
            color: Colors.white24,
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
      ),
      validator: validator,
    );
  }
}

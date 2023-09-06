import 'package:flutter/material.dart';

void popUpWarning(BuildContext context, String errorMessage) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      backgroundColor: Colors.white,
      content: Text(
        errorMessage,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.blueGrey,
          fontFamily: 'MusticaPro',
        ),
      ),
    ),
  );
}

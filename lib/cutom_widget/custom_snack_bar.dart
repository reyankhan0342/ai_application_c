import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class CustomSnackBar {
  snackbar(BuildContext context, String title) {
    Flushbar(
      message: title,
      duration: const Duration(seconds: 2),
      backgroundColor: const Color.fromARGB(255, 5, 11, 84),
      animationDuration: const Duration(milliseconds: 2000),

      flushbarPosition: FlushbarPosition.TOP,

      margin: const EdgeInsets.all(10),
      borderRadius: BorderRadius.circular(12),
      icon: const Icon(Icons.check_circle, color: Colors.green),
    ).show(context);
  }
}

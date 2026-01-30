import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordVisible = false;

  final nameController = TextEditingController();
  final conformPasswordController = TextEditingController();

  void passwordVisbility(bool value) {
    print('typing. ..... ===>>>>');
    isPasswordVisible = value;
    notifyListeners();
  }
}

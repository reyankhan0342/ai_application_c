import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  bool isVisable1 = false;

  void visbility(value) {
    isVisable1 = value;
    notifyListeners();
  }

  bool isVisable2 = false;

  void visbility2(value) {
    isVisable2 = value;
    notifyListeners();
  }

  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  final nameController = TextEditingController();
  final conformPasswordController = TextEditingController();
}
